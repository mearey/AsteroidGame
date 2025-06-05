// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function intialiseParticles(){
	global.p_system = part_system_create_layer("particles", false)
	part_system_depth(global.p_system, -1);
	//bullet particle
	global.deadbullet = part_type_create();
	part_type_sprite(global.deadbullet,bulletSprite, 0, 0,0 );
	part_type_speed(global.deadbullet,0.6,1.5,-0.01,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	part_type_life(global.deadbullet,10,15);      
	part_type_alpha2(global.deadbullet, 1,0);
	part_type_scale(global.deadbullet,0.5,0.5)
	
	//laser particle
	global.deadlaser = part_type_create();
	part_type_sprite(global.deadlaser,laserSprite, 0, 0,0 );
	part_type_speed(global.deadlaser,0.6,1.5,-0.01,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	part_type_life(global.deadlaser,20,25);      
	part_type_alpha2(global.deadlaser, 1,0.5);
	part_type_scale(global.deadlaser,0.7,0.7)

	
	//sword 1 trail particle
	global.swordtrail = part_type_create();
	part_type_sprite(global.swordtrail,Ship_Sword_blade, 0, 0,0 );
	part_type_speed(global.swordtrail,0,0,0,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	part_type_life(global.swordtrail,20,20);      
	part_type_alpha2(global.swordtrail, 1,0);
	part_type_scale(global.swordtrail,1,1)
	part_type_color3(global.swordtrail,c_yellow,c_olive, c_olive)
	
	//exhaust
	global.exhaust = part_type_create();
	part_type_sprite(global.exhaust,ExhaustSprite, 0, 0,0 );
	part_type_speed(global.exhaust,0,0,0,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	part_type_life(global.exhaust,20,20);      
	part_type_alpha2(global.exhaust, 1,0);
	part_type_scale(global.exhaust,1,1)
	part_type_color3(global.exhaust,c_white,c_yellow, c_yellow)
	
	global.plasma = part_type_create();
	part_type_sprite(global.plasma,Flame, 0, 0,0 );
	part_type_speed(global.plasma,0.2,1,-0.01,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	part_type_life(global.plasma,10,15);      
	part_type_alpha2(global.plasma, 0.8,0);
	part_type_scale(global.plasma,0.5,0.5)
	part_type_size(global.plasma, 1,1,-0.1,0.1)
	
	global.asteroid_trail = part_type_create();
	part_type_sprite(global.asteroid_trail,Flame, 0, 0,0 );
	part_type_speed(global.asteroid_trail,0.2,1,-0.01,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	part_type_life(global.asteroid_trail,40,60);      
	part_type_alpha2(global.asteroid_trail, 0.8,0);
	part_type_size(global.asteroid_trail, 1,1,-0.03,0.1)
	part_type_color_mix(global.asteroid_trail, c_orange, c_yellow)
	
	global.asteroid_trail_toxic = part_type_create();
	part_type_sprite(global.asteroid_trail_toxic,Toxic_cloud, 0, 0,0 );
	part_type_speed(global.asteroid_trail_toxic,0.2,1,-0.01,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	part_type_life(global.asteroid_trail_toxic,40,60);      
	part_type_alpha2(global.asteroid_trail_toxic, 0.8,0);
	part_type_size(global.asteroid_trail_toxic, 1,1,-0.03,0.1)
	part_type_color_mix(global.asteroid_trail_toxic, c_white, c_gray)
	
	global.enemy_laser_trail = part_type_create();
	part_type_sprite(global.enemy_laser_trail,EnemyLaserSprite, 0, 0,0 );            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
	//part_type_life(global.asteroid_trail,40,60);
	part_type_alpha2(global.enemy_laser_trail, 0.8,0);
	part_type_color_mix(global.enemy_laser_trail, c_lime, c_green)
	
}