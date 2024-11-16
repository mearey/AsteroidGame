/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1)
for (var i = 0; i<hp/(max_hp/1000); i+=1) {
	draw_sprite_ext(sprites[i],0,x_coords[i],y+y_coords[i]-78,sizes[i],sizes[i],rotations[i],c_white,1)
}