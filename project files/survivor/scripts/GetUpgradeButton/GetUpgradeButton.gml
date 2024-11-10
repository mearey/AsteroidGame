// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetUpgradeButton(button_text){
	with (UpgradeButton) {
		if text == button_text {
			return self	
		}
	}
	return NaN
}

function GetShipUnlockButton(ship_) {
	with (ShipSelectionButton) {
		if ship == 	ship_ {
			return self	
		}
	}
}