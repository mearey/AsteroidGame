/// @description Insert description here
// You can write your code in this editor
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])


if upgrade {
if cost!=0 {
	if x > surface_get_width(application_surface)/2{
		draw_text(x+100,y,string(cost))
		draw_sprite(CoinSprite,0,x-camx+80,y-camy)
	} else {
		draw_text(x-100,y,string(cost))
		draw_sprite(CoinSprite,0,x-camx-120,y-camy)
	}
}

for (var i = 0; i< max_points; i++) {
	x_ = x-camx+i*8-50
	y_ = y-camy+20
	draw_rectangle_color(x_-1,y_-1,x_+6+1,y_+20+1,c_black,c_black,c_black,c_black, false)
	draw_rectangle(x_-1,y_-1,x_+6+1,y_+20+1,true)
}
for (var i = 0; i< points; i++) {
	x_ = x-camx+i*8-50
	y_ = y-camy+20
	draw_rectangle_color(x_+1,y_+1,x_+6-1,y_+20-1,c_aqua,c_aqua,c_aqua,c_aqua,false)	
}
} else {
	sprite_index = 	ButtonSprite
}