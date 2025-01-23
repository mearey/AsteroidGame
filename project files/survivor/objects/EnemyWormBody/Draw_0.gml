/// @description Insert description here
// You can write your code in this editor
if num==0 {
	if instance_exists(head) {
		draw_line_color(x+random_range(-5,5),y+random_range(-5,5),head.x+random_range(-5,5),head.y+random_range(-5,5),c_fuchsia,c_fuchsia)
		draw_line_color(x+random_range(-5,5),y+random_range(-5,5),head.x+random_range(-5,5),head.y+random_range(-5,5),c_fuchsia,c_fuchsia)
		draw_line_color(x+random_range(-5,5),y+random_range(-5,5),head.x+random_range(-5,5),head.y+random_range(-5,5),c_fuchsia,c_fuchsia)
	}
} else {
	if instance_exists(head.body[num-1]){
		draw_line_color(x,y+random_range(-5,5),head.body[num-1].x+random_range(-5,5),head.body[num-1].y,c_fuchsia,c_fuchsia)
	}
}
draw_self()