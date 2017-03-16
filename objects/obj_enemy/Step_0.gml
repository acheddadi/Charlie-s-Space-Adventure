/// @description Insert description here
// You can write your code in this editor
if(wasHit) speed = 0;
else 
{
	if (instance_exists(obj_soldier))
	{
		mp_potential_step(obj_soldier.x, obj_soldier.y, spd, false);
	}
	image_angle = point_direction(obj_soldier.x, obj_soldier.y, obj_enemy.x, obj_enemy.y);
}
if (hp <= 0)
{
	audio_sound_pitch(snd_enemy, random_range(0.6,1));
	audio_play_sound(snd_enemy, 5 , 0);
	instance_destroy();
	with(obj_score) global.myScore += 5;
}