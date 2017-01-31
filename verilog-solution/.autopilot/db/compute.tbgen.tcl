set C_TypeInfoList {{ 
"compute" : [[], {"return": [[], {"scalar": "double"}] }, [{"ExternC" : 0}], [ {"size": [[], {"scalar": "int"}] }, {"length": [[], {"scalar": "int"}] }, {"dataa": [[], {"array": [ {"array": [ {"scalar": "double"}, [5]]}, [15]]}] }, {"datac": [[], {"array": [ {"array": [ {"scalar": "double"}, [5]]}, [15]]}] }, {"datag": [[], {"array": [ {"array": [ {"scalar": "double"}, [5]]}, [15]]}] }, {"datat": [[], {"array": [ {"array": [ {"scalar": "double"}, [5]]}, [15]]}] }],[],""]
}}
set moduleName compute
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {compute}
set C_modelType { double 64 }
set C_modelArgList {
	{ size int 32 regular  }
	{ length_r int 32 regular  }
	{ dataa double 64 regular {array 75 { 2 1 } 1 1 }  }
	{ datac double 64 regular {array 75 { 2 1 } 1 1 }  }
	{ datag double 64 regular {array 75 { 2 1 } 1 1 }  }
	{ datat double 64 regular {array 75 { 2 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "size","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "length_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dataa", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "dataa","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 14,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "datac", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "datac","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 14,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "datag", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "datag","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 14,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "datat", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "datat","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 14,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "return","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ size sc_in sc_lv 32 signal 0 } 
	{ length_r sc_in sc_lv 32 signal 1 } 
	{ dataa_address0 sc_out sc_lv 7 signal 2 } 
	{ dataa_ce0 sc_out sc_logic 1 signal 2 } 
	{ dataa_we0 sc_out sc_logic 1 signal 2 } 
	{ dataa_d0 sc_out sc_lv 64 signal 2 } 
	{ dataa_q0 sc_in sc_lv 64 signal 2 } 
	{ dataa_address1 sc_out sc_lv 7 signal 2 } 
	{ dataa_ce1 sc_out sc_logic 1 signal 2 } 
	{ dataa_q1 sc_in sc_lv 64 signal 2 } 
	{ datac_address0 sc_out sc_lv 7 signal 3 } 
	{ datac_ce0 sc_out sc_logic 1 signal 3 } 
	{ datac_we0 sc_out sc_logic 1 signal 3 } 
	{ datac_d0 sc_out sc_lv 64 signal 3 } 
	{ datac_q0 sc_in sc_lv 64 signal 3 } 
	{ datac_address1 sc_out sc_lv 7 signal 3 } 
	{ datac_ce1 sc_out sc_logic 1 signal 3 } 
	{ datac_q1 sc_in sc_lv 64 signal 3 } 
	{ datag_address0 sc_out sc_lv 7 signal 4 } 
	{ datag_ce0 sc_out sc_logic 1 signal 4 } 
	{ datag_we0 sc_out sc_logic 1 signal 4 } 
	{ datag_d0 sc_out sc_lv 64 signal 4 } 
	{ datag_q0 sc_in sc_lv 64 signal 4 } 
	{ datag_address1 sc_out sc_lv 7 signal 4 } 
	{ datag_ce1 sc_out sc_logic 1 signal 4 } 
	{ datag_q1 sc_in sc_lv 64 signal 4 } 
	{ datat_address0 sc_out sc_lv 7 signal 5 } 
	{ datat_ce0 sc_out sc_logic 1 signal 5 } 
	{ datat_we0 sc_out sc_logic 1 signal 5 } 
	{ datat_d0 sc_out sc_lv 64 signal 5 } 
	{ datat_q0 sc_in sc_lv 64 signal 5 } 
	{ datat_address1 sc_out sc_lv 7 signal 5 } 
	{ datat_ce1 sc_out sc_logic 1 signal 5 } 
	{ datat_q1 sc_in sc_lv 64 signal 5 } 
	{ ap_return sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size", "role": "default" }} , 
 	{ "name": "length_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "length_r", "role": "default" }} , 
 	{ "name": "dataa_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dataa", "role": "address0" }} , 
 	{ "name": "dataa_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataa", "role": "ce0" }} , 
 	{ "name": "dataa_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataa", "role": "we0" }} , 
 	{ "name": "dataa_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataa", "role": "d0" }} , 
 	{ "name": "dataa_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataa", "role": "q0" }} , 
 	{ "name": "dataa_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dataa", "role": "address1" }} , 
 	{ "name": "dataa_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataa", "role": "ce1" }} , 
 	{ "name": "dataa_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataa", "role": "q1" }} , 
 	{ "name": "datac_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "datac", "role": "address0" }} , 
 	{ "name": "datac_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "datac", "role": "ce0" }} , 
 	{ "name": "datac_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "datac", "role": "we0" }} , 
 	{ "name": "datac_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "datac", "role": "d0" }} , 
 	{ "name": "datac_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "datac", "role": "q0" }} , 
 	{ "name": "datac_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "datac", "role": "address1" }} , 
 	{ "name": "datac_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "datac", "role": "ce1" }} , 
 	{ "name": "datac_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "datac", "role": "q1" }} , 
 	{ "name": "datag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "datag", "role": "address0" }} , 
 	{ "name": "datag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "datag", "role": "ce0" }} , 
 	{ "name": "datag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "datag", "role": "we0" }} , 
 	{ "name": "datag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "datag", "role": "d0" }} , 
 	{ "name": "datag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "datag", "role": "q0" }} , 
 	{ "name": "datag_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "datag", "role": "address1" }} , 
 	{ "name": "datag_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "datag", "role": "ce1" }} , 
 	{ "name": "datag_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "datag", "role": "q1" }} , 
 	{ "name": "datat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "datat", "role": "address0" }} , 
 	{ "name": "datat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "datat", "role": "ce0" }} , 
 	{ "name": "datat_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "datat", "role": "we0" }} , 
 	{ "name": "datat_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "datat", "role": "d0" }} , 
 	{ "name": "datat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "datat", "role": "q0" }} , 
 	{ "name": "datat_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "datat", "role": "address1" }} , 
 	{ "name": "datat_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "datat", "role": "ce1" }} , 
 	{ "name": "datat_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "datat", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "compute",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "size", "Type" : "None", "Direction" : "I"},
		{"Name" : "length_r", "Type" : "None", "Direction" : "I"},
		{"Name" : "dataa", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "datac", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "datag", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "datat", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dadd_64nsbkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dadd_64nsbkb_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dadd_64nsbkb_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dadd_64nsbkb_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dadd_64nsbkb_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dadd_64nsbkb_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dadd_64nsbkb_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dadd_64nsbkb_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dmul_64nscud_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dmul_64nscud_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dmul_64nscud_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dmul_64nscud_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dmul_64nscud_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dmul_64nscud_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dmul_64nscud_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dmul_64nscud_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dmul_64nscud_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dmul_64nscud_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dmul_64nscud_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dmul_64nscud_U20", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set Spec2ImplPortList { 
	size { ap_none {  { size in_data 0 32 } } }
	length_r { ap_none {  { length_r in_data 0 32 } } }
	dataa { ap_memory {  { dataa_address0 mem_address 1 7 }  { dataa_ce0 mem_ce 1 1 }  { dataa_we0 mem_we 1 1 }  { dataa_d0 mem_din 1 64 }  { dataa_q0 mem_dout 0 64 }  { dataa_address1 mem_address 1 7 }  { dataa_ce1 mem_ce 1 1 }  { dataa_q1 mem_dout 0 64 } } }
	datac { ap_memory {  { datac_address0 mem_address 1 7 }  { datac_ce0 mem_ce 1 1 }  { datac_we0 mem_we 1 1 }  { datac_d0 mem_din 1 64 }  { datac_q0 mem_dout 0 64 }  { datac_address1 mem_address 1 7 }  { datac_ce1 mem_ce 1 1 }  { datac_q1 mem_dout 0 64 } } }
	datag { ap_memory {  { datag_address0 mem_address 1 7 }  { datag_ce0 mem_ce 1 1 }  { datag_we0 mem_we 1 1 }  { datag_d0 mem_din 1 64 }  { datag_q0 mem_dout 0 64 }  { datag_address1 mem_address 1 7 }  { datag_ce1 mem_ce 1 1 }  { datag_q1 mem_dout 0 64 } } }
	datat { ap_memory {  { datat_address0 mem_address 1 7 }  { datat_ce0 mem_ce 1 1 }  { datat_we0 mem_we 1 1 }  { datat_d0 mem_din 1 64 }  { datat_q0 mem_dout 0 64 }  { datat_address1 mem_address 1 7 }  { datat_ce1 mem_ce 1 1 }  { datat_q1 mem_dout 0 64 } } }
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
