set moduleName QIO_accel_hw_int_s
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {QIO_accel_hw<int>}
set C_modelType { void 0 }
set C_modelArgList {
	{ init_val int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ coef_list_0 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_1 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_2 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_3 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_4 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_5 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_6 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_7 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_8 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_9 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_10 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_11 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_12 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_13 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_14 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ coef_list_15 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ seed int 32 regular  }
	{ final_val int 32 regular {array 256 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "init_val", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "seed", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "final_val", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ init_val_address0 sc_out sc_lv 8 signal 0 } 
	{ init_val_ce0 sc_out sc_logic 1 signal 0 } 
	{ init_val_q0 sc_in sc_lv 32 signal 0 } 
	{ coef_list_0_address0 sc_out sc_lv 12 signal 1 } 
	{ coef_list_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ coef_list_0_q0 sc_in sc_lv 32 signal 1 } 
	{ coef_list_0_address1 sc_out sc_lv 12 signal 1 } 
	{ coef_list_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ coef_list_0_q1 sc_in sc_lv 32 signal 1 } 
	{ coef_list_1_address0 sc_out sc_lv 12 signal 2 } 
	{ coef_list_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ coef_list_1_q0 sc_in sc_lv 32 signal 2 } 
	{ coef_list_1_address1 sc_out sc_lv 12 signal 2 } 
	{ coef_list_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ coef_list_1_q1 sc_in sc_lv 32 signal 2 } 
	{ coef_list_2_address0 sc_out sc_lv 12 signal 3 } 
	{ coef_list_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ coef_list_2_q0 sc_in sc_lv 32 signal 3 } 
	{ coef_list_2_address1 sc_out sc_lv 12 signal 3 } 
	{ coef_list_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ coef_list_2_q1 sc_in sc_lv 32 signal 3 } 
	{ coef_list_3_address0 sc_out sc_lv 12 signal 4 } 
	{ coef_list_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ coef_list_3_q0 sc_in sc_lv 32 signal 4 } 
	{ coef_list_3_address1 sc_out sc_lv 12 signal 4 } 
	{ coef_list_3_ce1 sc_out sc_logic 1 signal 4 } 
	{ coef_list_3_q1 sc_in sc_lv 32 signal 4 } 
	{ coef_list_4_address0 sc_out sc_lv 12 signal 5 } 
	{ coef_list_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ coef_list_4_q0 sc_in sc_lv 32 signal 5 } 
	{ coef_list_4_address1 sc_out sc_lv 12 signal 5 } 
	{ coef_list_4_ce1 sc_out sc_logic 1 signal 5 } 
	{ coef_list_4_q1 sc_in sc_lv 32 signal 5 } 
	{ coef_list_5_address0 sc_out sc_lv 12 signal 6 } 
	{ coef_list_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ coef_list_5_q0 sc_in sc_lv 32 signal 6 } 
	{ coef_list_5_address1 sc_out sc_lv 12 signal 6 } 
	{ coef_list_5_ce1 sc_out sc_logic 1 signal 6 } 
	{ coef_list_5_q1 sc_in sc_lv 32 signal 6 } 
	{ coef_list_6_address0 sc_out sc_lv 12 signal 7 } 
	{ coef_list_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ coef_list_6_q0 sc_in sc_lv 32 signal 7 } 
	{ coef_list_6_address1 sc_out sc_lv 12 signal 7 } 
	{ coef_list_6_ce1 sc_out sc_logic 1 signal 7 } 
	{ coef_list_6_q1 sc_in sc_lv 32 signal 7 } 
	{ coef_list_7_address0 sc_out sc_lv 12 signal 8 } 
	{ coef_list_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ coef_list_7_q0 sc_in sc_lv 32 signal 8 } 
	{ coef_list_7_address1 sc_out sc_lv 12 signal 8 } 
	{ coef_list_7_ce1 sc_out sc_logic 1 signal 8 } 
	{ coef_list_7_q1 sc_in sc_lv 32 signal 8 } 
	{ coef_list_8_address0 sc_out sc_lv 12 signal 9 } 
	{ coef_list_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ coef_list_8_q0 sc_in sc_lv 32 signal 9 } 
	{ coef_list_8_address1 sc_out sc_lv 12 signal 9 } 
	{ coef_list_8_ce1 sc_out sc_logic 1 signal 9 } 
	{ coef_list_8_q1 sc_in sc_lv 32 signal 9 } 
	{ coef_list_9_address0 sc_out sc_lv 12 signal 10 } 
	{ coef_list_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ coef_list_9_q0 sc_in sc_lv 32 signal 10 } 
	{ coef_list_9_address1 sc_out sc_lv 12 signal 10 } 
	{ coef_list_9_ce1 sc_out sc_logic 1 signal 10 } 
	{ coef_list_9_q1 sc_in sc_lv 32 signal 10 } 
	{ coef_list_10_address0 sc_out sc_lv 12 signal 11 } 
	{ coef_list_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ coef_list_10_q0 sc_in sc_lv 32 signal 11 } 
	{ coef_list_10_address1 sc_out sc_lv 12 signal 11 } 
	{ coef_list_10_ce1 sc_out sc_logic 1 signal 11 } 
	{ coef_list_10_q1 sc_in sc_lv 32 signal 11 } 
	{ coef_list_11_address0 sc_out sc_lv 12 signal 12 } 
	{ coef_list_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ coef_list_11_q0 sc_in sc_lv 32 signal 12 } 
	{ coef_list_11_address1 sc_out sc_lv 12 signal 12 } 
	{ coef_list_11_ce1 sc_out sc_logic 1 signal 12 } 
	{ coef_list_11_q1 sc_in sc_lv 32 signal 12 } 
	{ coef_list_12_address0 sc_out sc_lv 12 signal 13 } 
	{ coef_list_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ coef_list_12_q0 sc_in sc_lv 32 signal 13 } 
	{ coef_list_12_address1 sc_out sc_lv 12 signal 13 } 
	{ coef_list_12_ce1 sc_out sc_logic 1 signal 13 } 
	{ coef_list_12_q1 sc_in sc_lv 32 signal 13 } 
	{ coef_list_13_address0 sc_out sc_lv 12 signal 14 } 
	{ coef_list_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ coef_list_13_q0 sc_in sc_lv 32 signal 14 } 
	{ coef_list_13_address1 sc_out sc_lv 12 signal 14 } 
	{ coef_list_13_ce1 sc_out sc_logic 1 signal 14 } 
	{ coef_list_13_q1 sc_in sc_lv 32 signal 14 } 
	{ coef_list_14_address0 sc_out sc_lv 12 signal 15 } 
	{ coef_list_14_ce0 sc_out sc_logic 1 signal 15 } 
	{ coef_list_14_q0 sc_in sc_lv 32 signal 15 } 
	{ coef_list_14_address1 sc_out sc_lv 12 signal 15 } 
	{ coef_list_14_ce1 sc_out sc_logic 1 signal 15 } 
	{ coef_list_14_q1 sc_in sc_lv 32 signal 15 } 
	{ coef_list_15_address0 sc_out sc_lv 12 signal 16 } 
	{ coef_list_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ coef_list_15_q0 sc_in sc_lv 32 signal 16 } 
	{ coef_list_15_address1 sc_out sc_lv 12 signal 16 } 
	{ coef_list_15_ce1 sc_out sc_logic 1 signal 16 } 
	{ coef_list_15_q1 sc_in sc_lv 32 signal 16 } 
	{ seed sc_in sc_lv 32 signal 17 } 
	{ final_val_address0 sc_out sc_lv 8 signal 18 } 
	{ final_val_ce0 sc_out sc_logic 1 signal 18 } 
	{ final_val_we0 sc_out sc_logic 1 signal 18 } 
	{ final_val_d0 sc_out sc_lv 32 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "init_val_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "init_val", "role": "address0" }} , 
 	{ "name": "init_val_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_val", "role": "ce0" }} , 
 	{ "name": "init_val_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "init_val", "role": "q0" }} , 
 	{ "name": "coef_list_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_0", "role": "address0" }} , 
 	{ "name": "coef_list_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_0", "role": "ce0" }} , 
 	{ "name": "coef_list_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_0", "role": "q0" }} , 
 	{ "name": "coef_list_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_0", "role": "address1" }} , 
 	{ "name": "coef_list_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_0", "role": "ce1" }} , 
 	{ "name": "coef_list_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_0", "role": "q1" }} , 
 	{ "name": "coef_list_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_1", "role": "address0" }} , 
 	{ "name": "coef_list_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_1", "role": "ce0" }} , 
 	{ "name": "coef_list_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_1", "role": "q0" }} , 
 	{ "name": "coef_list_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_1", "role": "address1" }} , 
 	{ "name": "coef_list_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_1", "role": "ce1" }} , 
 	{ "name": "coef_list_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_1", "role": "q1" }} , 
 	{ "name": "coef_list_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_2", "role": "address0" }} , 
 	{ "name": "coef_list_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_2", "role": "ce0" }} , 
 	{ "name": "coef_list_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_2", "role": "q0" }} , 
 	{ "name": "coef_list_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_2", "role": "address1" }} , 
 	{ "name": "coef_list_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_2", "role": "ce1" }} , 
 	{ "name": "coef_list_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_2", "role": "q1" }} , 
 	{ "name": "coef_list_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_3", "role": "address0" }} , 
 	{ "name": "coef_list_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_3", "role": "ce0" }} , 
 	{ "name": "coef_list_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_3", "role": "q0" }} , 
 	{ "name": "coef_list_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_3", "role": "address1" }} , 
 	{ "name": "coef_list_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_3", "role": "ce1" }} , 
 	{ "name": "coef_list_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_3", "role": "q1" }} , 
 	{ "name": "coef_list_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_4", "role": "address0" }} , 
 	{ "name": "coef_list_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_4", "role": "ce0" }} , 
 	{ "name": "coef_list_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_4", "role": "q0" }} , 
 	{ "name": "coef_list_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_4", "role": "address1" }} , 
 	{ "name": "coef_list_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_4", "role": "ce1" }} , 
 	{ "name": "coef_list_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_4", "role": "q1" }} , 
 	{ "name": "coef_list_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_5", "role": "address0" }} , 
 	{ "name": "coef_list_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_5", "role": "ce0" }} , 
 	{ "name": "coef_list_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_5", "role": "q0" }} , 
 	{ "name": "coef_list_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_5", "role": "address1" }} , 
 	{ "name": "coef_list_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_5", "role": "ce1" }} , 
 	{ "name": "coef_list_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_5", "role": "q1" }} , 
 	{ "name": "coef_list_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_6", "role": "address0" }} , 
 	{ "name": "coef_list_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_6", "role": "ce0" }} , 
 	{ "name": "coef_list_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_6", "role": "q0" }} , 
 	{ "name": "coef_list_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_6", "role": "address1" }} , 
 	{ "name": "coef_list_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_6", "role": "ce1" }} , 
 	{ "name": "coef_list_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_6", "role": "q1" }} , 
 	{ "name": "coef_list_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_7", "role": "address0" }} , 
 	{ "name": "coef_list_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_7", "role": "ce0" }} , 
 	{ "name": "coef_list_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_7", "role": "q0" }} , 
 	{ "name": "coef_list_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_7", "role": "address1" }} , 
 	{ "name": "coef_list_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_7", "role": "ce1" }} , 
 	{ "name": "coef_list_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_7", "role": "q1" }} , 
 	{ "name": "coef_list_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_8", "role": "address0" }} , 
 	{ "name": "coef_list_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_8", "role": "ce0" }} , 
 	{ "name": "coef_list_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_8", "role": "q0" }} , 
 	{ "name": "coef_list_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_8", "role": "address1" }} , 
 	{ "name": "coef_list_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_8", "role": "ce1" }} , 
 	{ "name": "coef_list_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_8", "role": "q1" }} , 
 	{ "name": "coef_list_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_9", "role": "address0" }} , 
 	{ "name": "coef_list_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_9", "role": "ce0" }} , 
 	{ "name": "coef_list_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_9", "role": "q0" }} , 
 	{ "name": "coef_list_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_9", "role": "address1" }} , 
 	{ "name": "coef_list_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_9", "role": "ce1" }} , 
 	{ "name": "coef_list_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_9", "role": "q1" }} , 
 	{ "name": "coef_list_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_10", "role": "address0" }} , 
 	{ "name": "coef_list_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_10", "role": "ce0" }} , 
 	{ "name": "coef_list_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_10", "role": "q0" }} , 
 	{ "name": "coef_list_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_10", "role": "address1" }} , 
 	{ "name": "coef_list_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_10", "role": "ce1" }} , 
 	{ "name": "coef_list_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_10", "role": "q1" }} , 
 	{ "name": "coef_list_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_11", "role": "address0" }} , 
 	{ "name": "coef_list_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_11", "role": "ce0" }} , 
 	{ "name": "coef_list_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_11", "role": "q0" }} , 
 	{ "name": "coef_list_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_11", "role": "address1" }} , 
 	{ "name": "coef_list_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_11", "role": "ce1" }} , 
 	{ "name": "coef_list_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_11", "role": "q1" }} , 
 	{ "name": "coef_list_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_12", "role": "address0" }} , 
 	{ "name": "coef_list_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_12", "role": "ce0" }} , 
 	{ "name": "coef_list_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_12", "role": "q0" }} , 
 	{ "name": "coef_list_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_12", "role": "address1" }} , 
 	{ "name": "coef_list_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_12", "role": "ce1" }} , 
 	{ "name": "coef_list_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_12", "role": "q1" }} , 
 	{ "name": "coef_list_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_13", "role": "address0" }} , 
 	{ "name": "coef_list_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_13", "role": "ce0" }} , 
 	{ "name": "coef_list_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_13", "role": "q0" }} , 
 	{ "name": "coef_list_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_13", "role": "address1" }} , 
 	{ "name": "coef_list_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_13", "role": "ce1" }} , 
 	{ "name": "coef_list_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_13", "role": "q1" }} , 
 	{ "name": "coef_list_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_14", "role": "address0" }} , 
 	{ "name": "coef_list_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_14", "role": "ce0" }} , 
 	{ "name": "coef_list_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_14", "role": "q0" }} , 
 	{ "name": "coef_list_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_14", "role": "address1" }} , 
 	{ "name": "coef_list_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_14", "role": "ce1" }} , 
 	{ "name": "coef_list_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_14", "role": "q1" }} , 
 	{ "name": "coef_list_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_15", "role": "address0" }} , 
 	{ "name": "coef_list_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_15", "role": "ce0" }} , 
 	{ "name": "coef_list_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_15", "role": "q0" }} , 
 	{ "name": "coef_list_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "coef_list_15", "role": "address1" }} , 
 	{ "name": "coef_list_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_15", "role": "ce1" }} , 
 	{ "name": "coef_list_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_15", "role": "q1" }} , 
 	{ "name": "seed", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "seed", "role": "default" }} , 
 	{ "name": "final_val_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "final_val", "role": "address0" }} , 
 	{ "name": "final_val_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_val", "role": "ce0" }} , 
 	{ "name": "final_val_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_val", "role": "we0" }} , 
 	{ "name": "final_val_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "final_val", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81"],
		"CDFG" : "QIO_accel_hw_int_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "387429517", "EstimateLatencyMax" : "387430517",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "init_val", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "seed", "Type" : "None", "Direction" : "I"},
			{"Name" : "final_val", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "guard_variable_for_v", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_Galois_LFSR_32_33_hw_fu_5126", "Port" : "guard_variable_for_v"}]},
			{"Name" : "lfsr33_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_Galois_LFSR_32_33_hw_fu_5126", "Port" : "lfsr33_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.new_val_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Galois_LFSR_32_33_hw_fu_5126", "Parent" : "0",
		"CDFG" : "Galois_LFSR_32_33_hw",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "seed_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "guard_variable_for_v", "Type" : "None", "Direction" : "I"},
			{"Name" : "lfsr33_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fadd_32sc4_U3", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U4", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U5", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U6", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U7", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U8", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U9", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U10", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U11", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U12", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U13", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U14", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U15", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U16", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U17", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U18", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32tde_U19", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fdiv_32udo_U20", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U21", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U22", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U23", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U24", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U25", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U26", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U27", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U28", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U29", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U30", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U31", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U32", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U33", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U34", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U35", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_vdy_U36", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fptruncwdI_U37", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fcmp_32xdS_U38", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_dmul_64yd2_U39", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_dmul_64yd2_U40", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_ddiv_64zec_U41", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_ddiv_64zec_U42", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_uitodp_Aem_U43", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_uitodp_Aem_U44", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U45", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U46", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U47", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U48", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U49", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U50", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U51", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U52", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U53", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U54", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U55", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U56", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U57", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U58", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U59", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U60", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U61", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U62", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U63", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U64", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_163Bew_U65", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QIO_accel_hw_int_s {
		init_val {Type I LastRead 1 FirstWrite -1}
		coef_list_0 {Type I LastRead 84 FirstWrite -1}
		coef_list_1 {Type I LastRead 84 FirstWrite -1}
		coef_list_2 {Type I LastRead 84 FirstWrite -1}
		coef_list_3 {Type I LastRead 84 FirstWrite -1}
		coef_list_4 {Type I LastRead 84 FirstWrite -1}
		coef_list_5 {Type I LastRead 84 FirstWrite -1}
		coef_list_6 {Type I LastRead 84 FirstWrite -1}
		coef_list_7 {Type I LastRead 84 FirstWrite -1}
		coef_list_8 {Type I LastRead 84 FirstWrite -1}
		coef_list_9 {Type I LastRead 84 FirstWrite -1}
		coef_list_10 {Type I LastRead 84 FirstWrite -1}
		coef_list_11 {Type I LastRead 84 FirstWrite -1}
		coef_list_12 {Type I LastRead 84 FirstWrite -1}
		coef_list_13 {Type I LastRead 84 FirstWrite -1}
		coef_list_14 {Type I LastRead 84 FirstWrite -1}
		coef_list_15 {Type I LastRead 84 FirstWrite -1}
		seed {Type I LastRead 0 FirstWrite -1}
		final_val {Type O LastRead -1 FirstWrite 5}
		guard_variable_for_v {Type I LastRead -1 FirstWrite -1}
		lfsr33_V {Type IO LastRead -1 FirstWrite -1}}
	Galois_LFSR_32_33_hw {
		input_r {Type I LastRead 0 FirstWrite -1}
		seed_V {Type I LastRead 0 FirstWrite -1}
		guard_variable_for_v {Type I LastRead -1 FirstWrite -1}
		lfsr33_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "387429517", "Max" : "387430517"}
	, {"Name" : "Interval", "Min" : "387429517", "Max" : "387430517"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	init_val { ap_memory {  { init_val_address0 mem_address 1 8 }  { init_val_ce0 mem_ce 1 1 }  { init_val_q0 mem_dout 0 32 } } }
	coef_list_0 { ap_memory {  { coef_list_0_address0 mem_address 1 12 }  { coef_list_0_ce0 mem_ce 1 1 }  { coef_list_0_q0 mem_dout 0 32 }  { coef_list_0_address1 MemPortADDR2 1 12 }  { coef_list_0_ce1 MemPortCE2 1 1 }  { coef_list_0_q1 MemPortDOUT2 0 32 } } }
	coef_list_1 { ap_memory {  { coef_list_1_address0 mem_address 1 12 }  { coef_list_1_ce0 mem_ce 1 1 }  { coef_list_1_q0 mem_dout 0 32 }  { coef_list_1_address1 MemPortADDR2 1 12 }  { coef_list_1_ce1 MemPortCE2 1 1 }  { coef_list_1_q1 MemPortDOUT2 0 32 } } }
	coef_list_2 { ap_memory {  { coef_list_2_address0 mem_address 1 12 }  { coef_list_2_ce0 mem_ce 1 1 }  { coef_list_2_q0 mem_dout 0 32 }  { coef_list_2_address1 MemPortADDR2 1 12 }  { coef_list_2_ce1 MemPortCE2 1 1 }  { coef_list_2_q1 MemPortDOUT2 0 32 } } }
	coef_list_3 { ap_memory {  { coef_list_3_address0 mem_address 1 12 }  { coef_list_3_ce0 mem_ce 1 1 }  { coef_list_3_q0 mem_dout 0 32 }  { coef_list_3_address1 MemPortADDR2 1 12 }  { coef_list_3_ce1 MemPortCE2 1 1 }  { coef_list_3_q1 MemPortDOUT2 0 32 } } }
	coef_list_4 { ap_memory {  { coef_list_4_address0 mem_address 1 12 }  { coef_list_4_ce0 mem_ce 1 1 }  { coef_list_4_q0 mem_dout 0 32 }  { coef_list_4_address1 MemPortADDR2 1 12 }  { coef_list_4_ce1 MemPortCE2 1 1 }  { coef_list_4_q1 MemPortDOUT2 0 32 } } }
	coef_list_5 { ap_memory {  { coef_list_5_address0 mem_address 1 12 }  { coef_list_5_ce0 mem_ce 1 1 }  { coef_list_5_q0 mem_dout 0 32 }  { coef_list_5_address1 MemPortADDR2 1 12 }  { coef_list_5_ce1 MemPortCE2 1 1 }  { coef_list_5_q1 MemPortDOUT2 0 32 } } }
	coef_list_6 { ap_memory {  { coef_list_6_address0 mem_address 1 12 }  { coef_list_6_ce0 mem_ce 1 1 }  { coef_list_6_q0 mem_dout 0 32 }  { coef_list_6_address1 MemPortADDR2 1 12 }  { coef_list_6_ce1 MemPortCE2 1 1 }  { coef_list_6_q1 MemPortDOUT2 0 32 } } }
	coef_list_7 { ap_memory {  { coef_list_7_address0 mem_address 1 12 }  { coef_list_7_ce0 mem_ce 1 1 }  { coef_list_7_q0 mem_dout 0 32 }  { coef_list_7_address1 MemPortADDR2 1 12 }  { coef_list_7_ce1 MemPortCE2 1 1 }  { coef_list_7_q1 MemPortDOUT2 0 32 } } }
	coef_list_8 { ap_memory {  { coef_list_8_address0 mem_address 1 12 }  { coef_list_8_ce0 mem_ce 1 1 }  { coef_list_8_q0 mem_dout 0 32 }  { coef_list_8_address1 MemPortADDR2 1 12 }  { coef_list_8_ce1 MemPortCE2 1 1 }  { coef_list_8_q1 MemPortDOUT2 0 32 } } }
	coef_list_9 { ap_memory {  { coef_list_9_address0 mem_address 1 12 }  { coef_list_9_ce0 mem_ce 1 1 }  { coef_list_9_q0 mem_dout 0 32 }  { coef_list_9_address1 MemPortADDR2 1 12 }  { coef_list_9_ce1 MemPortCE2 1 1 }  { coef_list_9_q1 MemPortDOUT2 0 32 } } }
	coef_list_10 { ap_memory {  { coef_list_10_address0 mem_address 1 12 }  { coef_list_10_ce0 mem_ce 1 1 }  { coef_list_10_q0 mem_dout 0 32 }  { coef_list_10_address1 MemPortADDR2 1 12 }  { coef_list_10_ce1 MemPortCE2 1 1 }  { coef_list_10_q1 MemPortDOUT2 0 32 } } }
	coef_list_11 { ap_memory {  { coef_list_11_address0 mem_address 1 12 }  { coef_list_11_ce0 mem_ce 1 1 }  { coef_list_11_q0 mem_dout 0 32 }  { coef_list_11_address1 MemPortADDR2 1 12 }  { coef_list_11_ce1 MemPortCE2 1 1 }  { coef_list_11_q1 MemPortDOUT2 0 32 } } }
	coef_list_12 { ap_memory {  { coef_list_12_address0 mem_address 1 12 }  { coef_list_12_ce0 mem_ce 1 1 }  { coef_list_12_q0 mem_dout 0 32 }  { coef_list_12_address1 MemPortADDR2 1 12 }  { coef_list_12_ce1 MemPortCE2 1 1 }  { coef_list_12_q1 MemPortDOUT2 0 32 } } }
	coef_list_13 { ap_memory {  { coef_list_13_address0 mem_address 1 12 }  { coef_list_13_ce0 mem_ce 1 1 }  { coef_list_13_q0 mem_dout 0 32 }  { coef_list_13_address1 MemPortADDR2 1 12 }  { coef_list_13_ce1 MemPortCE2 1 1 }  { coef_list_13_q1 MemPortDOUT2 0 32 } } }
	coef_list_14 { ap_memory {  { coef_list_14_address0 mem_address 1 12 }  { coef_list_14_ce0 mem_ce 1 1 }  { coef_list_14_q0 mem_dout 0 32 }  { coef_list_14_address1 MemPortADDR2 1 12 }  { coef_list_14_ce1 MemPortCE2 1 1 }  { coef_list_14_q1 MemPortDOUT2 0 32 } } }
	coef_list_15 { ap_memory {  { coef_list_15_address0 mem_address 1 12 }  { coef_list_15_ce0 mem_ce 1 1 }  { coef_list_15_q0 mem_dout 0 32 }  { coef_list_15_address1 MemPortADDR2 1 12 }  { coef_list_15_ce1 MemPortCE2 1 1 }  { coef_list_15_q1 MemPortDOUT2 0 32 } } }
	seed { ap_none {  { seed in_data 0 32 } } }
	final_val { ap_memory {  { final_val_address0 mem_address 1 8 }  { final_val_ce0 mem_ce 1 1 }  { final_val_we0 mem_we 1 1 }  { final_val_d0 mem_din 1 32 } } }
}
