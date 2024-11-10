/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(timer/50)
draw_set_font(SmallUIFont)
draw_set_color(c_black)
var val = round(number*100)
draw_text_transformed(x-1,y-1+timer-70,string(val),val/50,val/50,0)
draw_set_color(c_red)
draw_text_transformed(x,y+timer-70,string(val),val/50,val/50,0)
draw_set_font(DefaultFont)
draw_set_color(c_white)