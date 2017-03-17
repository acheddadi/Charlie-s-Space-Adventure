/// @description Insert description here
// You can write your code in this editor
SPEED = 6;
FIRE_SPEED = 6;
KNOCKBACK = 2;

enum Special { SINGLE = obj_bullet, DOUBLE = obj_double, SHOTGUN = obj_shotgun, BLASTER };
currentSpecial = Special.SINGLE;

spd = SPEED;
timeElapsed = 0;
knockBack = 2;

hspd = 0;
vspd = 0;