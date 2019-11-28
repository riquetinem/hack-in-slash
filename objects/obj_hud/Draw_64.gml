if (!instance_exists(obj_skeleton))
	exit;
var hpX = 8;
var hpY = 8;
var hpWidth = 198;
var hpHeight = 6;

if(instance_exists(obj_skeleton)) {
	drawHp = lerp(drawHp, obj_skeleton.hp, 0.2);
	drawMaxHp = obj_skeleton.max_hp;
} else {
	drawHp = lerp(drawHp, 0, 0.2);
}

// life bar
var hpPercent = drawHp / drawMaxHp;
draw_rectangle_color(hpX, hpY, hpX + (hpWidth * hpPercent), hpY + hpHeight, 
						c_white, c_white, c_white, c_white, false);
						
// bords of life bar						
draw_line_width_color(hpX - 1, hpY - 1, hpX + hpWidth, hpY - 1, 1, c_dkgray, c_dkgray);
draw_line_width_color(hpX - 1, hpY + hpHeight, hpX + hpWidth, hpY + hpHeight, 1, c_dkgray, c_dkgray);
draw_line_width_color(hpX - 1, hpY - 1, hpX - 1, hpY + hpHeight, 1, c_dkgray, c_dkgray);
draw_line_width_color(hpX + hpWidth, hpY - 1, hpX + hpWidth, hpY + hpHeight, 1, c_dkgray, c_dkgray);

if (!instance_exists(obj_skeleton))
	exit;
	
var text = "Kills: " + string(obj_skeleton.kills);
var textWidth = string_width(text);
var textHeight = string_height(text);
var startX = 8;
var startY = 20;
var paddingX = 6;
var paddingY = 4;

draw_rectangle_color(startX, startY, startX + textWidth + paddingX, startY + textHeight + paddingY, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
draw_text(startX + paddingX / 2, startY + paddingY, text);

var text = "Level: " + string(obj_skeleton.level);
startX += textWidth + paddingX*2;
var textWidth = string_width(text);
var textHeight = string_height(text);


draw_rectangle_color(startX, startY, startX + textWidth + paddingX, startY + textHeight + paddingY, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
draw_text(startX + paddingX / 2, startY + paddingY, text);