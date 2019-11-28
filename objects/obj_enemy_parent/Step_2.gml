if (hp <= 0 && state != "death") {	
	state = "death";
	
	repeat (experience)
		instance_create_layer(x + random_range(-4, 4), y + irandom_range(-4, 4),
							 "Effects", obj_experience);
}