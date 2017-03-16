/// @description Insert description here
// You can write your code in this editor
var cameraX, cameraY, cameraWidth;
cameraX = camera_get_view_x(view_camera[0]);
cameraY = camera_get_view_y(view_camera[0]);
cameraWidth = camera_get_view_width(view_camera[0]);

draw_set_font(fnt_score);
draw_set_color(c_white);
draw_text(cameraX + cameraWidth / 2, cameraY + 25, string(global.myScore));