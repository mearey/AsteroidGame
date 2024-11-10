/// @description Insert description here
// You can write your code in this editor
if animationframe < 15 {
	animationframe+=0.2
} else {
	animationframe = 0	
}
	
	
	
if collision_circle(x,y,16,global.ship_selection,false,true) {
	instance_destroy(self)
	for (var i=0; i<number; i+=1) {
		global.player.addWeapon(weapon)
	}
	PlaySFX(WeaponGetSound,1,1)
	var temp = instance_create_depth(0,0,0,weapon)
	Notification("+1 lvl " + string(number) + " " +string_replace(sprite_get_name(temp.sprite_index),"_"," "), temp.sprite_index, 3)
	instance_destroy(temp)
}