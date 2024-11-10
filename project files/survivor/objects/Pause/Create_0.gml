/// @description Insert description here
// You can write your code in this editor
global.pauseObj = self

paused = false;
paused_surf = -1;

upgrades = false



function pause(upgrade) {
	paused = !paused;
	if paused_surf == -1 {
		//instance_deactivate_all(true);
		physics_pause_enable(true);
		if (upgrade) {
			upgrades = true
			instance_create_depth(camera_get_view_x(view_camera[0])+ surface_get_width(application_surface)/2 - (64+16),camera_get_view_y(view_camera[0])+ surface_get_height(application_surface)/2,1,StatSelection)
			instance_create_depth(camera_get_view_x(view_camera[0])+ surface_get_width(application_surface)/2,camera_get_view_y(view_camera[0])+ surface_get_height(application_surface)/2,1,StatSelection)
			instance_create_depth(camera_get_view_x(view_camera[0])+ surface_get_width(application_surface)/2 + (64+16),camera_get_view_y(view_camera[0])+ surface_get_height(application_surface)/2,1,StatSelection)	
		} else {
			instance_create_depth(x,y,1,PauseSelector)	
		}
	}
	if paused == false {
	    instance_activate_all();
		with (PauseSelector) {
			instance_destroy(self)	
		}
		with (StatSelection) {
			instance_destroy(self)	
		}
		physics_pause_enable(false)
	    paused_surf = -1;
		//remove weapon get display if it exists
		if (instance_exists(WeaponGetObject)) {
			with (WeaponGetObject) {
				instance_destroy(self)	
			}
		}
	}
}