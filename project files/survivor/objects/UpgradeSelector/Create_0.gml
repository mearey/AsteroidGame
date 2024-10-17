/// @description Insert description here
// You can write your code in this editor
event_inherited()
active_button = instance_nearest(x,y,Button)
x_ = surface_get_width(application_surface)/2
y_ = surface_get_height(application_surface)/2

Globals()

coins = 0
ini_open("save_total.ini")
coins = ini_read_real("CURRENCY", "coins", 0)


function CreateButton(degree, text, func) {
	var direction_ = degree
	x_ = surface_get_width(application_surface)/2 + lengthdir_x(500,direction_)
	y_ = surface_get_height(application_surface)/2 + lengthdir_y(500,direction_)

	var new_game = instance_create_depth(x_,y_,1,UpgradeButton)
	new_game.text = text	
	new_game.onClick = func
	
	return new_game
}

fr_btn = CreateButton(-30,"FIRE RATE", function () {
	var temp = GetUpgradeButton("FIRE RATE")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
})
fr_btn.max_points = 4
fr_btn.cost = 10
fr_btn.points = ini_read_real("UPGRADES", "fire_rate", 0)

regen_btn = CreateButton(-15,"REGEN", function () {
	var temp = GetUpgradeButton("REGEN")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
})
regen_btn.max_points = 5
regen_btn.cost = 10
regen_btn.points = ini_read_real("UPGRADES", "regen", 0)

magnet_btn = CreateButton(0,"MAGNET", function () {
	var temp = GetUpgradeButton("MAGNET")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
})
magnet_btn.max_points = 5
magnet_btn.cost = 10
magnet_btn.points = ini_read_real("UPGRADES", "magnet", 0)

ms_btn = CreateButton(15,"MULTI SHOT", function () {
	var temp = GetUpgradeButton("MULTI SHOT")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
})
ms_btn.max_points = 1
ms_btn.cost = 75
ms_btn.points = ini_read_real("UPGRADES", "multi_shot", 0)

aa_btn = CreateButton(30,"AUTO AIM", function () {
	var temp = GetUpgradeButton("AUTO AIM")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
})
aa_btn.max_points = 1
aa_btn.cost = 100
aa_btn.points = ini_read_real("UPGRADES", "auto_aim", 0)
aa_btn.points = ini_read_real("UPGRADES", "auto_aim", 0)


CreateButton(180+30, "BACK", function() {
	SaveUpgrades()
	//goback to main menu
	alarm[0] = 2
}).upgrade = false

function SaveUpgrades() {
	//save upgrades
	ini_open("save_total.ini")
	ini_write_real("UPGRADES", "fire_rate", fr_btn.points)
	ini_write_real("UPGRADES", "regen", regen_btn.points)
	ini_write_real("UPGRADES", "magnet", magnet_btn.points)
	ini_write_real("UPGRADES", "auto_aim", aa_btn.points)
	ini_write_real("UPGRADES", "multi_shot", ms_btn.points)
	//save coins
	ini_write_real("CURRENCY", "coins", coins)
	//dummy save
	ini_open("save_total.ini")
	ini_write_real("dummy","dummy",0)
	LoadUpgrades()
}