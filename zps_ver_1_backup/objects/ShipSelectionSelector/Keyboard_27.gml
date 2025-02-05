/// @description Insert description here
// You can write your code in this editor
ini_open("ship_selection.ini")
ini_write_real("SHIP","selection", real(global.ship_selection))
ini_write_real("dummy","dummy",0)
ini_close()
//update unlocks and coins
ini_open("unlocks.ini")
var button = GetShipUnlockButton(FastShip)
ini_write_real("SHIPS", "Fastship", !button.locked)
button = GetShipUnlockButton(MeeleShip)
ini_write_real("SHIPS", "Meeleship", !button.locked)
ini_close()
	
ini_open("save_total.ini")
ini_write_real("CURRENCY", "coins", coins)
ini_close()
clearEntities()
room_goto(MainMenu)