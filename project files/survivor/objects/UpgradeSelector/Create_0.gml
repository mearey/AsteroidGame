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
	new_game.backwards = false
	return new_game
}

fr_btn = CreateButton(-30,"FIRE RATE", function () {
	var temp = GetUpgradeButton("FIRE RATE")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
		temp.cost = 20+30*fr_btn.points
	}
})
fr_btn.max_points = 4
fr_btn.points = ini_read_real("UPGRADES", "fire_rate", 0)
fr_btn.cost = 20+30*fr_btn.points
fr_btn.description = "Increases fire rate for all weapons"

regen_btn = CreateButton(-15,"REGEN", function () {
	var temp = GetUpgradeButton("REGEN")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
		temp.cost = 10+30*regen_btn.points
	}
})
regen_btn.max_points = 5
regen_btn.points = ini_read_real("UPGRADES", "regen", 0)
regen_btn.cost = 10+30*regen_btn.points
regen_btn.description = "Increases the percentage of hp that regenerates over time"

magnet_btn = CreateButton(0,"MAGNET", function () {
	var temp = GetUpgradeButton("MAGNET")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
		temp.cost = 10+20*magnet_btn.points
	}
})
magnet_btn.max_points = 12
magnet_btn.points = ini_read_real("UPGRADES", "magnet", 0)
magnet_btn.cost = 10+25*magnet_btn.points
magnet_btn.description = "Increase pickup range for exp and coins"

ms_btn = CreateButton(15,"MULTI SHOT", function () {
	var temp = GetUpgradeButton("MULTI SHOT")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
})
ms_btn.max_points = 1
ms_btn.cost = 150
ms_btn.points = ini_read_real("UPGRADES", "multi_shot", 0)
ms_btn.description = "Doubles the projectiles being shot"

aa_btn = CreateButton(30,"COOLDOWN", function () {
	var temp = GetUpgradeButton("COOLDOWN")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
		temp.cost = 20+30*aa_btn.points
	}
})
aa_btn.max_points = 4
aa_btn.points = ini_read_real("UPGRADES", "cdr", 0)
aa_btn.cost = 5+35+aa_btn.points
aa_btn.points = ini_read_real("UPGRADES", "cdr", 0)
ms_btn.description = "Decreases the cooldown for your ship's ability"

luck_btn = CreateButton(-180-30,"LUCK", function () {
	var temp = GetUpgradeButton("LUCK")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
		temp.cost = 200+20*luck_btn.points*luck_btn.points*luck_btn.points
	}
})
luck_btn.max_points = 6
luck_btn.points = ini_read_real("UPGRADES", "luck", 0)
luck_btn.cost = 100+25*luck_btn.points*luck_btn.points*luck_btn.points
luck_btn.points = ini_read_real("UPGRADES", "luck", 0)
luck_btn.description = "Get luckier :-)"

secret_btn = CreateButton(-180-15,"PROSPECTING", function () {
	var temp = GetUpgradeButton("SECRET UPGRADE")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
})
secret_btn.max_points = 1
secret_btn.cost = 500
secret_btn.points = ini_read_real("UPGRADES", "secret_upgrade", 0)
secret_btn.description = "Begin the gold rush (WARNING: may trigger extradimensional threats)"


ea_btn = CreateButton(-180,"EMBATTLEMENT", function () {
	var temp = GetUpgradeButton("EXTRA ARMS")
	if self.coins >= temp.cost && temp.points < temp.max_points {
		temp.points += 1
		self.coins -= temp.cost
	}
})
ea_btn.max_points = 1
ea_btn.cost = 200
ea_btn.points = ini_read_real("UPGRADES", "extra_arms", 0)
ea_btn.description = "Gain an additional weapon at the start of every level"

CreateButton(180+30, "BACK", function() {
	SaveUpgrades()
	//set upgrades acheivement
	var max_ = fr_btn.max_points+regen_btn.max_points+magnet_btn.max_points+aa_btn.max_points+luck_btn.max_points+ms_btn.max_points
	if max_ <= fr_btn.points+regen_btn.points+magnet_btn.points+aa_btn.points+luck_btn.points+ms_btn.points {
		steam_set_achievement("upgrades_max")
	}
	//goback to main menu
	alarm[0] = 2
}).upgrade = false

function SaveUpgrades() {
	//save upgrades
	ini_open("save_total.ini")
	ini_write_real("UPGRADES", "fire_rate", fr_btn.points)
	ini_write_real("UPGRADES", "regen", regen_btn.points)
	ini_write_real("UPGRADES", "magnet", magnet_btn.points)
	ini_write_real("UPGRADES", "cdr", aa_btn.points)
	ini_write_real("UPGRADES", "luck", luck_btn.points)
	ini_write_real("UPGRADES", "multi_shot", ms_btn.points)
	ini_write_real("UPGRADES", "secret_upgrade", secret_btn.points)
	ini_write_real("UPGRADES", "extra_arms", ea_btn.points)
	//save coins
	ini_write_real("CURRENCY", "coins", coins)
	//dummy save
	ini_open("save_total.ini")
	ini_write_real("dummy","dummy",0)
	ini_close()
	LoadUpgrades()
}
ini_close()