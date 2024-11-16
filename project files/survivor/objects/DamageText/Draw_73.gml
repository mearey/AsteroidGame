/// @description Insert description here
// You can write your code in this editor
var val = round(number*100)
var text_scale =  clamp(val/50,0.7,5)
var number_ = max(string(val),1)
draw_set_alpha(timer/50-0.3)
draw_set_font(SmallUIFont)
draw_set_color(c_black)
draw_text_transformed(x-1*(val/50),y-1*(val/50)+timer-70,number_,text_scale,text_scale,0)
draw_set_color(c_red)
draw_text_transformed(x,y+timer-70,number_,text_scale,text_scale,0)
draw_set_font(DefaultFont)
draw_set_color(c_white)