/// @description Insert description here
// You can write your code in this editor
event_inherited()
active_button = instance_nearest(x,y,Button)
//camera reset
//camera_set_view_target(view_camera[0],NaN)
cam_x = camera_get_view_x(view_camera[0])
cam_y = camera_get_view_y(view_camera[0])
cam_width = camera_get_view_width(view_camera[0])
cam_height = camera_get_view_height(view_camera[0])
//camera_set_view_pos(view_camera[0],0,0)
selltotal = 0
x_ = cam_x
y_ = cam_y + cam_height/2

trader = false

tutorial = false

ini_open("save_total.ini")

if !(ini_key_exists("TUTORIAL", "invtut")) {
	//DISPLAY THE TUTORIAL
	tutorial = true
	ini_write_real("TUTORIAL", "invtut", 1)
}


ini_close()

slots = []
inv_slots = []
trader_slots = []
sell_slots = []

rotation = 0

alarm[1] = 5

function CreateButton(degree, text, func) {
	var direction_ = degree
	x_ = cam_x + lengthdir_x(500,direction_)
	y_ = cam_y + cam_height/2 + lengthdir_y(500,direction_)

	var new_game = instance_create_depth(x_,y_,1,Button)
	new_game.text = text	
	new_game.onClick = func
	return new_game
}

continue_btn = CreateButton(30,"CONTINUE", function () {
	global.pauseObj.pause(false)
})

options_btn = CreateButton(0,"OPTIONS", function () {
	instance_destroy(self)
	var camx = camera_get_view_x(view_camera[0])
	var camy = camera_get_view_y(view_camera[0])
	var cam_width = camera_get_view_width(view_camera[0])
	var cam_height = camera_get_view_height(view_camera[0])
	instance_create_depth(camx+cam_width/2,camy+cam_height/2,1,OptionsSelector)
})
	
exit_btn = CreateButton(-30, "SAVE & EXIT", function() {
	saveState();
	clearEntities()
	room_goto(MainMenu)
	global.pauseObj.paused = false
	PlaySong(GameSongMenu)
})

