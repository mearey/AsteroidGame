/// @description Insert description here
// You can write your code in this editor
ini_open("unlocks.ini")
var hi = ini_read_real("LEVELS", "hi", -1)
if difficulty > hi {
	ini_write_real("LEVELS", "hi", difficulty)
}
ini_close()