/// @description Insert description here
// You can write your code in this editor
event_inherited()
lighting_colour = c_aqua
p_system = part_system_create_layer("particles", false)
part_system_depth(p_system, -999);
menuparticle = part_type_create();
part_type_sprite(menuparticle,MenuSelector, 0, 0,0 );
part_type_speed(menuparticle,0,0,0,0);            //The particles speed//part_type_orientation(global.particle1,0,0,0,0,true);        //This changes the rotation of the particle                       //This is the blend mode, either additive or normal
part_type_life(menuparticle,100,150);      
part_type_alpha2(menuparticle, 1,0.5)
part_type_scale(menuparticle,1,1);
part_type_size(menuparticle,1,1,-0.03,0)
part_system_automatic_draw(p_system,false);
visible = false
alarm[7] = 1