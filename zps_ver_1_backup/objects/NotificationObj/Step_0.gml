/// @description Insert description here
// You can write your code in this editor
if offset > 0 {
	offset-=4
}
if alm {
	alpha = alarm[0]/100
}

timer -= 1

if timer <= 0  and alm =false{
	alm=true
	alarm[0] = 100
}
