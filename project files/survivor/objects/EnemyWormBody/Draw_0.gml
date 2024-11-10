/// @description Insert description here
// You can write your code in this editor
if num==0 {
	draw_line_color(x,y,head.x,head.y,c_purple,c_purple)
} else {
	draw_line_color(x,y,head.body[num-1].x,head.body[num-1].y,c_purple,c_purple)
}
draw_self()