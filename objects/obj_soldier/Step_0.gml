/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,mouse_x, mouse_y);

if (keyboard_check(ord("W")) && place_free(x, y - spd)) vspd = -spd;
else if (keyboard_check(ord("S")) && place_free(x, y + spd)) vspd = spd;
else vspd = 0;
if (keyboard_check(ord("A")) && place_free(x - spd, y)) hspd = -spd;
else if (keyboard_check(ord("D")) && place_free(x + spd, y)) hspd = spd;
else hspd = 0;

if (keyboard_check(vk_escape)) game_end();

/*
// Knockback direction vector
var mX = mouse_x - x, mY = mouse_y - y;
var theta = degtorad(point_direction(0, 0, mX, mY));
var normX = cos(theta), normY = -sin(theta);
*/

if (mouse_check_button(mb_left) && (timeElapsed > fireSpd))
{
	instance_create_layer(x,y,"projectileLayer",obj_bullet)
	//if (place_free(x - (normX * spd * 2), y)) x -= normX * spd * knockBack;
	//if (place_free(x, y - (normY * spd * 2))) y -= normY * spd * knockBack;
	timeElapsed = 0;
}
timeElapsed++;

switch (mouse_check_button(mb_left) && timeElapsed)
{
	case 0:
		spd = SPEED;
	break;
	case 1:
		SPD = SPEED / 2;
	break;
}

if (abs(hspd) == abs(vspd))
{
	hspd = sign(hspd) * (spd/(sqrt(2)));
	vspd = sign(vspd) * (spd/(sqrt(2)));
}

x += hspd;
y += vspd;