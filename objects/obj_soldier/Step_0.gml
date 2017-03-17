/// @description Insert description here
// You can write your code in this editor

// Process input
if (keyboard_check(ord("W")) && place_free(x, y - spd)) vspd = -spd;
else if (keyboard_check(ord("S")) && place_free(x, y + spd)) vspd = spd;
else vspd = 0;

if (keyboard_check(ord("A")) && place_free(x - spd, y)) hspd = -spd;
else if (keyboard_check(ord("D")) && place_free(x + spd, y)) hspd = spd;
else hspd = 0;

if (keyboard_check(vk_escape)) game_end();

// Switch between specials
if (keyboard_check_pressed(vk_tab))
{
	if (currentSpecial == Special.SHOTGUN) currentSpecial = Special.SINGLE;
	else currentSpecial++;
}
switch(currentSpecial)
{
	case Special.SINGLE:
	fireDelay = 6;
	break;
	case Special.DOUBLE:
	fireDelay = 6;
	break;
	case Special.SHOTGUN:
	fireDelay = 12;
}

// Shoot projectile
if (mouse_check_button(mb_left) && (timeElapsed > fireDelay))
{
	instance_create_layer(x,y,"projectileLayer", currentSpecial)
	timeElapsed = 0;
}
timeElapsed++;

/*
// Decrease walking speed while shooting
if (mouse_check_button(mb_left)) spd = SPEED / 2;	
else spd = SPEED;
*/

// Fix diagonal speed increase
if (abs(hspd) == abs(vspd))
{
	hspd = sign(hspd) * (spd/(sqrt(2)));
	vspd = sign(vspd) * (spd/(sqrt(2)));
}

image_angle = point_direction(x,y,mouse_x, mouse_y);
x += hspd;
y += vspd;