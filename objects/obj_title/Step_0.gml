/// @description Insert description here
// You can write your code in this editor
if (image_alpha < 1) image_alpha += 0.02;
if (keyboard_check_released(vk_enter)) room_goto_next();
if (keyboard_check(vk_escape)) game_end();