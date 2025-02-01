/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var bullet = instance_create_depth(eye_x,eye_y,1,GiantLaserShot)
bullet.projectile_speed = 16
bullet.direction = dir
image_index = 0

audio_stop_sound(buttonSwitch)

move_cooldown = 100
move_using = false

PlaySFX(laser,0.3,2)