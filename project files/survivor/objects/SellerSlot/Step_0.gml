/// @description Insert description here
// You can write your code in this editor

if (mouse_x-cam_x < bbox_right-cam_x && mouse_x-cam_x > bbox_left-cam_x) && (mouse_y-cam_y > bbox_top-cam_y && mouse_y-cam_y < bbox_bottom-cam_y) {
	hovered = true
} else {
	hovered = false
}

if hovered && (mouse_check_button_pressed(mb_left) || CheckControllerButton()) {
	dragging = true
}

if !(mouse_check_button(mb_left)) && dragging {
	dragging = false
	if mouse_x > surface_get_width(application_surface)/2 {
		if global.player.scrap >= cost {
			global.player.scrap-=cost
			global.player.addWeapon(item)
			instance_destroy(self)
			instance_find(PauseSelector,0).CreateInventory()
		}
	}
}

var inst = instance_create_depth(0,0,0,item)
cost = inst.scrap*1.5*(1/global.neon)*(1/global.shady)
instance_destroy(inst)
