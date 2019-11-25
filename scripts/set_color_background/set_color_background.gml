///@arg nameBackground
///@arg color
var nameBackground = argument0;
var color = argument1;

var layerId = layer_get_id(nameBackground);
var backgroundId = layer_background_get_id(layerId);
layer_background_blend(backgroundId, color);