if (creator = noone || creator == other || ds_list_find_index(hitObjects, other) != -1)
	exit;

other.hp -= damage;

if (instance_exists(obj_skeleton) && creator.object_index == obj_skeleton && other.hp <= 0){
	obj_skeleton.kills++;
}

ds_list_add(hitObjects, other);
other.state = "knockback";
other.knockbackSpeed = knockBack * image_xscale;
other.image_xscale = -image_xscale;