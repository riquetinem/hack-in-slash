move_and_collide(knockbackSpeed, 0);
var knockback_friction = 0.3;
knockbackSpeed = approach(knockbackSpeed, 0, knockback_friction);