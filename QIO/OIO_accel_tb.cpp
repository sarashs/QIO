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

template <typename T> void QIO_accel_SW(T init_val[problem_size],float coef_list[problem_size][problem_size],unsigned int seed, T final_val[problem_size]){
	T current_val[problem_size];
	T new_val[problem_size];
	float cost_new = 1000000000;
	float cost_old = cost_new;
	float random = 1;
	unsigned int rnd_input = seed << 14;
	unsigned int rnd_out;
	unsigned int  variable_pick = 0;
	T delta = 5;
	unsigned int  move;
	unsigned int  plus_or_minus;
	//ap_uint<33> seed = 0xF0F0;
    std::ofstream myfile;
    myfile.open ("outputs.csv");
QIO_hw_loop1:
	for(int i=0; i<problem_size; i++){
		current_val[i] = init_val[i];
		new_val[i] = init_val[i];
	}
QIO_hw_loop2:
	for(int i=0; i < 100; i++){ //Set the number of iterations
		//pick a variable
		Galois_LFSR_32_33_hw<unsigned int>(rnd_input, (ap_uint<33>) seed, &rnd_out);
		pick_rnd_hw<unsigned int>((unsigned int)problem_size, rnd_out, &variable_pick);
		rnd_input = rnd_out;
		myfile << "rand, " << rnd_out << "\n";
		myfile << "pick, " << variable_pick << "\n";
		//choose a move
		Galois_LFSR_32_33_hw<unsigned int>(rnd_input, (ap_uint<33>) seed, &rnd_out);
		pick_rnd_hw<unsigned int >(delta, rnd_out, &move);
		myfile << "rand, " << rnd_out << "\n";
		myfile << "move, " << move << "\n";
		rnd_input = rnd_out;
		Galois_LFSR_32_33_hw<unsigned int>(rnd_input, (ap_uint<33>) seed, &rnd_out);
		pick_rnd_hw<unsigned int >((unsigned int)2, rnd_out, &plus_or_minus);
		myfile << "rand, " << rnd_out << "\n";
		myfile << "+-, " << plus_or_minus << "\n";
		rnd_input = rnd_out;
		if (plus_or_minus == 0){
			new_val[variable_pick] = current_val[variable_pick] + move;
		}
		else{
			new_val[variable_pick] = current_val[variable_pick] - move;
		}
		//accept or reject the move
		QIO<T>(new_val, coef_list, &cost_new);
		Galois_LFSR_32_33_hw<unsigned int>(rnd_input, (ap_uint<33>) seed, &rnd_out);
		uniform0_1_hw<float>(rnd_out, &random);
		rnd_input = rnd_out;
		myfile << "rand, " << rnd_out << "\n";
		myfile << "urand, " << random << "\n";
		myfile << "cn/cl, " << (cost_new/cost_old) << "\n";
		if (random <= (cost_new/cost_old)){
			cost_old = cost_new;
			current_val[variable_pick] = new_val[variable_pick];
		}
	}
	myfile.close();
QIO_hw_loop3:
	for(int i=0; i<problem_size; i++){
		final_val[i] = current_val[i];
	}
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
	// read the inputs
	unsigned int current_val[problem_size];
	unsigned int final_val[problem_size];
	float coef_list[problem_size][problem_size];
	float cost_HW;
	float cost_SW;
	int i = 0;
	//open input file
	float input_values;
	std::ifstream infile("QUBO.csv");
	while(infile >> input_values){
		if(i < problem_size){
			current_val[i] = (unsigned int)input_values;
		}else{
			int y = i - problem_size;
			int k = (int)(y/problem_size);
			int j = y - k*problem_size;
			coef_list[k][j] = (float)input_values;
		}
		i++;
	}
	infile.close();
	// This snippet tests the QIO alone
	/*
	QIO<unsigned int>(current_val,coef_list, &cost_HW);
	QIO_SW<unsigned int>(current_val,coef_list, &cost_SW);

	std::cout << cost_HW;
	std::cout << " and ";
	std::cout << cost_SW;
	*/
	//end of snippet
	QIO_accel_SW<unsigned int>(current_val,coef_list, final_val);
	return 0;
}
//
