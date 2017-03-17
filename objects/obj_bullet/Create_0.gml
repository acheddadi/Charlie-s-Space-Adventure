/// @description Insert description here
// You can write your code in this editor
double = false;
shotgun = false;

if (!double && ! shotgun)
{
	direction = point_direction(x,y,mouse_x,mouse_y);
	direction += random_range(-4,4);
	audio_sound_pitch(snd_laser, random_range(0.6, 1));
	audio_play_sound(snd_laser, 0, false);
}

image_angle = direction;
speed = 16;