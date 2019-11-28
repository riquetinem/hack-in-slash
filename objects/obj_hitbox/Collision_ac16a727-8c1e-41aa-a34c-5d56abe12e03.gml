if (creator == noone || creator == other || ds_list_find_index(hitObjects, other) != -1)
	exit;

other.hp -= damage;
repeat (10) {
	instance_create_layer(other.x, other.y - 12, "Effects", obj_hit_effect);
}

if (instance_exists(obj_skeleton)){
	if (creator.object_index == obj_skeleton && other.hp <= 0)
		obj_skeleton.kills++;
	
	if (other.object_index == obj_skeleton) {
		
		add_screenshake(6, 10);
		
		if (other.hp <= 0){
			var number = sprite_get_number(spr_skeleton_bones);

			for (var i = 0; i < number; i++) {
				var bx = other.x + random_range(-8, 8);
				var by = other.y + random_range(-24, 8);
				var bone = instance_create_layer(bx, by, "Instances", obj_skeleton_bone);
				bone.direction = 90 - (image_xscale * random_range(30, 60));
				bone.speed = random_range(3, 10);
				bone.image_index = i;
				if (i == 5)
					bone.image_angle = 130;
			}
		}
	} else {
		other.alarm[0] = 120;	
		add_screenshake(2, 5);
	}
} else {
	exit;
}

ds_list_add(hitObjects, other);
other.state = "knockback";
other.knockbackSpeed = knockBack * image_xscale;
other.image_xscale = -image_xscale;