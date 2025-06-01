/// @description Insert description here
// You can write your code in this editor
ini_open("save_total.ini")
max_ = ini_read_real("MAX", text, false)
show_debug_message(max_)
ini_close()