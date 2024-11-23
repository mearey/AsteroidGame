/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !global.pauseObj.paused && !traded {
if collision_circle(x+x_,y+y_,64,global.player,false,true) {
	timer -= 1;	
	x = x-lengthdir_x(1,dir)/2
	y = y-lengthdir_y(1,dir)/2
	if timer <= 0 && global.player.hp>0 {
		instance_find(Pause,0).pause(false)
		instance_find(PauseSelector,0).trader = true
		traded = true
		image_index = 14
	}
	image_index += 0.05
} else if timer < 300 {
	timer += 1
	image_index -= 0.05
}

}

if !global.pauseObj.paused {
		
x= x+lengthdir_x(1,dir)
y= y+lengthdir_y(1,dir)

instance_create_depth(x,y,1,TraderExhaustObj).image_angle = image_angle
}