var enemyCount = instance_number(obj_enemy_parent);

if (instance_exists(obj_skeleton) && enemyCount < obj_skeleton.kills/4) {
	if (enemyCount > 5) 
		exit;
		
	var enemy = choose(obj_knigth, obj_crow, obj_crow);
	if (obj_skeleton.kills > 20 && !instance_exists(obj_boss))
		var enemy = choose(obj_knigth, obj_knigth, obj_crow, obj_crow, obj_boss);
	
	var newX = random_range(220, room_width - 220);
	while (point_distance(newX, 0, obj_skeleton.x, 0) < 200) {
		newX = random_range(220, room_width - 220);
	}
	
	instance_create_layer(newX, obj_skeleton.y, "Instances", enemy);
}