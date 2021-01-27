#include "ap_int.h"
#include "stdio.h"

#include <iostream>
#include <fstream>
//#include "limits.h"

unsigned int Galois_LFSR_32_33(unsigned int input, ap_uint<33> seed,){
	ap_uint<32> lfsr32 = (ap_uint<32>)input;// & 0xFFFFFFFF;
	ap_uint<33> lfsr33 = seed; //(input >>= 32) & 0x1FFFFFFFF;
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
	out = (unsigned int)(lfsr32 & lfsr33);
	return out;
}
void uniform0_1(unsigned int input){ //get's the unsigned int input and outputs a float random number between 0 and 1
random = (float) ((double)input / UINT_MAX);
return random;
}

int main(){
	//printf("%lu", sizeof(bool));
	//printf("%lu", UINT_MAX);
	unsigned int input = 1;
	unsigned int out = 200000;
	float random = 1;
	ap_uint<33> seed = 0xF000;
    std::ofstream myfile;
    myfile.open ("random.csv");
	for (unsigned long i=0; i < 1000; i++){
		out = Galois_LFSR_32_33(input, seed);
		random = uniform0_1(input);
		input = out;
	    myfile << out << "," << random << "\n";
	}
	myfile.close();
	return 0;
}
