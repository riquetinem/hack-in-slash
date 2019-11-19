///@arg x
///@arg y
///@arg creator
///@arg sprite
///@arg knockBack
///@arg lifeSpan
///@arg damage
///@arg xScale

var xPosition = argument0;
var yPosition = argument1;
var creator = argument2;
var _sprite = argument3;
var knockBack = argument4;
var lifeSpan = argument5;
var damage = argument6;
var xScale = argument7;


var hitbox = instance_create_layer(xPosition, yPosition, "Instances", obj_hitbox);
hitbox.sprite_index = _sprite;
hitbox.creator = creator;
hitbox.knockBack = knockBack;
hitbox.alarm[0] = lifeSpan;
hitbox.damage = damage;
hitbox.image_xscale = xScale;
