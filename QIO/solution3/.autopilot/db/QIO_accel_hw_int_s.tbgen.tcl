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
	{ coef_list_0 float 32 regular {array 16384 { 1 1 } 1 1 }  }
	{ coef_list_1 float 32 regular {array 16384 { 1 1 } 1 1 }  }
	{ coef_list_2 float 32 regular {array 16384 { 1 1 } 1 1 }  }
	{ coef_list_3 float 32 regular {array 16384 { 1 1 } 1 1 }  }
	{ seed int 32 regular  }
	{ final_val int 32 regular {array 256 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "init_val", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "seed", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "final_val", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
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
	{ coef_list_0_address0 sc_out sc_lv 14 signal 1 } 
	{ coef_list_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ coef_list_0_q0 sc_in sc_lv 32 signal 1 } 
	{ coef_list_0_address1 sc_out sc_lv 14 signal 1 } 
	{ coef_list_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ coef_list_0_q1 sc_in sc_lv 32 signal 1 } 
	{ coef_list_1_address0 sc_out sc_lv 14 signal 2 } 
	{ coef_list_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ coef_list_1_q0 sc_in sc_lv 32 signal 2 } 
	{ coef_list_1_address1 sc_out sc_lv 14 signal 2 } 
	{ coef_list_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ coef_list_1_q1 sc_in sc_lv 32 signal 2 } 
	{ coef_list_2_address0 sc_out sc_lv 14 signal 3 } 
	{ coef_list_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ coef_list_2_q0 sc_in sc_lv 32 signal 3 } 
	{ coef_list_2_address1 sc_out sc_lv 14 signal 3 } 
	{ coef_list_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ coef_list_2_q1 sc_in sc_lv 32 signal 3 } 
	{ coef_list_3_address0 sc_out sc_lv 14 signal 4 } 
	{ coef_list_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ coef_list_3_q0 sc_in sc_lv 32 signal 4 } 
	{ coef_list_3_address1 sc_out sc_lv 14 signal 4 } 
	{ coef_list_3_ce1 sc_out sc_logic 1 signal 4 } 
	{ coef_list_3_q1 sc_in sc_lv 32 signal 4 } 
	{ seed sc_in sc_lv 32 signal 5 } 
	{ final_val_address0 sc_out sc_lv 8 signal 6 } 
	{ final_val_ce0 sc_out sc_logic 1 signal 6 } 
	{ final_val_we0 sc_out sc_logic 1 signal 6 } 
	{ final_val_d0 sc_out sc_lv 32 signal 6 } 
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
 	{ "name": "coef_list_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "coef_list_0", "role": "address0" }} , 
 	{ "name": "coef_list_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_0", "role": "ce0" }} , 
 	{ "name": "coef_list_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_0", "role": "q0" }} , 
 	{ "name": "coef_list_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "coef_list_0", "role": "address1" }} , 
 	{ "name": "coef_list_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_0", "role": "ce1" }} , 
 	{ "name": "coef_list_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_0", "role": "q1" }} , 
 	{ "name": "coef_list_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "coef_list_1", "role": "address0" }} , 
 	{ "name": "coef_list_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_1", "role": "ce0" }} , 
 	{ "name": "coef_list_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_1", "role": "q0" }} , 
 	{ "name": "coef_list_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "coef_list_1", "role": "address1" }} , 
 	{ "name": "coef_list_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_1", "role": "ce1" }} , 
 	{ "name": "coef_list_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_1", "role": "q1" }} , 
 	{ "name": "coef_list_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "coef_list_2", "role": "address0" }} , 
 	{ "name": "coef_list_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_2", "role": "ce0" }} , 
 	{ "name": "coef_list_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_2", "role": "q0" }} , 
 	{ "name": "coef_list_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "coef_list_2", "role": "address1" }} , 
 	{ "name": "coef_list_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_2", "role": "ce1" }} , 
 	{ "name": "coef_list_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_2", "role": "q1" }} , 
 	{ "name": "coef_list_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "coef_list_3", "role": "address0" }} , 
 	{ "name": "coef_list_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_3", "role": "ce0" }} , 
 	{ "name": "coef_list_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_3", "role": "q0" }} , 
 	{ "name": "coef_list_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "coef_list_3", "role": "address1" }} , 
 	{ "name": "coef_list_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list_3", "role": "ce1" }} , 
 	{ "name": "coef_list_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list_3", "role": "q1" }} , 
 	{ "name": "seed", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "seed", "role": "default" }} , 
 	{ "name": "final_val_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "final_val", "role": "address0" }} , 
 	{ "name": "final_val_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_val", "role": "ce0" }} , 
 	{ "name": "final_val_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_val", "role": "we0" }} , 
 	{ "name": "final_val_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "final_val", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"],
		"CDFG" : "QIO_accel_hw_int_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59222100517", "EstimateLatencyMax" : "59222100517",
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
			{"Name" : "seed", "Type" : "None", "Direction" : "I"},
			{"Name" : "final_val", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "guard_variable_for_v", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Galois_LFSR_32_33_hw_fu_785", "Port" : "guard_variable_for_v"}]},
			{"Name" : "lfsr33_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Galois_LFSR_32_33_hw_fu_785", "Port" : "lfsr33_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.new_val_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Galois_LFSR_32_33_hw_fu_785", "Parent" : "0",
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
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fadd_32g8j_U3", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32hbi_U4", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32hbi_U5", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fdiv_32ibs_U6", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_jbC_U7", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_jbC_U8", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fptrunckbM_U9", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fcmp_32lbW_U10", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_dmul_64mb6_U11", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_dmul_64mb6_U12", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_ddiv_64ncg_U13", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_ddiv_64ncg_U14", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_uitodp_ocq_U15", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_uitodp_ocq_U16", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_432pcA_U17", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_432pcA_U18", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_432pcA_U19", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_432pcA_U20", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_432pcA_U21", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_432pcA_U22", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_mux_432pcA_U23", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QIO_accel_hw_int_s {
		init_val {Type I LastRead 1 FirstWrite -1}
		coef_list_0 {Type I LastRead 72 FirstWrite -1}
		coef_list_1 {Type I LastRead 72 FirstWrite -1}
		coef_list_2 {Type I LastRead 72 FirstWrite -1}
		coef_list_3 {Type I LastRead 72 FirstWrite -1}
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
	{"Name" : "Latency", "Min" : "59222100517", "Max" : "59222100517"}
	, {"Name" : "Interval", "Min" : "-907441627", "Max" : "-907441627"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	init_val { ap_memory {  { init_val_address0 mem_address 1 8 }  { init_val_ce0 mem_ce 1 1 }  { init_val_q0 mem_dout 0 32 } } }
	coef_list_0 { ap_memory {  { coef_list_0_address0 mem_address 1 14 }  { coef_list_0_ce0 mem_ce 1 1 }  { coef_list_0_q0 mem_dout 0 32 }  { coef_list_0_address1 MemPortADDR2 1 14 }  { coef_list_0_ce1 MemPortCE2 1 1 }  { coef_list_0_q1 MemPortDOUT2 0 32 } } }
	coef_list_1 { ap_memory {  { coef_list_1_address0 mem_address 1 14 }  { coef_list_1_ce0 mem_ce 1 1 }  { coef_list_1_q0 mem_dout 0 32 }  { coef_list_1_address1 MemPortADDR2 1 14 }  { coef_list_1_ce1 MemPortCE2 1 1 }  { coef_list_1_q1 MemPortDOUT2 0 32 } } }
	coef_list_2 { ap_memory {  { coef_list_2_address0 mem_address 1 14 }  { coef_list_2_ce0 mem_ce 1 1 }  { coef_list_2_q0 mem_dout 0 32 }  { coef_list_2_address1 MemPortADDR2 1 14 }  { coef_list_2_ce1 MemPortCE2 1 1 }  { coef_list_2_q1 MemPortDOUT2 0 32 } } }
	coef_list_3 { ap_memory {  { coef_list_3_address0 mem_address 1 14 }  { coef_list_3_ce0 mem_ce 1 1 }  { coef_list_3_q0 mem_dout 0 32 }  { coef_list_3_address1 MemPortADDR2 1 14 }  { coef_list_3_ce1 MemPortCE2 1 1 }  { coef_list_3_q1 MemPortDOUT2 0 32 } } }
	seed { ap_none {  { seed in_data 0 32 } } }
	final_val { ap_memory {  { final_val_address0 mem_address 1 8 }  { final_val_ce0 mem_ce 1 1 }  { final_val_we0 mem_we 1 1 }  { final_val_d0 mem_din 1 32 } } }
}
