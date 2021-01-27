#ifndef _LFSR_
#define _LFSR_
#include "ap_int.h"
#include "limits.h"

template <typename T> void Galois_LFSR_32_33_hw(unsigned int input, ap_uint<33> seed,T out);
template <typename T> void uniform0_1_hw(unsigned int input, T random);
template <typename T> void pick_rnd_hw(T num_variables, unsigned int input, unsigned int random);

template <typename T> void Galois_LFSR_32_33_hw(unsigned int input, ap_uint<33> seed,T out){
	ap_uint<32> lfsr32 = (ap_uint<32>)input;// & 0xFFFFFFFF;
	static ap_uint<33> lfsr33 = seed; //(input >>= 32) & 0x1FFFFFFFF;
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
	out = (T)(lfsr32 ^ lfsr33);
}
template <typename T> void uniform0_1_hw(unsigned int input, T random){ //get's the unsigned int input and outputs a float random number between 0 and 1
random = (T) ((double)input / UINT_MAX);
}

template <typename T> void pick_rnd_hw(T num_variables, unsigned int input, unsigned int random){ //get's the unsigned int input and outputs another uint to pick a variable
random = (T) (num_variables * (double)input / UINT_MAX);
}
#endif


