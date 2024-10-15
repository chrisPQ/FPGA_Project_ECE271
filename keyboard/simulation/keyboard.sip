set_global_assignment -entity "keyboard" -library "lib_keyboard" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "keyboard" -library "lib_keyboard" -name IP_TOOL_VERSION "18.0"
set_global_assignment -entity "keyboard" -library "lib_keyboard" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_keyboard" -name SPD_FILE [file join $::quartus(sip_path) "../keyboard.spd"]
set_global_assignment -library "lib_keyboard" -name MISC_FILE [file join $::quartus(sip_path) "../../keyboard.qsys"]

set_global_assignment -library "lib_keyboard" -name MISC_FILE [file join $::quartus(sip_path) "keyboard.v"]
set_global_assignment -library "lib_keyboard" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_ps2.v"]
set_global_assignment -library "lib_keyboard" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_ps2_command_out.v"]
set_global_assignment -library "lib_keyboard" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_ps2_data_in.v"]
set_global_assignment -library "lib_keyboard" -name MISC_FILE [file join $::quartus(sip_path) "submodules/keyboard_ps2_0.v"]
