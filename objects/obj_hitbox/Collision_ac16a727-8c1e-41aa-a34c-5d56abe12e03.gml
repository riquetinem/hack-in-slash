if (creator = noone || creator == other || ds_list_find_index(hitObjects, other) != -1)
	exit;

other.hp -= damage;
ds_list_add(hitObjects, other);
other.state = "knockback";
other.knockbackSpeed = knockBack * image_xscale;
other.image_xscale = -image_xscale;