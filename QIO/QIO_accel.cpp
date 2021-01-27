#include "QIO.h"

template <typename T> void QIO_accel_hw(T init_val[problem_size],float coef_list[problem_size][problem_size], T final_val[problem_size]){
	T current_val[problem_size];
	T new_val[problem_size];
	float cost_new = 1000000000;
	float cost_old = cost_new;
	float random = 1;
	unsigned int rnd_input = 14;
	unsigned int rnd_out;
	unsigned int variable_pick = 0;
	unsigned int delta = 5;
	T move;
	int plus_or_minus;
	ap_uint<33> seed = 0xF0F0;
QIO_hw_loop1:
	for(int i=0; i<problem_size; i++){
		current_val[i] = init_val[i];
		new_val[i] = init_val[i];
	}
QIO_hw_loop2:
	for(int i=0; i < 10; i++){ //Set the number of iterations
		//pick a variable
		Galois_LFSR_32_33_hw<unsigned int>(rnd_input, seed, rnd_out);
		pick_rnd_hw<T>(problem_size, rnd_out, variable_pick);
		rnd_input = rnd_out;
		//choose a move
		Galois_LFSR_32_33_hw<unsigned int>(rnd_input, seed, rnd_out);
		pick_rnd_hw<T>(delta, rnd_out, move);
		rnd_input = rnd_out;
		Galois_LFSR_32_33_hw<unsigned int>(rnd_input, seed, rnd_out);
		pick_rnd_hw<T>(2, rnd_out, plus_or_minus);
		rnd_input = rnd_out;
		if (plus_or_minus == 0){
			new_val[variable_pick] = current_val[variable_pick] + move;
		}
		else{
			new_val[variable_pick] = current_val[variable_pick] - move;
		}
		//accept or reject the move
		QIO<T>(new_val, coef_list, cost_new);
		Galois_LFSR_32_33_hw<unsigned int>(rnd_input, seed, rnd_out);
		uniform0_1_hw<float>(rnd_out, random);
		rnd_input = rnd_out;
		if (random <= (cost_new/cost_old)){
			cost_old = cost_new;
			current_val[variable_pick] = new_val[variable_pick];
		}
	}
QIO_hw_loop3:
	for(int i=0; i<problem_size; i++){
		final_val[i] = current_val[i];
	}
}
void QIO_accel(axis_t input[problem_size + coefficient_size], axis_t output[problem_size]){
#pragma HLS INTERFACE axis register both port=output
#pragma HLS INTERFACE axis register both port=input
#pragma HLS INTERFACE s_axilite port=return
	//input_shape must be [x1,..., xN, coef_x1, coef_x1x2,..., coef_x1xN, coef_x2, coef_x2x3,...,  coef_x2xN,...]
	float coef_list[problem_size][problem_size];
//#pragma HLS ARRAY_PARTITION variable=coef_list block factor=4 dim=2
	int init_val[problem_size];
	int final_val[problem_size];
	axis2type<int>(input, init_val, coef_list);
	QIO_accel_hw<int>(init_val, coef_list, final_val);
	type2axis<int>(final_val, output);
}
