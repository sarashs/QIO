set moduleName QIO_int_s
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
set C_modelName {QIO<int>}
set C_modelType { float 32 }
set C_modelArgList {
	{ current_val int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ coef_list float 32 regular {array 65536 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "current_val", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ current_val_address0 sc_out sc_lv 8 signal 0 } 
	{ current_val_ce0 sc_out sc_logic 1 signal 0 } 
	{ current_val_q0 sc_in sc_lv 32 signal 0 } 
	{ coef_list_address0 sc_out sc_lv 16 signal 1 } 
	{ coef_list_ce0 sc_out sc_logic 1 signal 1 } 
	{ coef_list_q0 sc_in sc_lv 32 signal 1 } 
	{ coef_list_address1 sc_out sc_lv 16 signal 1 } 
	{ coef_list_ce1 sc_out sc_logic 1 signal 1 } 
	{ coef_list_q1 sc_in sc_lv 32 signal 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "current_val_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "current_val", "role": "address0" }} , 
 	{ "name": "current_val_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "current_val", "role": "ce0" }} , 
 	{ "name": "current_val_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "current_val", "role": "q0" }} , 
 	{ "name": "coef_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coef_list", "role": "address0" }} , 
 	{ "name": "coef_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list", "role": "ce0" }} , 
 	{ "name": "coef_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list", "role": "q0" }} , 
 	{ "name": "coef_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coef_list", "role": "address1" }} , 
 	{ "name": "coef_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coef_list", "role": "ce1" }} , 
 	{ "name": "coef_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_list", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "QIO_int_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "330893", "EstimateLatencyMax" : "330893",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "current_val", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.current_val2_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fadd_32cud_U3", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U4", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U5", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U6", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U7", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U8", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U9", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U10", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U11", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U12", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U13", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U14", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U15", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U16", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U17", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U18", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U19", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_fmul_32dEe_U20", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_eOg_U21", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_eOg_U22", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_sitofp_eOg_U23", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QIO_int_s {
		current_val {Type I LastRead 137 FirstWrite -1}
		coef_list {Type I LastRead 1296 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "330893", "Max" : "330893"}
	, {"Name" : "Interval", "Min" : "330893", "Max" : "330893"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	current_val { ap_memory {  { current_val_address0 mem_address 1 8 }  { current_val_ce0 mem_ce 1 1 }  { current_val_q0 mem_dout 0 32 } } }
	coef_list { ap_memory {  { coef_list_address0 mem_address 1 16 }  { coef_list_ce0 mem_ce 1 1 }  { coef_list_q0 mem_dout 0 32 }  { coef_list_address1 MemPortADDR2 1 16 }  { coef_list_ce1 MemPortCE2 1 1 }  { coef_list_q1 MemPortDOUT2 0 32 } } }
}
