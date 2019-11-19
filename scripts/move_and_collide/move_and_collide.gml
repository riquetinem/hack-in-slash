///@arg xSpeed
///@arg ySpeed
var xSpeed = argument0;
var ySpeed = argument1;

if (!place_meeting(x + xSpeed, y, obj_wall))
	x += xSpeed;
	
if (!place_meeting(x, y + ySpeed, obj_wall))
	y += ySpeed;