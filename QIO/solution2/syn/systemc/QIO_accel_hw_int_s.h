// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _QIO_accel_hw_int_s_HH_
#define _QIO_accel_hw_int_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Galois_LFSR_32_33_hw.h"
#include "QIO_accel_fadd_32eOg.h"
#include "QIO_accel_fmul_32fYi.h"
#include "QIO_accel_fdiv_32g8j.h"
#include "QIO_accel_sitofp_hbi.h"
#include "QIO_accel_fptruncibs.h"
#include "QIO_accel_fcmp_32jbC.h"
#include "QIO_accel_dmul_64kbM.h"
#include "QIO_accel_ddiv_64lbW.h"
#include "QIO_accel_uitodp_mb6.h"
#include "QIO_accel_hw_int_bkb.h"
#include "QIO_accel_hw_int_dEe.h"

namespace ap_rtl {

struct QIO_accel_hw_int_s : public sc_module {
    // Port declarations 26
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > init_val_address0;
    sc_out< sc_logic > init_val_ce0;
    sc_in< sc_lv<32> > init_val_q0;
    sc_out< sc_lv<15> > coef_list_0_address0;
    sc_out< sc_logic > coef_list_0_ce0;
    sc_in< sc_lv<32> > coef_list_0_q0;
    sc_out< sc_lv<15> > coef_list_0_address1;
    sc_out< sc_logic > coef_list_0_ce1;
    sc_in< sc_lv<32> > coef_list_0_q1;
    sc_out< sc_lv<15> > coef_list_1_address0;
    sc_out< sc_logic > coef_list_1_ce0;
    sc_in< sc_lv<32> > coef_list_1_q0;
    sc_out< sc_lv<15> > coef_list_1_address1;
    sc_out< sc_logic > coef_list_1_ce1;
    sc_in< sc_lv<32> > coef_list_1_q1;
    sc_in< sc_lv<32> > seed;
    sc_out< sc_lv<8> > final_val_address0;
    sc_out< sc_logic > final_val_ce0;
    sc_out< sc_logic > final_val_we0;
    sc_out< sc_lv<32> > final_val_d0;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<64> > ap_var_for_const2;
    sc_signal< sc_lv<64> > ap_var_for_const3;
    sc_signal< sc_lv<5> > ap_var_for_const1;


    // Module declarations
    QIO_accel_hw_int_s(sc_module_name name);
    SC_HAS_PROCESS(QIO_accel_hw_int_s);

    ~QIO_accel_hw_int_s();

    sc_trace_file* mVcdFile;

