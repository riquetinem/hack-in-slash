event_inherited();
state = "chase";
hp = 1;
max_hp = hp;
image_speed = 0.2;

hspeed = random_range(1, 2);
if (instance_exists(obj_skeleton))
	hspeed *= sign(obj_skeleton.x - x);
	
image_xscale = sign(hspeed);
damage = 5;
attacked = false;
experience = 2;
knockBack = 4;