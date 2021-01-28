#ifndef _QIO_
#define _QIO_

#include <hls_math.h>
#include "LFSR.h"

#include "ap_int.h"

#define problem_size 256
#define coefficient_size (problem_size + 1)*problem_size/2

struct axis_t {
  ap_uint<32> data;
  ap_int<1> last;
};

template <typename T> void axis2type(axis_t *input, T init_val[problem_size], float coef_list[problem_size][problem_size]);
template <typename T> void type2axis(T C[problem_size], axis_t *output);
template <typename T> void QIO(T current_val[problem_size],float coef_list[problem_size][problem_size], float *cost_new);
template <typename T> void QIO_accel_hw(T init_val[problem_size],float coef_list[problem_size][problem_size], unsigned int num_iteration,unsigned int seed, T final_val[problem_size]);

template <typename T> void QIO(T current_val[problem_size],float coef_list[problem_size][problem_size], float *cost_new){
	float sum = 0;
	T current_val2[problem_size];
QIO_loop1:
	for(int i=0; i<problem_size; i++){
#pragma HLS PIPELINE
		current_val2[i] = current_val[i];
	}
QIO_loop2:
	for(int i=0; i<problem_size; i++){
		sum += (float)current_val[i]*coef_list[i][i];
QIO_loop3:
		for(int j=i+1; j<problem_size; j++){
			sum += (float)current_val[i]*(float)current_val2[j]*coef_list[i][j];
		}
	}
	*cost_new = sum;
}

template <typename T> void axis2type(axis_t *input, T init_val[problem_size], float coef_list[problem_size][problem_size]){
#pragma HLS INLINE
  union {
    unsigned int ival;
    T oval;
  } converter;
  union {
    unsigned int ival;
    float oval;
  } converter2;
axis2type_loop1:
  for (int i = 0; i < problem_size; i++) {
#pragma HLS PIPELINE
	  converter.ival = input[i].data;
	  init_val[i] = converter.oval;
  }
axis2type_loop2:
  for (int i = 0; i < problem_size; i++) {
axis2type_loop3:
	for (int j = 0; j < problem_size; j++) {
#pragma HLS PIPELINE
	  int k = (i + 1) * problem_size + j;
      converter2.ival = input[k].data;
      coef_list[i][j] = converter2.oval;
    }
  }
}

template <typename T> void type2axis(T C[problem_size], axis_t *output) {
#pragma HLS INLINE
    union {
  	unsigned int oval;
      T ival;
    } converter;
type2axis_loop1:
    for (int i = 0; i < problem_size; i++) {
#pragma HLS PIPELINE
#pragma HLS LOOP_FLATTEN off
        ap_uint<1> tmp = 0;
        if (i == problem_size - 1) {
          tmp = 1;
        }
        output[i].last = tmp;
        converter.ival = C[i];
        output[i].data = converter.oval;
    }
}

#endif