function CreateInventory() {
	with (InvSlot) {
		if !selling {
			instance_destroy(self)	
		}
	}
	with (WeaponSlot) {
		instance_destroy(self)	
	}
	//inv slots
	slots = []
	var x_ = cam_x + cam_width*3/4
	var y_ = cam_y + cam_height/2
	var slot = instance_create_depth(x_-176,y_,1,WeaponSlot)
	slot.slot = 0
	slot.weapon = global.player.equipped_weapons[0]
	var count = 0
	for (var i=0; i<array_length(global.player.weapons); i+=1) {
		if (global.player.weapons[i] == slot.weapon) {
			count += 1;	
		}
	}
	slot.lvl = count
	array_push(slots, slot)
	var slot = instance_create_depth(x_-256,y_-80,1,WeaponSlot)
	slot.slot = 1
	slot.weapon = global.player.equipped_weapons[1]
	var count = 0
	for (var i=0; i<array_length(global.player.weapons); i+=1) {
		if (global.player.weapons[i] == slot.weapon) {
			count += 1;	
		}
	}
	slot.lvl = count
	array_push(slots, slot)
	var slot = instance_create_depth(x_-256,y_+80,1,WeaponSlot)
	slot.slot = 2
	slot.weapon = global.player.equipped_weapons[2]
	var count = 0
	for (var i=0; i<array_length(global.player.weapons); i+=1) {
		if (global.player.weapons[i] == slot.weapon) {
			count += 1;	
		}
	}
	slot.lvl = count
	array_push(slots, slot)
	var slot = instance_create_depth(x_+256,y_-80,1,WeaponSlot)
	slot.slot = 3
	slot.weapon = global.player.equipped_weapons[3]
	var count = 0
	for (var i=0; i<array_length(global.player.weapons); i+=1) {
		if (global.player.weapons[i] == slot.weapon) {
			count += 1;	
		}
	}
	slot.lvl = count
	array_push(slots, slot)
	var slot = instance_create_depth(x_+256,y_+80,1,WeaponSlot)
	slot.slot = 4
	slot.weapon = global.player.equipped_weapons[4]
	var count = 0
	for (var i=0; i<array_length(global.player.weapons); i+=1) {
		if (global.player.weapons[i] == slot.weapon) {
			count += 1;	
		}
	}
	slot.lvl = count
	array_push(slots, slot)
	var slot = instance_create_depth(x_+176,y_,1,WeaponSlot)
	slot.slot = 5
	slot.weapon = global.player.equipped_weapons[5]
	var count = 0
	for (var i=0; i<array_length(global.player.weapons); i+=1) {
		if (global.player.weapons[i] == slot.weapon) {
			count += 1;	
		}
	}
	slot.lvl = count
	array_push(slots, slot)
	var slot = instance_create_depth(x_+80,y_-288,1,WeaponSlot)
	slot.slot = 6
	slot.weapon = global.player.equipped_weapons[6]
	var count = 0
	for (var i=0; i<array_length(global.player.weapons); i+=1) {
		if (global.player.weapons[i] == slot.weapon) {
			count += 1;	
		}
	}
	slot.lvl = count
	array_push(slots, slot)
	var slot = instance_create_depth(x_,y_-288,1,WeaponSlot)
	slot.slot = 7
	slot.weapon = global.player.equipped_weapons[7]
	var count = 0
	for (var i=0; i<array_length(global.player.weapons); i+=1) {
		if (global.player.weapons[i] == slot.weapon) {
			count += 1;	
		}
	}
	slot.lvl = count
	var count = 0
	for (var i=0; i<array_length(global.player.weapons); i+=1) {
		if (global.player.weapons[i] == slot.weapon) {
			count += 1;	
		}
	}
	slot.lvl = count
	array_push(slots, slot)
	var slot = instance_create_depth(x_-80,y_-288,1,WeaponSlot)
	slot.slot = 8
	slot.weapon = global.player.equipped_weapons[8]
	var count = 0
	for (var i=0; i<array_length(global.player.weapons); i+=1) {
		if (global.player.weapons[i] == slot.weapon) {
			count += 1;	
		}
	}
	slot.lvl = count
	array_push(slots, slot)
	var slot = instance_create_depth(x_,y_-208,1,WeaponSlot)
	slot.slot = 9
	slot.weapon = global.player.equipped_weapons[9]
	var count = 0
	for (var i=0; i<array_length(global.player.weapons); i+=1) {
		if (global.player.weapons[i] == slot.weapon) {
			count += 1;	
		}
	}
	slot.lvl = count
	array_push(slots, slot)
	
	for (var i=0; i<array_length(slots); i++;) {
		if WeaponLevel(slots[i].weapon) >= 10 {
			slots[i].blue = true	
		}
	}
	//look for synergies
	for (var i=0; i<array_length(slots); i++;) {
		for (var j=0; j<array_length(global.synergies); j++;) {
			if (slots[i].blue && array_contains(global.synergies[j], slots[i].weapon)) {
				for (var k=0; k<array_length(slots); k++;) {
					if (slots[k] != slots[i]) && slots[k].blue && array_contains(global.synergies[j], slots[k].weapon) {
						slots[i].green = true
						slots[i].synergy = slots[k]
						slots[k].synergy = slots[i]
						slots[i].evolution = global.synergies[j][2]
						slots[k].evolution = global.synergies[j][2]
						slots[k].green = true
					}
				}
			}
		}
	}
	
	
	
	var skipped = 0
	inv_slots = []
	for (var i = 0; i<array_length(global.player.unique_weapons); i++;){
		if !(array_contains(global.player.equipped_weapons,global.player.unique_weapons[i])) {
			var slot = instance_create_depth(round(cam_x + cam_width/2)+64+((i-skipped) mod 9)*64,round(cam_y + cam_height/2)+180+64*floor((i-skipped)/9),3,InvSlot)
			slot.item = global.player.unique_weapons[i]
			slot.slot = Slot(global.player.unique_weapons[i])
			if (WeaponLevel(slot.item)) >= 10 {
				slot.blue = true	
			}
			slot.lvl = WeaponLevel(slot.item)
			array_push(inv_slots,slot)
		} else {
			skipped+=1	
		}
	}
	
	for (var i = 0; i<array_length(sell_slots); i++;) {
		sell_slots[i].x = round(cam_x)+64+((i) mod 9)*64
		sell_slots[i].y = round(cam_y + cam_height/2)+180+64*floor((i)/9)
		var inst = instance_create_depth(0,0,0,sell_slots[i].item)
		sell_slots[i].scrap = inst.scrap
		instance_destroy(inst)
	}
	
}
CreateInventory()