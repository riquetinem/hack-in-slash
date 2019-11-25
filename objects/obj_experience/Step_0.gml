if (!instance_exists(obj_skeleton))
	exit;

var dir = point_direction(x, y, obj_skeleton.x, obj_skeleton.y);
var acceleration = 0.25;

motion_add(dir, acceleration);
var maxSpeed = 6;
if(speed > maxSpeed){
	speed = maxSpeed;
}