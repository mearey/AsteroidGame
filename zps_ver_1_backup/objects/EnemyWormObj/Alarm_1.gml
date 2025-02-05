/// @description Insert description here
// You can write your code in this editor

body = []
for (var i = 0; i<length; i++;) {
	var modifier = 1
	if x<room_width/2 {
		modifier = -1	
	}
	array_push(body,instance_create_depth(x+20+20*i*modifier,y,1,EnemyWormBody))	
	if i ==0 {
		var link = physics_joint_rope_create(self, body[i], x, y, body[i].x, body[i].y,25, false)
		physics_joint_set_value(link, phy_joint_damping_ratio, 1)
		physics_joint_set_value(link, phy_joint_frequency, 10)
	} else {
		var link = physics_joint_rope_create(body[i-1], body[i], body[i-1].x, body[i-1].y, body[i].x-3, body[i].y,25, false)
		physics_joint_set_value(link, phy_joint_damping_ratio, 1)
		physics_joint_set_value(link, phy_joint_frequency, 10)
	}
	body[i].head = self
	body[i].image_index = int64(i) mod 9
	body[i].image_speed = random_range(0.5,1.5)
	body[i].num = i
}
move = true