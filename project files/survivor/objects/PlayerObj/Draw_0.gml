/// @description Insert description here
// You can write your code in this editor
draw_self()

//draw barrier
if y < 300 {
	draw_line_color(x,0,x+7000/y,0,c_aqua,c_black)	
	draw_line_color(x,0,x-7000/y,0,c_aqua,c_black)	
}
if y > room_height - 300 {
	draw_line_color(x,room_height,x+7000/(room_height-y),room_height,c_aqua,c_black)	
	draw_line_color(x,room_height,x-7000/(room_height-y),room_height,c_aqua,c_black)	
}

if x < 300 {
	draw_line_color(0,y,0,y+7000/x,c_aqua,c_black)	
	draw_line_color(0,y,0,y-7000/x,c_aqua,c_black)	
}
if x > room_width - 300 {
	draw_line_color(room_width,y,room_width,y+7000/(room_width-x),c_aqua,c_black)	
	draw_line_color(room_width,y,room_width,y-7000/(room_width-x),c_aqua,c_black)	
}


if ability_cooldown > 0 {
	draw_circular_HP(x+1.5,y+1.5,(cooldown/global.cdr-ability_cooldown)/2.3,cooldown/global.cdr,c_red,70,0.7,6,false)
	draw_circular_HP(x-1.5,y-1.5,(cooldown/global.cdr-ability_cooldown)/2.3,cooldown/global.cdr,c_aqua,70,0.7,6,false)
	draw_circular_HP(x,y,(cooldown/global.cdr-ability_cooldown)/2.3,cooldown/global.cdr,c_lime,70,0.7,6,false)
}

if prev_hp > hp {
	draw_hp = true
	draw_circular_HP(x+1.5,y+1.5,(hp)/2.3,max_hp,c_maroon,70,0.9,6, true)
	draw_circular_HP(x-1.5,y-1.5,(hp)/2.3,max_hp,c_aqua,70,0.9,6, true)
	draw_circular_HP(x,y,(hp)/2.3,max_hp,c_red,70,0.9,6, true)
} else if draw_hp && draw_hp_timer > 0 {
	draw_hp_timer -= 1
	draw_circular_HP(x+1.5,y+1.5,(hp)/2.3,max_hp,c_maroon,70,draw_hp_timer/100-0.1,6, true)
	draw_circular_HP(x-1.5,y-1.5,(hp)/2.3,max_hp,c_aqua,70,draw_hp_timer/100-0.1,6, true)
	draw_circular_HP(x,y,(hp)/2.3,max_hp,c_red,70,draw_hp_timer/100-0.1,6, true)
} else if draw_hp_timer <= 0 {
	draw_hp_timer = 100
	draw_hp = false
}

prev_hp = hp