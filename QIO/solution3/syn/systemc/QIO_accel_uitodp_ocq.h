// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __QIO_accel_uitodp_ocq__HH__
#define __QIO_accel_uitodp_ocq__HH__
#include "ACMP_uitodp.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int dout_WIDTH>
SC_MODULE(QIO_accel_uitodp_ocq) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_uitodp<ID, 6, din0_WIDTH, dout_WIDTH> ACMP_uitodp_U;

    SC_CTOR(QIO_accel_uitodp_ocq):  ACMP_uitodp_U ("ACMP_uitodp_U") {
        ACMP_uitodp_U.clk(clk);
        ACMP_uitodp_U.reset(reset);
        ACMP_uitodp_U.ce(ce);
        ACMP_uitodp_U.din0(din0);
        ACMP_uitodp_U.dout(dout);

    }

};

#endif //
