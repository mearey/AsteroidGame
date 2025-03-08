/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if !global.pauseObj.paused {
	lifetime -= 1
}

if lifetime <= 0 {
	instance_destroy(self)	
}

if !global.pauseObj.paused {
if speed > 0 {
	speed -= 0.1;
}
life -= 1

x+= lengthdir_x(speed,direction)
y+= lengthdir_y(speed,direction)

if held_enemy == -1 {
	var enem = collision_circle(x,y,8,Enemy,false,true)
	if enem {
		held_enemy = enem
	}
} else if instance_exists(held_enemy) {
	held_enemy.phy_position_x = x
	held_enemy.phy_position_y = y
	held_enemy.takeDamage(dmg)
}


if life<=0 {
	instance_destroy(self)	
}
}