    QIO_accel_hw_int_bkb* current_val_0_U;
    QIO_accel_hw_int_bkb* current_val_1_U;
    QIO_accel_hw_int_dEe* new_val_U;
    Galois_LFSR_32_33_hw* grp_Galois_LFSR_32_33_hw_fu_477;
    QIO_accel_fadd_32eOg<1,5,32,32,32>* QIO_accel_fadd_32eOg_U3;
    QIO_accel_fmul_32fYi<1,4,32,32,32>* QIO_accel_fmul_32fYi_U4;
    QIO_accel_fmul_32fYi<1,4,32,32,32>* QIO_accel_fmul_32fYi_U5;
    QIO_accel_fdiv_32g8j<1,16,32,32,32>* QIO_accel_fdiv_32g8j_U6;
    QIO_accel_sitofp_hbi<1,6,32,32>* QIO_accel_sitofp_hbi_U7;
    QIO_accel_sitofp_hbi<1,6,32,32>* QIO_accel_sitofp_hbi_U8;
    QIO_accel_fptruncibs<1,2,64,32>* QIO_accel_fptruncibs_U9;
    QIO_accel_fcmp_32jbC<1,2,32,32,1>* QIO_accel_fcmp_32jbC_U10;
    QIO_accel_dmul_64kbM<1,6,64,64,64>* QIO_accel_dmul_64kbM_U11;
    QIO_accel_dmul_64kbM<1,6,64,64,64>* QIO_accel_dmul_64kbM_U12;
    QIO_accel_ddiv_64lbW<1,31,64,64,64>* QIO_accel_ddiv_64lbW_U13;
    QIO_accel_ddiv_64lbW<1,31,64,64,64>* QIO_accel_ddiv_64lbW_U14;
    QIO_accel_uitodp_mb6<1,6,32,64>* QIO_accel_uitodp_mb6_U15;
    QIO_accel_uitodp_mb6<1,6,32,64>* QIO_accel_uitodp_mb6_U16;
    sc_signal< sc_lv<131> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<9> > i_0_reg_386;
    sc_signal< sc_lv<9> > i4_0_reg_465;
    sc_signal< sc_lv<32> > grp_Galois_LFSR_32_33_hw_fu_477_ap_return;
    sc_signal< sc_lv<32> > reg_546;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state88;
    sc_signal< sc_lv<64> > grp_fu_540_p1;
    sc_signal< sc_lv<64> > reg_553;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state94;
    sc_signal< sc_lv<32> > grp_fu_493_p2;
    sc_signal< sc_lv<32> > reg_559;
    sc_signal< sc_logic > ap_CS_fsm_state73;
    sc_signal< sc_logic > ap_CS_fsm_state77;
    sc_signal< sc_lv<32> > grp_fu_497_p2;
    sc_signal< sc_lv<32> > reg_565;
    sc_signal< sc_lv<32> > rnd_input_fu_571_p2;
    sc_signal< sc_lv<32> > rnd_input_reg_1357;
    sc_signal< sc_lv<1> > icmp_ln17_fu_577_p2;
    sc_signal< sc_lv<1> > icmp_ln17_reg_1362;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<9> > i_fu_583_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<64> > zext_ln18_fu_589_p1;
    sc_signal< sc_lv<64> > zext_ln18_reg_1371;
    sc_signal< sc_lv<7> > trunc_ln18_fu_594_p1;
    sc_signal< sc_lv<7> > trunc_ln18_reg_1381;
    sc_signal< sc_lv<1> > icmp_ln18_fu_608_p2;
    sc_signal< sc_lv<1> > icmp_ln18_reg_1386;
    sc_signal< sc_lv<1> > icmp_ln22_fu_624_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<14> > i_3_fu_630_p2;
    sc_signal< sc_lv<14> > i_3_reg_1401;
    sc_signal< sc_lv<32> > rnd_out_1_reg_1406;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > rnd_out_2_reg_1412;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<64> > tmp_6_reg_1418;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<64> > grp_fu_543_p1;
    sc_signal< sc_lv<64> > tmp_9_reg_1423;
    sc_signal< sc_lv<64> > grp_fu_519_p2;
    sc_signal< sc_lv<64> > tmp_3_reg_1428;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<64> > tmp_7_reg_1433;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<64> > grp_fu_525_p2;
    sc_signal< sc_lv<64> > tmp_s_reg_1438;
    sc_signal< sc_lv<11> > tmp_V_reg_1443;
    sc_signal< sc_logic > ap_CS_fsm_state49;
    sc_signal< sc_lv<52> > tmp_V_1_fu_650_p1;
    sc_signal< sc_lv<52> > tmp_V_1_reg_1449;
    sc_signal< sc_lv<1> > isNeg_fu_663_p3;
    sc_signal< sc_lv<1> > isNeg_reg_1454;
    sc_signal< sc_logic > ap_CS_fsm_state50;
    sc_signal< sc_lv<12> > ush_fu_680_p3;
    sc_signal< sc_lv<12> > ush_reg_1459;
    sc_signal< sc_lv<32> > val_V_reg_1464;
    sc_signal< sc_logic > ap_CS_fsm_state51;
    sc_signal< sc_lv<11> > tmp_V_2_reg_1469;
    sc_signal< sc_lv<52> > tmp_V_3_fu_759_p1;
    sc_signal< sc_lv<52> > tmp_V_3_reg_1475;
    sc_signal< sc_lv<11> > tmp_V_4_reg_1480;
    sc_signal< sc_lv<52> > tmp_V_5_fu_777_p1;
    sc_signal< sc_lv<52> > tmp_V_5_reg_1486;
    sc_signal< sc_lv<7> > current_val_0_addr_1_reg_1491;
    sc_signal< sc_lv<7> > current_val_1_addr_1_reg_1497;
    sc_signal< sc_lv<1> > icmp_ln37_fu_807_p2;
    sc_signal< sc_lv<1> > icmp_ln37_reg_1503;
    sc_signal< sc_lv<32> > val_V_1_fu_906_p3;
    sc_signal< sc_lv<32> > val_V_1_reg_1508;
    sc_signal< sc_logic > ap_CS_fsm_state52;
    sc_signal< sc_lv<1> > icmp_ln36_fu_1015_p2;
    sc_signal< sc_lv<1> > icmp_ln36_reg_1514;
    sc_signal< sc_lv<64> > zext_ln37_fu_1021_p1;
    sc_signal< sc_lv<64> > zext_ln37_reg_1518;
    sc_signal< sc_lv<32> > select_ln37_fu_1024_p3;
    sc_signal< sc_lv<32> > select_ln37_reg_1525;
    sc_signal< sc_lv<9> > i_2_fu_1047_p2;
    sc_signal< sc_lv<9> > i_2_reg_1534;
    sc_signal< sc_logic > ap_CS_fsm_state54;
    sc_signal< sc_lv<7> > trunc_ln48_fu_1053_p1;
    sc_signal< sc_lv<7> > trunc_ln48_reg_1539;
    sc_signal< sc_lv<1> > icmp_ln47_fu_1041_p2;
    sc_signal< sc_lv<1> > icmp_ln48_fu_1073_p2;
    sc_signal< sc_lv<1> > icmp_ln48_reg_1555;
    sc_signal< sc_lv<32> > current_val_cash_fu_1079_p3;
    sc_signal< sc_lv<32> > current_val_cash_reg_1562;
    sc_signal< sc_logic > ap_CS_fsm_state55;
    sc_signal< sc_lv<16> > zext_ln48_1_fu_1093_p1;
    sc_signal< sc_lv<16> > zext_ln48_1_reg_1567;
    sc_signal< sc_logic > ap_CS_fsm_state61;
    sc_signal< sc_lv<32> > grp_fu_506_p1;
    sc_signal< sc_lv<32> > tmp_12_reg_1572;
    sc_signal< sc_logic > ap_CS_fsm_state62;
    sc_signal< sc_lv<1> > icmp_ln50_fu_1097_p2;
    sc_signal< sc_lv<16> > add_ln51_fu_1129_p2;
    sc_signal< sc_lv<16> > add_ln51_reg_1601;
    sc_signal< sc_logic > ap_CS_fsm_state63;
    sc_signal< sc_lv<32> > select_ln51_fu_1150_p3;
    sc_signal< sc_lv<32> > select_ln51_reg_1606;
    sc_signal< sc_lv<8> > empty_42_fu_1158_p1;
    sc_signal< sc_lv<8> > empty_42_reg_1611;
    sc_signal< sc_lv<32> > select_ln51_1_fu_1162_p3;
    sc_signal< sc_lv<32> > select_ln51_1_reg_1616;
    sc_signal< sc_lv<9> > add_ln50_fu_1170_p2;
    sc_signal< sc_lv<9> > add_ln50_reg_1621;
    sc_signal< sc_lv<32> > tmp_16_reg_1626;
    sc_signal< sc_logic > ap_CS_fsm_state69;
    sc_signal< sc_lv<32> > grp_fu_509_p1;
    sc_signal< sc_lv<32> > tmp_13_1_reg_1631;
    sc_signal< sc_logic > ap_CS_fsm_state72;
    sc_signal< sc_lv<32> > select_ln48_fu_1199_p3;
    sc_signal< sc_lv<32> > select_ln48_reg_1656;
    sc_signal< sc_lv<32> > select_ln48_1_fu_1206_p3;
    sc_signal< sc_lv<32> > select_ln48_1_reg_1661;
    sc_signal< sc_lv<32> > grp_fu_488_p2;
    sc_signal< sc_lv<32> > cost_new_reg_1666;
    sc_signal< sc_logic > ap_CS_fsm_state82;
    sc_signal< sc_logic > ap_CS_fsm_state87;
    sc_signal< sc_logic > ap_CS_fsm_state112;
    sc_signal< sc_lv<64> > grp_fu_530_p2;
    sc_signal< sc_lv<64> > tmp_5_reg_1681;
    sc_signal< sc_logic > ap_CS_fsm_state125;
    sc_signal< sc_lv<32> > grp_fu_512_p1;
    sc_signal< sc_lv<32> > random_reg_1686;
    sc_signal< sc_logic > ap_CS_fsm_state127;
    sc_signal< sc_lv<32> > grp_fu_501_p2;
    sc_signal< sc_lv<32> > tmp_10_reg_1692;
    sc_signal< sc_lv<1> > icmp_ln58_fu_1251_p2;
    sc_signal< sc_lv<1> > icmp_ln58_reg_1698;
    sc_signal< sc_logic > ap_CS_fsm_state128;
    sc_signal< sc_lv<1> > icmp_ln58_1_fu_1257_p2;
    sc_signal< sc_lv<1> > icmp_ln58_1_reg_1703;
    sc_signal< sc_lv<1> > icmp_ln58_2_fu_1263_p2;
    sc_signal< sc_lv<1> > icmp_ln58_2_reg_1708;
    sc_signal< sc_lv<1> > icmp_ln58_3_fu_1269_p2;
    sc_signal< sc_lv<1> > icmp_ln58_3_reg_1713;
    sc_signal< sc_lv<1> > and_ln58_1_fu_1289_p2;
    sc_signal< sc_lv<1> > and_ln58_1_reg_1718;
    sc_signal< sc_logic > ap_CS_fsm_state129;
    sc_signal< sc_lv<8> > new_val_addr_3_gep_fu_350_p3;
    sc_signal< sc_lv<1> > icmp_ln64_fu_1300_p2;
    sc_signal< sc_lv<1> > icmp_ln64_reg_1727;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state131_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state132_pp1_stage0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<9> > i_1_fu_1306_p2;
    sc_signal< sc_lv<9> > i_1_reg_1731;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state131;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< sc_lv<7> > current_val_0_address0;
    sc_signal< sc_logic > current_val_0_ce0;
    sc_signal< sc_logic > current_val_0_we0;
    sc_signal< sc_lv<32> > current_val_0_q0;
    sc_signal< sc_lv<7> > current_val_0_address1;
    sc_signal< sc_logic > current_val_0_ce1;
    sc_signal< sc_logic > current_val_0_we1;
    sc_signal< sc_lv<32> > current_val_0_q1;
    sc_signal< sc_lv<7> > current_val_1_address0;
    sc_signal< sc_logic > current_val_1_ce0;
    sc_signal< sc_logic > current_val_1_we0;
    sc_signal< sc_lv<32> > current_val_1_q0;
    sc_signal< sc_lv<7> > current_val_1_address1;
    sc_signal< sc_logic > current_val_1_ce1;
    sc_signal< sc_logic > current_val_1_we1;
    sc_signal< sc_lv<32> > current_val_1_q1;
    sc_signal< sc_lv<8> > new_val_address0;
    sc_signal< sc_logic > new_val_ce0;
    sc_signal< sc_logic > new_val_we0;
    sc_signal< sc_lv<32> > new_val_d0;
    sc_signal< sc_lv<32> > new_val_q0;
    sc_signal< sc_logic > grp_Galois_LFSR_32_33_hw_fu_477_ap_start;
    sc_signal< sc_logic > grp_Galois_LFSR_32_33_hw_fu_477_ap_done;
    sc_signal< sc_logic > grp_Galois_LFSR_32_33_hw_fu_477_ap_idle;
    sc_signal< sc_logic > grp_Galois_LFSR_32_33_hw_fu_477_ap_ready;
    sc_signal< sc_lv<32> > grp_Galois_LFSR_32_33_hw_fu_477_input_r;
    sc_signal< sc_lv<32> > rnd_input_0_reg_397;
    sc_signal< sc_logic > ap_CS_fsm_state130;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<14> > i1_0_reg_407;
    sc_signal< sc_lv<32> > cost_old_reg_418;
    sc_signal< sc_logic > ap_CS_fsm_state53;
    sc_signal< sc_lv<9> > i3_0_reg_430;
    sc_signal< sc_lv<32> > cost_new2_1_0_reg_441;
    sc_signal< sc_lv<9> > j_0_0_reg_453;
    sc_signal< sc_lv<9> > ap_phi_mux_i4_0_phi_fu_469_p4;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > zext_ln18_1_fu_614_p1;
    sc_signal< sc_lv<64> > zext_ln37_1_fu_801_p1;
    sc_signal< sc_lv<8> > new_val_addr_1_gep_fu_243_p3;
    sc_signal< sc_lv<64> > zext_ln48_fu_1057_p1;
    sc_signal< sc_lv<64> > zext_ln51_1_fu_1107_p1;
    sc_signal< sc_lv<64> > zext_ln51_3_fu_1119_p1;
    sc_signal< sc_lv<64> > zext_ln51_2_fu_1176_p1;
    sc_signal< sc_lv<64> > zext_ln51_4_fu_1193_p1;
    sc_signal< sc_lv<64> > zext_ln66_1_fu_1316_p1;
    sc_signal< sc_lv<64> > zext_ln66_fu_1322_p1;
    sc_signal< sc_lv<32> > cost_old_1_fu_160;
    sc_signal< sc_lv<32> > sub_ln40_fu_1031_p2;
    sc_signal< sc_lv<32> > add_ln37_fu_1036_p2;
    sc_signal< sc_lv<32> > grp_fu_488_p0;
    sc_signal< sc_lv<32> > grp_fu_488_p1;
    sc_signal< sc_logic > ap_CS_fsm_state78;
    sc_signal< sc_logic > ap_CS_fsm_state83;
    sc_signal< sc_lv<32> > grp_fu_493_p0;
    sc_signal< sc_lv<32> > grp_fu_493_p1;
    sc_signal< sc_logic > ap_CS_fsm_state70;
    sc_signal< sc_logic > ap_CS_fsm_state74;
    sc_signal< sc_lv<32> > grp_fu_497_p0;
    sc_signal< sc_lv<32> > grp_fu_497_p1;
    sc_signal< sc_lv<32> > grp_fu_506_p0;
    sc_signal< sc_logic > ap_CS_fsm_state56;
    sc_signal< sc_logic > ap_CS_fsm_state64;
    sc_signal< sc_logic > ap_CS_fsm_state126;
    sc_signal< sc_lv<64> > grp_fu_519_p0;
    sc_signal< sc_lv<64> > grp_fu_519_p1;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<64> > grp_fu_530_p0;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_logic > ap_CS_fsm_state95;
    sc_signal< sc_lv<32> > grp_fu_540_p0;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state89;
    sc_signal< sc_lv<2> > tmp_19_fu_598_p4;
    sc_signal< sc_lv<64> > p_Val2_s_fu_636_p1;
    sc_signal< sc_lv<12> > zext_ln502_fu_654_p1;
    sc_signal< sc_lv<12> > add_ln502_fu_657_p2;
    sc_signal< sc_lv<11> > sub_ln1311_fu_671_p2;
    sc_signal< sc_lv<12> > sext_ln1311_fu_676_p1;
    sc_signal< sc_lv<54> > mantissa_V_fu_688_p4;
    sc_signal< sc_lv<32> > sext_ln1311_1_fu_701_p1;
    sc_signal< sc_lv<54> > zext_ln1285_fu_708_p1;
    sc_signal< sc_lv<54> > r_V_fu_712_p2;
    sc_signal< sc_lv<137> > zext_ln682_fu_697_p1;
    sc_signal< sc_lv<137> > zext_ln1287_fu_704_p1;
    sc_signal< sc_lv<137> > zext_ln1287_3_fu_718_p1;
    sc_signal< sc_lv<137> > r_V_1_fu_722_p2;
    sc_signal< sc_lv<137> > r_V_7_fu_728_p3;
    sc_signal< sc_lv<64> > p_Val2_5_fu_745_p1;
    sc_signal< sc_lv<64> > grp_fu_535_p2;
    sc_signal< sc_lv<64> > p_Val2_9_fu_763_p1;
    sc_signal< sc_lv<7> > trunc_ln1_fu_791_p4;
    sc_signal< sc_lv<25> > trunc_ln37_1_fu_781_p4;
    sc_signal< sc_lv<54> > mantissa_V_1_fu_813_p4;
    sc_signal< sc_lv<12> > zext_ln502_1_fu_826_p1;
    sc_signal< sc_lv<12> > add_ln502_1_fu_829_p2;
    sc_signal< sc_lv<11> > sub_ln1311_1_fu_843_p2;
    sc_signal< sc_lv<1> > isNeg_1_fu_835_p3;
    sc_signal< sc_lv<12> > sext_ln1311_2_fu_848_p1;
    sc_signal< sc_lv<12> > ush_1_fu_852_p3;
    sc_signal< sc_lv<32> > sext_ln1311_3_fu_860_p1;
    sc_signal< sc_lv<54> > zext_ln1285_1_fu_868_p1;
    sc_signal< sc_lv<137> > zext_ln682_1_fu_822_p1;
    sc_signal< sc_lv<137> > zext_ln1287_1_fu_864_p1;
    sc_signal< sc_lv<54> > r_V_3_fu_872_p2;
    sc_signal< sc_lv<1> > tmp_24_fu_884_p3;
    sc_signal< sc_lv<137> > r_V_4_fu_878_p2;
    sc_signal< sc_lv<32> > zext_ln662_fu_892_p1;
    sc_signal< sc_lv<32> > tmp_20_fu_896_p4;
    sc_signal< sc_lv<54> > mantissa_V_2_fu_914_p4;
    sc_signal< sc_lv<12> > zext_ln502_2_fu_927_p1;
    sc_signal< sc_lv<12> > add_ln502_2_fu_930_p2;
    sc_signal< sc_lv<11> > sub_ln1311_2_fu_944_p2;
    sc_signal< sc_lv<1> > isNeg_2_fu_936_p3;
    sc_signal< sc_lv<12> > sext_ln1311_4_fu_949_p1;
    sc_signal< sc_lv<12> > ush_2_fu_953_p3;
    sc_signal< sc_lv<32> > sext_ln1311_5_fu_961_p1;
    sc_signal< sc_lv<54> > zext_ln1285_2_fu_969_p1;
    sc_signal< sc_lv<137> > zext_ln682_2_fu_923_p1;
    sc_signal< sc_lv<137> > zext_ln1287_2_fu_965_p1;
    sc_signal< sc_lv<54> > r_V_5_fu_973_p2;
    sc_signal< sc_lv<1> > tmp_28_fu_985_p3;
    sc_signal< sc_lv<137> > r_V_6_fu_979_p2;
    sc_signal< sc_lv<32> > zext_ln662_1_fu_993_p1;
    sc_signal< sc_lv<32> > tmp_21_fu_997_p4;
    sc_signal< sc_lv<32> > val_V_2_fu_1007_p3;
    sc_signal< sc_lv<2> > tmp_30_fu_1063_p4;
    sc_signal< sc_lv<15> > tmp_22_fu_1086_p3;
    sc_signal< sc_lv<7> > trunc_ln51_fu_1103_p1;
    sc_signal< sc_lv<7> > or_ln51_fu_1113_p2;
    sc_signal< sc_lv<16> > zext_ln51_fu_1125_p1;
    sc_signal< sc_lv<2> > tmp_31_fu_1134_p4;
    sc_signal< sc_lv<1> > icmp_ln51_fu_1144_p2;
    sc_signal< sc_lv<8> > or_ln50_fu_1181_p2;
    sc_signal< sc_lv<15> > tmp_23_fu_1186_p3;
    sc_signal< sc_lv<32> > bitcast_ln58_fu_1217_p1;
    sc_signal< sc_lv<32> > bitcast_ln58_1_fu_1234_p1;
    sc_signal< sc_lv<8> > tmp_11_fu_1220_p4;
    sc_signal< sc_lv<23> > trunc_ln58_fu_1230_p1;
    sc_signal< sc_lv<8> > tmp_13_fu_1237_p4;
    sc_signal< sc_lv<23> > trunc_ln58_1_fu_1247_p1;
    sc_signal< sc_lv<1> > or_ln58_fu_1275_p2;
    sc_signal< sc_lv<1> > or_ln58_1_fu_1279_p2;
    sc_signal< sc_lv<1> > and_ln58_fu_1283_p2;
    sc_signal< sc_lv<1> > grp_fu_515_p2;
    sc_signal< sc_lv<7> > trunc_ln66_fu_1312_p1;
    sc_signal< sc_lv<2> > tmp_29_fu_1327_p4;
    sc_signal< sc_lv<1> > icmp_ln66_fu_1337_p2;
    sc_signal< sc_logic > ap_CS_fsm_state133;
    sc_signal< sc_lv<131> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<131> ap_ST_fsm_state1;
    static const sc_lv<131> ap_ST_fsm_pp0_stage0;
    static const sc_lv<131> ap_ST_fsm_state4;
    static const sc_lv<131> ap_ST_fsm_state5;
    static const sc_lv<131> ap_ST_fsm_state6;
    static const sc_lv<131> ap_ST_fsm_state7;
    static const sc_lv<131> ap_ST_fsm_state8;
    static const sc_lv<131> ap_ST_fsm_state9;
    static const sc_lv<131> ap_ST_fsm_state10;
    static const sc_lv<131> ap_ST_fsm_state11;
    static const sc_lv<131> ap_ST_fsm_state12;
    static const sc_lv<131> ap_ST_fsm_state13;
    static const sc_lv<131> ap_ST_fsm_state14;
    static const sc_lv<131> ap_ST_fsm_state15;
    static const sc_lv<131> ap_ST_fsm_state16;
    static const sc_lv<131> ap_ST_fsm_state17;
    static const sc_lv<131> ap_ST_fsm_state18;
    static const sc_lv<131> ap_ST_fsm_state19;
    static const sc_lv<131> ap_ST_fsm_state20;
    static const sc_lv<131> ap_ST_fsm_state21;
    static const sc_lv<131> ap_ST_fsm_state22;
    static const sc_lv<131> ap_ST_fsm_state23;
    static const sc_lv<131> ap_ST_fsm_state24;
    static const sc_lv<131> ap_ST_fsm_state25;
    static const sc_lv<131> ap_ST_fsm_state26;
    static const sc_lv<131> ap_ST_fsm_state27;
    static const sc_lv<131> ap_ST_fsm_state28;
    static const sc_lv<131> ap_ST_fsm_state29;
    static const sc_lv<131> ap_ST_fsm_state30;
    static const sc_lv<131> ap_ST_fsm_state31;
    static const sc_lv<131> ap_ST_fsm_state32;
    static const sc_lv<131> ap_ST_fsm_state33;
    static const sc_lv<131> ap_ST_fsm_state34;
    static const sc_lv<131> ap_ST_fsm_state35;
    static const sc_lv<131> ap_ST_fsm_state36;
    static const sc_lv<131> ap_ST_fsm_state37;
    static const sc_lv<131> ap_ST_fsm_state38;
    static const sc_lv<131> ap_ST_fsm_state39;
    static const sc_lv<131> ap_ST_fsm_state40;
    static const sc_lv<131> ap_ST_fsm_state41;
    static const sc_lv<131> ap_ST_fsm_state42;
    static const sc_lv<131> ap_ST_fsm_state43;
    static const sc_lv<131> ap_ST_fsm_state44;
    static const sc_lv<131> ap_ST_fsm_state45;
    static const sc_lv<131> ap_ST_fsm_state46;
    static const sc_lv<131> ap_ST_fsm_state47;
    static const sc_lv<131> ap_ST_fsm_state48;
    static const sc_lv<131> ap_ST_fsm_state49;
    static const sc_lv<131> ap_ST_fsm_state50;
    static const sc_lv<131> ap_ST_fsm_state51;
    static const sc_lv<131> ap_ST_fsm_state52;
    static const sc_lv<131> ap_ST_fsm_state53;
    static const sc_lv<131> ap_ST_fsm_state54;
    static const sc_lv<131> ap_ST_fsm_state55;
    static const sc_lv<131> ap_ST_fsm_state56;
    static const sc_lv<131> ap_ST_fsm_state57;
    static const sc_lv<131> ap_ST_fsm_state58;
    static const sc_lv<131> ap_ST_fsm_state59;
    static const sc_lv<131> ap_ST_fsm_state60;
    static const sc_lv<131> ap_ST_fsm_state61;
    static const sc_lv<131> ap_ST_fsm_state62;
    static const sc_lv<131> ap_ST_fsm_state63;
    static const sc_lv<131> ap_ST_fsm_state64;
    static const sc_lv<131> ap_ST_fsm_state65;
    static const sc_lv<131> ap_ST_fsm_state66;
    static const sc_lv<131> ap_ST_fsm_state67;
    static const sc_lv<131> ap_ST_fsm_state68;
    static const sc_lv<131> ap_ST_fsm_state69;
    static const sc_lv<131> ap_ST_fsm_state70;
    static const sc_lv<131> ap_ST_fsm_state71;
    static const sc_lv<131> ap_ST_fsm_state72;
    static const sc_lv<131> ap_ST_fsm_state73;
    static const sc_lv<131> ap_ST_fsm_state74;
    static const sc_lv<131> ap_ST_fsm_state75;
    static const sc_lv<131> ap_ST_fsm_state76;
    static const sc_lv<131> ap_ST_fsm_state77;
    static const sc_lv<131> ap_ST_fsm_state78;
    static const sc_lv<131> ap_ST_fsm_state79;
    static const sc_lv<131> ap_ST_fsm_state80;
    static const sc_lv<131> ap_ST_fsm_state81;
    static const sc_lv<131> ap_ST_fsm_state82;
    static const sc_lv<131> ap_ST_fsm_state83;
    static const sc_lv<131> ap_ST_fsm_state84;
    static const sc_lv<131> ap_ST_fsm_state85;
    static const sc_lv<131> ap_ST_fsm_state86;
    static const sc_lv<131> ap_ST_fsm_state87;
    static const sc_lv<131> ap_ST_fsm_state88;
    static const sc_lv<131> ap_ST_fsm_state89;
    static const sc_lv<131> ap_ST_fsm_state90;
    static const sc_lv<131> ap_ST_fsm_state91;
    static const sc_lv<131> ap_ST_fsm_state92;
    static const sc_lv<131> ap_ST_fsm_state93;
    static const sc_lv<131> ap_ST_fsm_state94;
    static const sc_lv<131> ap_ST_fsm_state95;
    static const sc_lv<131> ap_ST_fsm_state96;
    static const sc_lv<131> ap_ST_fsm_state97;
    static const sc_lv<131> ap_ST_fsm_state98;
    static const sc_lv<131> ap_ST_fsm_state99;
    static const sc_lv<131> ap_ST_fsm_state100;
    static const sc_lv<131> ap_ST_fsm_state101;
    static const sc_lv<131> ap_ST_fsm_state102;
    static const sc_lv<131> ap_ST_fsm_state103;
    static const sc_lv<131> ap_ST_fsm_state104;
    static const sc_lv<131> ap_ST_fsm_state105;
    static const sc_lv<131> ap_ST_fsm_state106;
    static const sc_lv<131> ap_ST_fsm_state107;
    static const sc_lv<131> ap_ST_fsm_state108;
    static const sc_lv<131> ap_ST_fsm_state109;
    static const sc_lv<131> ap_ST_fsm_state110;
    static const sc_lv<131> ap_ST_fsm_state111;
    static const sc_lv<131> ap_ST_fsm_state112;
    static const sc_lv<131> ap_ST_fsm_state113;
    static const sc_lv<131> ap_ST_fsm_state114;
    static const sc_lv<131> ap_ST_fsm_state115;
    static const sc_lv<131> ap_ST_fsm_state116;
    static const sc_lv<131> ap_ST_fsm_state117;
    static const sc_lv<131> ap_ST_fsm_state118;
    static const sc_lv<131> ap_ST_fsm_state119;
    static const sc_lv<131> ap_ST_fsm_state120;
    static const sc_lv<131> ap_ST_fsm_state121;
    static const sc_lv<131> ap_ST_fsm_state122;
    static const sc_lv<131> ap_ST_fsm_state123;
    static const sc_lv<131> ap_ST_fsm_state124;
    static const sc_lv<131> ap_ST_fsm_state125;
    static const sc_lv<131> ap_ST_fsm_state126;
    static const sc_lv<131> ap_ST_fsm_state127;
    static const sc_lv<131> ap_ST_fsm_state128;
    static const sc_lv<131> ap_ST_fsm_state129;
    static const sc_lv<131> ap_ST_fsm_state130;
    static const sc_lv<131> ap_ST_fsm_pp1_stage0;
    static const sc_lv<131> ap_ST_fsm_state133;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_56;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_5C;
    static const sc_lv<32> ap_const_lv32_47;
    static const sc_lv<32> ap_const_lv32_4B;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_31;
    static const sc_lv<32> ap_const_lv32_32;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_35;
    static const sc_lv<32> ap_const_lv32_3B;
    static const sc_lv<32> ap_const_lv32_3C;
    static const sc_lv<32> ap_const_lv32_3D;
    static const sc_lv<32> ap_const_lv32_43;
    static const sc_lv<32> ap_const_lv32_46;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_50;
    static const sc_lv<32> ap_const_lv32_55;
    static const sc_lv<32> ap_const_lv32_6E;
    static const sc_lv<32> ap_const_lv32_7B;
    static const sc_lv<32> ap_const_lv32_7D;
    static const sc_lv<32> ap_const_lv32_7E;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<32> ap_const_lv32_81;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_80;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<32> ap_const_lv32_33;
    static const sc_lv<32> ap_const_lv32_4E6E6B28;
    static const sc_lv<32> ap_const_lv32_4C;
    static const sc_lv<32> ap_const_lv32_51;
    static const sc_lv<32> ap_const_lv32_44;
    static const sc_lv<32> ap_const_lv32_48;
    static const sc_lv<32> ap_const_lv32_36;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<32> ap_const_lv32_7C;
    static const sc_lv<64> ap_const_lv64_4070000000000000;
    static const sc_lv<64> ap_const_lv64_4014000000000000;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<64> ap_const_lv64_4000000000000000;
    static const sc_lv<64> ap_const_lv64_41EFFFFFFFE00000;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_5D;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_57;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<14> ap_const_lv14_2710;
    static const sc_lv<14> ap_const_lv14_1;
    static const sc_lv<12> ap_const_lv12_C01;
    static const sc_lv<11> ap_const_lv11_3FF;
    static const sc_lv<32> ap_const_lv32_54;
    static const sc_lv<25> ap_const_lv25_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<9> ap_const_lv9_2;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<5> ap_const_lv5_5;
    static const sc_lv<32> ap_const_lv32_82;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_add_ln37_fu_1036_p2();
    void thread_add_ln502_1_fu_829_p2();
    void thread_add_ln502_2_fu_930_p2();
    void thread_add_ln502_fu_657_p2();
    void thread_add_ln50_fu_1170_p2();
    void thread_add_ln51_fu_1129_p2();
    void thread_and_ln58_1_fu_1289_p2();
    void thread_and_ln58_fu_1283_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state112();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state125();
    void thread_ap_CS_fsm_state126();
    void thread_ap_CS_fsm_state127();
    void thread_ap_CS_fsm_state128();
    void thread_ap_CS_fsm_state129();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state130();
    void thread_ap_CS_fsm_state133();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state49();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state50();
    void thread_ap_CS_fsm_state51();
    void thread_ap_CS_fsm_state52();
    void thread_ap_CS_fsm_state53();
    void thread_ap_CS_fsm_state54();
    void thread_ap_CS_fsm_state55();
    void thread_ap_CS_fsm_state56();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state61();
    void thread_ap_CS_fsm_state62();
    void thread_ap_CS_fsm_state63();
    void thread_ap_CS_fsm_state64();
    void thread_ap_CS_fsm_state69();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state70();
    void thread_ap_CS_fsm_state72();
    void thread_ap_CS_fsm_state73();
    void thread_ap_CS_fsm_state74();
    void thread_ap_CS_fsm_state77();
    void thread_ap_CS_fsm_state78();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state82();
    void thread_ap_CS_fsm_state83();
    void thread_ap_CS_fsm_state87();
    void thread_ap_CS_fsm_state88();
    void thread_ap_CS_fsm_state89();
    void thread_ap_CS_fsm_state9();
    void thread_ap_CS_fsm_state94();
    void thread_ap_CS_fsm_state95();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_state131_pp1_stage0_iter0();
    void thread_ap_block_state132_pp1_stage0_iter1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_condition_pp1_exit_iter0_state131();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_phi_mux_i4_0_phi_fu_469_p4();
    void thread_ap_ready();
    void thread_bitcast_ln58_1_fu_1234_p1();
    void thread_bitcast_ln58_fu_1217_p1();
    void thread_coef_list_0_address0();
    void thread_coef_list_0_address1();
    void thread_coef_list_0_ce0();
    void thread_coef_list_0_ce1();
    void thread_coef_list_1_address0();
    void thread_coef_list_1_address1();
    void thread_coef_list_1_ce0();
    void thread_coef_list_1_ce1();
    void thread_current_val_0_address0();
    void thread_current_val_0_address1();
    void thread_current_val_0_ce0();
    void thread_current_val_0_ce1();
    void thread_current_val_0_we0();
    void thread_current_val_0_we1();
    void thread_current_val_1_address0();
    void thread_current_val_1_address1();
    void thread_current_val_1_ce0();
    void thread_current_val_1_ce1();
    void thread_current_val_1_we0();
    void thread_current_val_1_we1();
    void thread_current_val_cash_fu_1079_p3();
    void thread_empty_42_fu_1158_p1();
    void thread_final_val_address0();
    void thread_final_val_ce0();
    void thread_final_val_d0();
    void thread_final_val_we0();
    void thread_grp_Galois_LFSR_32_33_hw_fu_477_ap_start();
    void thread_grp_Galois_LFSR_32_33_hw_fu_477_input_r();
    void thread_grp_fu_488_p0();
    void thread_grp_fu_488_p1();
    void thread_grp_fu_493_p0();
    void thread_grp_fu_493_p1();
    void thread_grp_fu_497_p0();
    void thread_grp_fu_497_p1();
    void thread_grp_fu_506_p0();
    void thread_grp_fu_519_p0();
    void thread_grp_fu_519_p1();
    void thread_grp_fu_530_p0();
    void thread_grp_fu_540_p0();
    void thread_i_1_fu_1306_p2();
    void thread_i_2_fu_1047_p2();
    void thread_i_3_fu_630_p2();
    void thread_i_fu_583_p2();
    void thread_icmp_ln17_fu_577_p2();
    void thread_icmp_ln18_fu_608_p2();
    void thread_icmp_ln22_fu_624_p2();
    void thread_icmp_ln36_fu_1015_p2();
    void thread_icmp_ln37_fu_807_p2();
    void thread_icmp_ln47_fu_1041_p2();
    void thread_icmp_ln48_fu_1073_p2();
    void thread_icmp_ln50_fu_1097_p2();
    void thread_icmp_ln51_fu_1144_p2();
    void thread_icmp_ln58_1_fu_1257_p2();
    void thread_icmp_ln58_2_fu_1263_p2();
    void thread_icmp_ln58_3_fu_1269_p2();
    void thread_icmp_ln58_fu_1251_p2();
    void thread_icmp_ln64_fu_1300_p2();
    void thread_icmp_ln66_fu_1337_p2();
    void thread_init_val_address0();
    void thread_init_val_ce0();
    void thread_isNeg_1_fu_835_p3();
    void thread_isNeg_2_fu_936_p3();
    void thread_isNeg_fu_663_p3();
    void thread_mantissa_V_1_fu_813_p4();
    void thread_mantissa_V_2_fu_914_p4();
    void thread_mantissa_V_fu_688_p4();
    void thread_new_val_addr_1_gep_fu_243_p3();
    void thread_new_val_addr_3_gep_fu_350_p3();
    void thread_new_val_address0();
    void thread_new_val_ce0();
    void thread_new_val_d0();
    void thread_new_val_we0();
    void thread_or_ln50_fu_1181_p2();
    void thread_or_ln51_fu_1113_p2();
    void thread_or_ln58_1_fu_1279_p2();
    void thread_or_ln58_fu_1275_p2();
    void thread_p_Val2_5_fu_745_p1();
    void thread_p_Val2_9_fu_763_p1();
    void thread_p_Val2_s_fu_636_p1();
    void thread_r_V_1_fu_722_p2();
    void thread_r_V_3_fu_872_p2();
    void thread_r_V_4_fu_878_p2();
    void thread_r_V_5_fu_973_p2();
    void thread_r_V_6_fu_979_p2();
    void thread_r_V_7_fu_728_p3();
    void thread_r_V_fu_712_p2();
    void thread_rnd_input_fu_571_p2();
    void thread_select_ln37_fu_1024_p3();
    void thread_select_ln48_1_fu_1206_p3();
    void thread_select_ln48_fu_1199_p3();
    void thread_select_ln51_1_fu_1162_p3();
    void thread_select_ln51_fu_1150_p3();
    void thread_sext_ln1311_1_fu_701_p1();
    void thread_sext_ln1311_2_fu_848_p1();
    void thread_sext_ln1311_3_fu_860_p1();
    void thread_sext_ln1311_4_fu_949_p1();
    void thread_sext_ln1311_5_fu_961_p1();
    void thread_sext_ln1311_fu_676_p1();
    void thread_sub_ln1311_1_fu_843_p2();
    void thread_sub_ln1311_2_fu_944_p2();
    void thread_sub_ln1311_fu_671_p2();
    void thread_sub_ln40_fu_1031_p2();
    void thread_tmp_11_fu_1220_p4();
    void thread_tmp_13_fu_1237_p4();
    void thread_tmp_19_fu_598_p4();
    void thread_tmp_20_fu_896_p4();
    void thread_tmp_21_fu_997_p4();
    void thread_tmp_22_fu_1086_p3();
    void thread_tmp_23_fu_1186_p3();
    void thread_tmp_24_fu_884_p3();
    void thread_tmp_28_fu_985_p3();
    void thread_tmp_29_fu_1327_p4();
    void thread_tmp_30_fu_1063_p4();
    void thread_tmp_31_fu_1134_p4();
    void thread_tmp_V_1_fu_650_p1();
    void thread_tmp_V_3_fu_759_p1();
    void thread_tmp_V_5_fu_777_p1();
    void thread_trunc_ln18_fu_594_p1();
    void thread_trunc_ln1_fu_791_p4();
    void thread_trunc_ln37_1_fu_781_p4();
    void thread_trunc_ln48_fu_1053_p1();
    void thread_trunc_ln51_fu_1103_p1();
    void thread_trunc_ln58_1_fu_1247_p1();
    void thread_trunc_ln58_fu_1230_p1();
    void thread_trunc_ln66_fu_1312_p1();
    void thread_ush_1_fu_852_p3();
    void thread_ush_2_fu_953_p3();
    void thread_ush_fu_680_p3();
    void thread_val_V_1_fu_906_p3();
    void thread_val_V_2_fu_1007_p3();
    void thread_zext_ln1285_1_fu_868_p1();
    void thread_zext_ln1285_2_fu_969_p1();
    void thread_zext_ln1285_fu_708_p1();
    void thread_zext_ln1287_1_fu_864_p1();
    void thread_zext_ln1287_2_fu_965_p1();
    void thread_zext_ln1287_3_fu_718_p1();
    void thread_zext_ln1287_fu_704_p1();
    void thread_zext_ln18_1_fu_614_p1();
    void thread_zext_ln18_fu_589_p1();
    void thread_zext_ln37_1_fu_801_p1();
    void thread_zext_ln37_fu_1021_p1();
    void thread_zext_ln48_1_fu_1093_p1();
    void thread_zext_ln48_fu_1057_p1();
    void thread_zext_ln502_1_fu_826_p1();
    void thread_zext_ln502_2_fu_927_p1();
    void thread_zext_ln502_fu_654_p1();
    void thread_zext_ln51_1_fu_1107_p1();
    void thread_zext_ln51_2_fu_1176_p1();
    void thread_zext_ln51_3_fu_1119_p1();
    void thread_zext_ln51_4_fu_1193_p1();
    void thread_zext_ln51_fu_1125_p1();
    void thread_zext_ln662_1_fu_993_p1();
    void thread_zext_ln662_fu_892_p1();
    void thread_zext_ln66_1_fu_1316_p1();
    void thread_zext_ln66_fu_1322_p1();
    void thread_zext_ln682_1_fu_822_p1();
    void thread_zext_ln682_2_fu_923_p1();
    void thread_zext_ln682_fu_697_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
