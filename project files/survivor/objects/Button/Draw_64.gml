/// @description Insert description here
// You can write your code in this editor
if cost>0 && locked{
	if x > surface_get_width(application_surface)/2{
		draw_text(x+100,y,string(cost))
		draw_sprite(CoinSprite,0,x+80,y)
	} else {
		draw_text(x-100,y,string(cost))
		draw_sprite(CoinSprite,0,x-120,y)
	}
}