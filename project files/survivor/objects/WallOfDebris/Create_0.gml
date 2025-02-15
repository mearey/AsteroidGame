/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
move_cooldown = 200;

starter_sprites = [SateliteDebrisSprite, RocketWholeSprite, Asteroid,SateliteDebrisSprite, RocketWholeSprite, Asteroid,  DebrisGrabberSprite, AsteroidBoss,GunDebris,GunDebris]

sprites = []
x_coords = []
y_coords = []
rotations = []
sizes = []

max_hp = 4000
hp = 4000

lighting_size = 0
lighting_intensity = 0

hard = false

start_y = -160


spawn_timer = 100
spawn_timer_real = spawn_timer

for (var i = 0; i<1000; i+=1) {
	array_push(sprites, starter_sprites[round(random_range(0,9))])	
	array_push(x_coords, random_range(0,room_width))
	array_push(y_coords, random_range(0,150))
	array_push(rotations, random_range(0,360))
	array_push(sizes, random_range(0.7,1.7))
}	

//moves
moves = [
	function move0() {
		var cam_x = camera_get_view_x(view_get_camera(0))
		var cam_y = camera_get_view_y(view_get_camera(0))
		if random(1)<0.5 {
			var inst  = instance_create_depth(cam_x-200,cam_y+surface_get_height(application_surface),-4,Boss2Arm)
		} else {
			var inst  = instance_create_depth(cam_x+surface_get_width(application_surface)+200,cam_y+surface_get_height(application_surface),-4,Boss2Arm)
		}
		move_cooldown = 1500
	},
	function move01() {
		
		move_cooldown = 51
	},
	function move1() {
		hard = true
		alarm[1] = 20
		alarm[2] = 40
		alarm[3] = 60
		alarm[4] = 80
		alarm[5] = 100
		move_cooldown = 200
	},
	function move2() {
		hard = false
		alarm[1] = 20
		alarm[2] = 40
		alarm[3] = 60
		alarm[4] = 80
		alarm[5] = 100
		move_cooldown = 100
	}
]

function laserPlayer() {

}

function laserPlayerHard() {
	if !global.pauseObj.paused {
		if hard {
			var cam_x = camera_get_view_x(view_get_camera(0))
			var cam_y = camera_get_view_y(view_get_camera(0))
			var inst  = instance_create_depth(random_range(cam_x,cam_x+surface_get_width(application_surface)),random_range(cam_y,cam_y+160),-5,GunDebrisBeam)
			inst.image_angle = point_direction(inst.x,inst.y,global.player.x,global.player.y)-180
		} else {
			var cam_x = camera_get_view_x(view_get_camera(0))
			var cam_y = camera_get_view_y(view_get_camera(0))
			var inst  = instance_create_depth(random_range(cam_x,cam_x+surface_get_width(application_surface)),random_range(cam_y,cam_y+160),-5,GunDebrisBeam)
			inst.image_angle = -point_direction(inst.x,inst.y,global.player.x,global.player.y)
		}
	}
}

