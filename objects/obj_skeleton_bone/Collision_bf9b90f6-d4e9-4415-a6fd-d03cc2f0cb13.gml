if vspeed > 1 {
	vspeed *= -0.5;
	
	for (var i = 0; i < random_range(10, 100); i++){
		vspeed = 0;	
	}
} else {
	vspeed = 0;
	while !place_meeting(x, y, obj_wall) {
		y++;
	}
	
	gravity = 0;
	friction = 1;
}
