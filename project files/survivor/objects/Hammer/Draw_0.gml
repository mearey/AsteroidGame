/// @description Insert description here
// You can write your code in this editor
draw_self()

var rand = random_range(1,5)
draw_line_color(x+rand,y+rand,global.player.x-rand,global.player.y-rand,c_white,c_aqua)
draw_line_color(x-rand ,y-rand,global.player.x+rand,global.player.y+rand,c_white,c_aqua)