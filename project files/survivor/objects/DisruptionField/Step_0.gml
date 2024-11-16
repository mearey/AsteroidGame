/// @description Insert description here
// You can write your code in this editor
x = global.player.x 
y = global.player.y 
image_angle = global.player.image_angle


if !global.pauseObj.paused {
	var list = ds_list_create();
	var num = collision_circle_list(x,y,64*size,Enemy,false,true,list,false)
	for (var i = 0; i<num; i++) {
		list[| i].takeDamage(global.player.dmg/22)
	}
	
}