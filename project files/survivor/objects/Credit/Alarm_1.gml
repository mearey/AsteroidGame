/// @description Insert description here
// You can write your code in this editor
var fix = physics_fixture_create()

physics_fixture_set_box_shape(fix, sprite_width/2, sprite_height/2)
physics_fixture_set_collision_group(fix, 1)
physics_fixture_set_density(fix, 0.5)
physics_fixture_set_angular_damping(fix, 0)
physics_fixture_set_friction(fix, 0)
physics_fixture_set_linear_damping(fix, 0)

physics_fixture_bind(fix, self)

phy_linear_velocity_x = random_range(-100,100)
phy_linear_velocity_y = random_range(-100,100)
init = true