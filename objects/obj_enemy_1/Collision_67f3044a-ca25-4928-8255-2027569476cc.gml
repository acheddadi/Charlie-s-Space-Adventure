/// @description Insert description here
// You can write your code in this editor
wasHit = true;

var mX = other.x - x, mY = other.y - y;
var theta = degtorad(point_direction(0, 0, mX, mY));
var normX = cos(theta), normY = -sin(theta);

if (place_free(x - (normX * spd * 2), y)) x -= normX * spd * knockBack;
if (place_free(x, y - (normY * spd * 2))) y -= normY * spd * knockBack;

alarm[0] = 10;