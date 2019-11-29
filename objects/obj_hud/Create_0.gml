var cameraId = view_camera[0];
var viewWidth = camera_get_view_width(cameraId);
var viewHeight = camera_get_view_height(cameraId);
display_set_gui_size(viewWidth, viewHeight);

if (!instance_exists(obj_skeleton))
	exit;
	
drawHp = obj_skeleton.hp;
drawMaxHp = obj_skeleton.max_hp;
draw_set_font(fnt_one);

audio_play_sound(a_music, 4, true);