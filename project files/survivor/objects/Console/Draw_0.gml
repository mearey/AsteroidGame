/// @description Insert description here
// You can write your code in this editor
if open {
	var flag = phy_debug_render_coms | phy_debug_render_shapes | phy_debug_render_aabb | phy_debug_render_collision_pairs | phy_debug_render_obb;
	physics_world_draw_debug(flag);
}