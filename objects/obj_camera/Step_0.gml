x += random_range(-screenshake, screenshake);
y += random_range(-screenshake, screenshake);

if (!instance_exists(obj_skeleton))
	exit;

var targetX = obj_skeleton.x;
var targetY = obj_skeleton.y - 48;

x = lerp(x, targetX, 0.2);
y = lerp(y, targetY, 0.2);

camera_set_view_pos(view_camera[0], x - width / 2, y - height / 2);