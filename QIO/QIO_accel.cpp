#include "QIO.h"

template <typename T> void QIO_accel_hw(T init_val[problem_size],float coef_list[problem_size][problem_size], unsigned int num_iteration,unsigned int seed, T final_val[problem_size]){
    T current_val[problem_size];
    T new_val[problem_size];
	float cost_new = 1000000000;
	float cost_old = cost_new;
	float random = 1;
	unsigned int rnd_input =  seed << 14;
	unsigned int rnd_out;
	unsigned int variable_pick = 0;
	T delta = 5;
	unsigned int  move;
	unsigned int  plus_or_minus;
	//ap_uint<33> seed = 0xF0F0;
QIO_hw_loop1:
	for(int i=0; i<problem_size; i++){
		current_val[i] = init_val[i];
		new_val[i] = init_val[i];
	}
QIO_hw_loop2:
	for(unsigned int i=0; i < num_iteration; i++){
//#pragma HLS UNROLL factor=2
		//Set the number of iterations
		//pick a variable
		Galois_LFSR_32_33_hw<unsigned int>(rnd_input, (ap_uint<33>) seed, &rnd_out);
		pick_rnd_hw<unsigned int >((unsigned int)problem_size, rnd_out, &variable_pick);
		rnd_input = rnd_out;
		//choose a move
		Galois_LFSR_32_33_hw<unsigned int>(rnd_input, (ap_uint<33>) seed, &rnd_out);
		pick_rnd_hw<unsigned int >(delta, rnd_out, &move);
		rnd_input = rnd_out;
		Galois_LFSR_32_33_hw<unsigned int>(rnd_input, (ap_uint<33>) seed, &rnd_out);
		pick_rnd_hw<unsigned int >((unsigned int)2, rnd_out, &plus_or_minus);
		rnd_input = rnd_out;
		if (plus_or_minus == 0){
			new_val[variable_pick] = current_val[variable_pick] + move;
		}
		else{
			new_val[variable_pick] = current_val[variable_pick] - move;
		}
		//accept or reject the move
			//evaluate the equation
		float cost_new = 0;
		T current_val_cash;
	QIO_loop1:
		for(int i=0; i<problem_size; i++){
			current_val_cash = current_val[i];
	QIO_loop2:
			for(int j=0; j<problem_size; j++){
				cost_new += (float)current_val_cash*(float)current_val[j]*coef_list[i][j];
			}
		}
			//end evaluate
		Galois_LFSR_32_33_hw<unsigned int>(rnd_input, (ap_uint<33>) seed, &rnd_out);
		uniform0_1_hw<float>(rnd_out, &random);
		rnd_input = rnd_out;
		if (random <= (cost_new/cost_old)){
			cost_old = cost_new;
			current_val[variable_pick] = new_val[variable_pick];
		}
	}
QIO_hw_loop3:
	for(int i=0; i<problem_size; i++){
#pragma HLS PIPELINE
		final_val[i] = current_val[i];
	}
}
//input_shape must be [x1,..., xN, coef_x1, coef_x1x2,..., coef_x1xN, coef_x2, e][problem_size];
void QIO_accel(axis_t input[problem_size + coefficient_size], axis_t output[problem_size], unsigned int *seed){//, unsigned int *num_iteration){
	int init_val[problem_size];
	int final_val[problem_size];
	float coef_list[problem_size][problem_size];
	unsigned int num_iteration = 1000;
	axis2type<int>(input, init_val, coef_list);
	QIO_accel_hw<int>(init_val, coef_list, num_iteration, *seed, final_val);
	type2axis<int>(final_val, output);
}
