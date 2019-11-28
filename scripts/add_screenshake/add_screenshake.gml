///@arg intensity
///@arg duration 
var intensity = argument[0];
var duration = argument[1];

if (!instance_exists(obj_camera))
	exit;
	
with (obj_camera) {
	screenshake = intensity;
	alarm[0] = duration;
}