/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_finalScore);
draw_set_color(c_black);

draw_text(5+ room_width/2, 5+ room_height/2, "SCORE: "+string(global.myScore)+"\nPRESS ENTER TO TRY AGAIN.");

draw_set_font(fnt_finalScore);
draw_set_color(c_white);

draw_text(room_width/2, room_height/2, "SCORE: "+string(global.myScore)+"\nPRESS ENTER TO TRY AGAIN.");