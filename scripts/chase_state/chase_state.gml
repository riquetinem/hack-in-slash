if (!instance_exists(obj_skeleton)) 
	exit;
		
// mantem o inimigo sempre virado para o player
image_xscale = sign(obj_skeleton.x - x);
if(image_xscale == 0)
	image_xscale = 1;
			
var directionFacing = image_xscale;
			
var distance_to_player = point_distance(x, y, obj_skeleton.x, obj_skeleton.y);
if (distance_to_player <= attackRange)
	state = "attack";
else
	move_and_collide(directionFacing * chaseSpeed, 0);