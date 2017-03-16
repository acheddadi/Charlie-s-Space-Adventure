/// @description Insert description here
// You can write your code in this editor
if (image_xscale < 1)
{
	image_xscale += 0.01;
	image_yscale = image_xscale;
}
else instance_change(obj_enemy, true);