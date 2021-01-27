#include "stdio.h"
#include <iostream>
#include <fstream>

#include "QIO.h"
#include "ap_int.h"
//#include "limits.h"

unsigned int Galois_LFSR_32_33(unsigned int input, ap_uint<33> seed){
	ap_uint<32> lfsr32 = (ap_uint<32>)input;// & 0xFFFFFFFF;
	static ap_uint<33> lfsr33 = seed;
	ap_uint<1> lsb32, lsb33;
	//Table of linear feedback shift registers, Roy Ward
	lsb32 = lfsr32 & 1;
	lsb33 = lfsr33 & 1;
	lfsr32 >>= 1;
	if(lsb32)
		lfsr32 ^= 0xA3000000;
	lfsr33 >>= 1;
	if(lsb33)
		lfsr33 ^= 0x194000000;
	unsigned int out = (unsigned int)(lfsr32 ^ lfsr33);
	return out;
}
float uniform0_1(unsigned int input){ //get's the unsigned int input and outputs a float random number between 0 and 1
	float random = (float) ((double)input / UINT_MAX);
	return random;
}

template <typename T> void QIO_SW(T current_val[problem_size],float coef_list[problem_size][problem_size], float cost_new){
	float sum = 0;
	T current_val2[problem_size];
QIO_loop1:
	for(int i=0; i<problem_size; i++){
		current_val2[i] = current_val[i];
	}
QIO_loop2:
	for(int i=0; i<problem_size; i++){
		sum += (float)current_val[i]*coef_list[i][i];
QIO_loop3:
		for(int j=i; j<problem_size; j++){
			sum += (float)current_val[i]*(float)current_val2[j]*coef_list[i][j];
		}
	}
	cost_new = sum;
}

int main(){
	//This snippet collects data for random number generator analysis
	/*
	unsigned int input = 14;
	unsigned int out = 0;
	float random = 1;
	ap_uint<33> seed = 0xF0F0;
    std::ofstream myfile;
    myfile.open ("random.csv");
    unsigned int i = 0;
    for (unsigned long i=0; i < 1000000; i++){//while(loop != out){
		out = Galois_LFSR_32_33(input, seed);
		random = uniform0_1(input);
		input = out;
	    myfile << out << "," << random << "\n";
	    i++;
	}
	myfile.close();
	//end of snippet
	*/
	// This snippet tests the QIO alone
	unsigned int current_val[problem_size];
	float coef_list[problem_size][problem_size];
	float cost_HW = 0;
	float cost_SW = 0;
	int i = 0;
	//open input file
	float input_values;
	std::ifstream infile("QUBO.csv");
	while(infile >> input_values){
		if(i < problem_size){
			current_val[i] = (unsigned int)input_values;
		}else{
			int y = i - problem_size + 1;
			int k = (int)(y/problem_size);
			int j = y - k*problem_size;
			coef_list[k][j] = (float)input_values;
		}
		i++;
	}
	infile.close();
	QIO<unsigned int>(current_val,coef_list, cost_HW);
	QIO_SW<unsigned int>(current_val,coef_list, cost_SW);
	std::cout << cost_HW;
	std::cout << cost_SW;
	//end of snippet
	return 0;
}
//
