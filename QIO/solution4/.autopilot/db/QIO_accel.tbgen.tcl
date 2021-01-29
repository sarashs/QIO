set moduleName QIO_accel
set isTopModule 1
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
set C_modelName {QIO_accel}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_data_V int 32 regular {axi_s 0 volatile  { input_r Data } }  }
	{ input_last_V int 1 regular {axi_s 0 volatile  { input_r Last } }  }
	{ output_data_V int 32 regular {axi_s 1 volatile  { output_r Data } }  }
	{ output_last_V int 1 regular {axi_s 1 volatile  { output_r Last } }  }
	{ seed int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 33151,"step" : 1}]}]}]} , 
 	{ "Name" : "input_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 33151,"step" : 1}]}]}]} , 
 	{ "Name" : "output_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "output_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "seed", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "seed","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ input_r_TDATA sc_in sc_lv 32 signal 0 } 
	{ input_r_TVALID sc_in sc_logic 1 invld 1 } 
	{ input_r_TREADY sc_out sc_logic 1 inacc 1 } 
	{ input_r_TLAST sc_in sc_lv 1 signal 1 } 
	{ output_r_TDATA sc_out sc_lv 32 signal 2 } 
	{ output_r_TVALID sc_out sc_logic 1 outvld 3 } 
	{ output_r_TREADY sc_in sc_logic 1 outacc 3 } 
	{ output_r_TLAST sc_out sc_lv 1 signal 3 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"QIO_accel","role":"start","value":"0","valid_bit":"0"},{"name":"QIO_accel","role":"continue","value":"0","valid_bit":"4"},{"name":"QIO_accel","role":"auto_start","value":"0","valid_bit":"7"},{"name":"seed","role":"data","value":"16"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"QIO_accel","role":"start","value":"0","valid_bit":"0"},{"name":"QIO_accel","role":"done","value":"0","valid_bit":"1"},{"name":"QIO_accel","role":"idle","value":"0","valid_bit":"2"},{"name":"QIO_accel","role":"ready","value":"0","valid_bit":"3"},{"name":"QIO_accel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "input_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_data_V", "role": "" }} , 
 	{ "name": "input_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_last_V", "role": "D" }} , 
 	{ "name": "input_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_last_V", "role": "Y" }} , 
 	{ "name": "input_r_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_last_V", "role": "" }} , 
 	{ "name": "output_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_data_V", "role": "" }} , 
 	{ "name": "output_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_last_V", "role": "D" }} , 
 	{ "name": "output_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_last_V", "role": "Y" }} , 
 	{ "name": "output_r_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_last_V", "role": "" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "102", "103", "104", "105"],
		"CDFG" : "QIO_accel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "387495573", "EstimateLatencyMax" : "387496573",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_QIO_accel_hw_int_s_fu_492"}],
		"Port" : [
			{"Name" : "input_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "output_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "seed", "Type" : "None", "Direction" : "I"},
			{"Name" : "guard_variable_for_v", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_QIO_accel_hw_int_s_fu_492", "Port" : "guard_variable_for_v"}]},
			{"Name" : "lfsr33_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_QIO_accel_hw_int_s_fu_492", "Port" : "lfsr33_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.init_val_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.final_val_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_4_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_5_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_6_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_7_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_8_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_9_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_10_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_11_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_12_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_13_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_14_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_15_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492", "Parent" : "0", "Child" : ["21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101"],
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
					{"ID" : "38", "SubInstance" : "grp_Galois_LFSR_32_33_hw_fu_5126", "Port" : "guard_variable_for_v"}]},
			{"Name" : "lfsr33_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_Galois_LFSR_32_33_hw_fu_5126", "Port" : "lfsr33_V"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_0_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_1_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_2_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_3_U", "Parent" : "20"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_4_U", "Parent" : "20"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_5_U", "Parent" : "20"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_6_U", "Parent" : "20"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_7_U", "Parent" : "20"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_8_U", "Parent" : "20"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_9_U", "Parent" : "20"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_10_U", "Parent" : "20"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_11_U", "Parent" : "20"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_12_U", "Parent" : "20"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_13_U", "Parent" : "20"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_14_U", "Parent" : "20"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.current_val_15_U", "Parent" : "20"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.new_val_U", "Parent" : "20"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.grp_Galois_LFSR_32_33_hw_fu_5126", "Parent" : "20",
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
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fadd_32sc4_U3", "Parent" : "20"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U4", "Parent" : "20"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U5", "Parent" : "20"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U6", "Parent" : "20"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U7", "Parent" : "20"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U8", "Parent" : "20"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U9", "Parent" : "20"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U10", "Parent" : "20"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U11", "Parent" : "20"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U12", "Parent" : "20"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U13", "Parent" : "20"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U14", "Parent" : "20"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U15", "Parent" : "20"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U16", "Parent" : "20"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U17", "Parent" : "20"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U18", "Parent" : "20"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fmul_32tde_U19", "Parent" : "20"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fdiv_32udo_U20", "Parent" : "20"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U21", "Parent" : "20"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U22", "Parent" : "20"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U23", "Parent" : "20"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U24", "Parent" : "20"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U25", "Parent" : "20"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U26", "Parent" : "20"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U27", "Parent" : "20"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U28", "Parent" : "20"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U29", "Parent" : "20"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U30", "Parent" : "20"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U31", "Parent" : "20"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U32", "Parent" : "20"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U33", "Parent" : "20"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U34", "Parent" : "20"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U35", "Parent" : "20"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_sitofp_vdy_U36", "Parent" : "20"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fptruncwdI_U37", "Parent" : "20"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_fcmp_32xdS_U38", "Parent" : "20"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_dmul_64yd2_U39", "Parent" : "20"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_dmul_64yd2_U40", "Parent" : "20"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_ddiv_64zec_U41", "Parent" : "20"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_ddiv_64zec_U42", "Parent" : "20"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_uitodp_Aem_U43", "Parent" : "20"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_uitodp_Aem_U44", "Parent" : "20"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U45", "Parent" : "20"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U46", "Parent" : "20"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U47", "Parent" : "20"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U48", "Parent" : "20"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U49", "Parent" : "20"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U50", "Parent" : "20"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U51", "Parent" : "20"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U52", "Parent" : "20"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U53", "Parent" : "20"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U54", "Parent" : "20"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U55", "Parent" : "20"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U56", "Parent" : "20"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U57", "Parent" : "20"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U58", "Parent" : "20"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U59", "Parent" : "20"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U60", "Parent" : "20"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U61", "Parent" : "20"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U62", "Parent" : "20"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U63", "Parent" : "20"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U64", "Parent" : "20"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_492.QIO_accel_mux_163Bew_U65", "Parent" : "20"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_data_V_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_last_V_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_data_V_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	QIO_accel {
		input_data_V {Type I LastRead 3 FirstWrite -1}
		input_last_V {Type I LastRead 3 FirstWrite -1}
		output_data_V {Type O LastRead -1 FirstWrite 7}
		output_last_V {Type O LastRead -1 FirstWrite 7}
		seed {Type I LastRead 4 FirstWrite -1}
		guard_variable_for_v {Type I LastRead -1 FirstWrite -1}
		lfsr33_V {Type IO LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "387495573", "Max" : "387496573"}
	, {"Name" : "Interval", "Min" : "387495574", "Max" : "387496574"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	input_data_V { axis {  { input_r_TDATA in_data 0 32 } } }
	input_last_V { axis {  { input_r_TVALID in_vld 0 1 }  { input_r_TREADY in_acc 1 1 }  { input_r_TLAST in_data 0 1 } } }
	output_data_V { axis {  { output_r_TDATA out_data 1 32 } } }
	output_last_V { axis {  { output_r_TVALID out_vld 1 1 }  { output_r_TREADY out_acc 0 1 }  { output_r_TLAST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
