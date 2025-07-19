/// @description Insert description here
// You can write your code in this editor
event_inherited()
lighting_colour = c_aqua
lighting_size = 5

treasure_got = false;

if random(1) < 0.05 {
	sprite_index = chest_deviledeggcake
}


image_speed = 0;

function chestOpen() {
	if sprite_index == chest_deviledeggcake {
		PlaySFX(fruitata, 1,1)
		PlayerObj.hp = PlayerObj.max_hp
	}
	physics_apply_impulse(x,y,lengthdir_x(-2,point_direction(x,y,global.player.x, global.player.y)), lengthdir_y(-2,point_direction(x,y,global.player.x, global.player.y)))	
	if (array_length(global.weaponPool) > 0) {
		global.pauseObj.pause(false)
		instance_destroy(PauseSelector)
		weaponNumber = random_range(0,array_length(global.weaponPool))
		weapon_display = instance_create_depth(surface_get_width(application_surface)/2+camera_get_view_x(view_get_camera(0)),surface_get_height(application_surface)/2+camera_get_view_y(view_get_camera(0)),1,WeaponGetObject)
		weapon_display.weapon_sprite = object_get_sprite(global.weaponPool[weaponNumber])
		weapon_display.weapon = (global.weaponPool[weaponNumber])
		
		weaponNumber = random_range(0,array_length(global.weaponPool))
		weapon_display = instance_create_depth(surface_get_width(application_surface)/2-200+camera_get_view_x(view_get_camera(0)),surface_get_height(application_surface)/2+camera_get_view_y(view_get_camera(0)),1,WeaponGetObject)
		weapon_display.weapon_sprite = object_get_sprite(global.weaponPool[weaponNumber])
		weapon_display.weapon = (global.weaponPool[weaponNumber])
		
		weaponNumber = random_range(0,array_length(global.weaponPool))
		weapon_display = instance_create_depth(surface_get_width(application_surface)/2+200+camera_get_view_x(view_get_camera(0)),surface_get_height(application_surface)/2+camera_get_view_y(view_get_camera(0)),1,WeaponGetObject)
		weapon_display.weapon_sprite = object_get_sprite(global.weaponPool[weaponNumber])
		weapon_display.weapon = (global.weaponPool[weaponNumber])
		
		global.pauseObj.upgrades = true
		
		treasure_got = true
		image_speed = 1;
	} else {
		global.player.addXP(global.player.max_xp/5)
		treasure_got = true
		image_speed = 1;
		global.pauseObj.pause(false)
		instance_destroy(PauseSelector)
		weapon_display = instance_create_depth(surface_get_width(application_surface)/2,surface_get_height(application_surface)/2,1,WeaponGetObject)
		weapon_display.weapon_sprite = EXPOrb
		weapon_display.weapon = (NaN)
	}
}