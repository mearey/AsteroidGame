/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(OptionsSelector) || instance_exists(UpgradeSelector) || instance_exists(ShipSelectionSelector) {
	visible = false
	lighting_size = 0
} else {
	visible = true	
	lighting_size = 4
}