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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "36", "37", "38", "39"],
		"CDFG" : "QIO_accel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59222166573", "EstimateLatencyMax" : "59222166573",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_QIO_accel_hw_int_s_fu_276"}],
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
					{"ID" : "8", "SubInstance" : "grp_QIO_accel_hw_int_s_fu_276", "Port" : "guard_variable_for_v"}]},
			{"Name" : "lfsr33_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_QIO_accel_hw_int_s_fu_276", "Port" : "lfsr33_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.QIO_accel_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.init_val_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.final_val_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coef_list_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276", "Parent" : "0", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
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
					{"ID" : "14", "SubInstance" : "grp_Galois_LFSR_32_33_hw_fu_785", "Port" : "guard_variable_for_v"}]},
			{"Name" : "lfsr33_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_Galois_LFSR_32_33_hw_fu_785", "Port" : "lfsr33_V"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.current_val_0_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.current_val_1_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.current_val_2_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.current_val_3_U", "Parent" : "8"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.new_val_U", "Parent" : "8"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.grp_Galois_LFSR_32_33_hw_fu_785", "Parent" : "8",
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_fadd_32g8j_U3", "Parent" : "8"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_fmul_32hbi_U4", "Parent" : "8"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_fmul_32hbi_U5", "Parent" : "8"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_fdiv_32ibs_U6", "Parent" : "8"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_sitofp_jbC_U7", "Parent" : "8"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_sitofp_jbC_U8", "Parent" : "8"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_fptrunckbM_U9", "Parent" : "8"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_fcmp_32lbW_U10", "Parent" : "8"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_dmul_64mb6_U11", "Parent" : "8"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_dmul_64mb6_U12", "Parent" : "8"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_ddiv_64ncg_U13", "Parent" : "8"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_ddiv_64ncg_U14", "Parent" : "8"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_uitodp_ocq_U15", "Parent" : "8"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_uitodp_ocq_U16", "Parent" : "8"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_mux_432pcA_U17", "Parent" : "8"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_mux_432pcA_U18", "Parent" : "8"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_mux_432pcA_U19", "Parent" : "8"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_mux_432pcA_U20", "Parent" : "8"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_mux_432pcA_U21", "Parent" : "8"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_mux_432pcA_U22", "Parent" : "8"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_QIO_accel_hw_int_s_fu_276.QIO_accel_mux_432pcA_U23", "Parent" : "8"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_data_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_last_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_data_V_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_last_V_U", "Parent" : "0"}]}


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
	{"Name" : "Latency", "Min" : "59222166573", "Max" : "59222166573"}
	, {"Name" : "Interval", "Min" : "-907375570", "Max" : "-907375570"}
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
