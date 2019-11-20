///@arg knockbackSprite
///@arg nextState

var knockbackSprite = argument0;
var nextState = argument1;

set_state_sprite(knockbackSprite, 0, 0);
image_xscale = -sign(knockbackSpeed);
move_and_collide(knockbackSpeed, 0);
var knockback_friction = 0.3;
knockbackSpeed = approach(knockbackSpeed, 0, knockback_friction);
if(knockbackSpeed == 0)
	state = nextState;