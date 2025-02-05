/// @description Insert description here
// You can write your code in this editor
draw_self()

if ability_cooldown > 0 {
	draw_circular_HP(x,y,(cooldown/global.cdr-ability_cooldown)/2.3,cooldown/global.cdr,c_lime,70,0.7,6,false)
}

if prev_hp > hp {
	draw_hp = true
	draw_circular_HP(x,y,(hp)/2.3,max_hp,c_red,70,0.9,6, true)
} else if draw_hp && draw_hp_timer > 0 {
	draw_hp_timer -= 1
	draw_circular_HP(x,y,(hp)/2.3,max_hp,c_red,70,draw_hp_timer/100-0.1,6, true)
} else if draw_hp_timer <= 0 {
	draw_hp_timer = 100
	draw_hp = false
}

prev_hp = hp