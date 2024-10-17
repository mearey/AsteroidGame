/// @description Insert description here
// You can write your code in this editor
event_inherited()
lighting_colour = c_aqua
pool = global.weaponPool

treasure_got = false;

image_speed = 0;

function chestOpen() {
	physics_apply_impulse(x,y,lengthdir_x(-2,point_direction(x,y,global.player.x, global.player.y)), lengthdir_y(-2,point_direction(x,y,global.player.x, global.player.y)))	
	if (array_length(pool) > 0) {
		global.pauseObj.pause(false)
		instance_destroy(PauseSelector)
		weaponNumber = random_range(0,array_length(pool)-1)
		weapon_display = instance_create_depth(window_get_width()/2+camera_get_view_x(view_get_camera(0)),window_get_height()/2+camera_get_view_y(view_get_camera(0)),1,WeaponGetObject)
		weapon_display.weapon_sprite = object_get_sprite(pool[weaponNumber])
		weapon_display.weapon = (pool[weaponNumber])
		
		weaponNumber = random_range(0,array_length(pool)-1)
		weapon_display = instance_create_depth(window_get_width()/2-200+camera_get_view_x(view_get_camera(0)),window_get_height()/2+camera_get_view_y(view_get_camera(0)),1,WeaponGetObject)
		weapon_display.weapon_sprite = object_get_sprite(pool[weaponNumber])
		weapon_display.weapon = (pool[weaponNumber])
		
		weaponNumber = random_range(0,array_length(pool)-1)
		weapon_display = instance_create_depth(window_get_width()/2+200+camera_get_view_x(view_get_camera(0)),window_get_height()/2+camera_get_view_y(view_get_camera(0)),1,WeaponGetObject)
		weapon_display.weapon_sprite = object_get_sprite(pool[weaponNumber])
		weapon_display.weapon = (pool[weaponNumber])
		
		global.pauseObj.upgrades = true
		
		treasure_got = true
		image_speed = 1;
		saveState();
	} else {
		global.player.addXP(global.player.max_xp/5)
		treasure_got = true
		image_speed = 1;
		global.pauseObj.pause(false)
		instance_destroy(PauseSelector)
		weapon_display = instance_create_depth(window_get_width()/2,window_get_height()/2,1,WeaponGetObject)
		weapon_display.weapon_sprite = EXPOrb
		weapon_display.weapon = (NaN)
	}
}