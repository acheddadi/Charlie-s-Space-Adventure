/// @description Insert description here
// You can write your code in this editor
if (!place_free(x + other.speed, y) || !place_free(x - other.speed, y) || !place_free(x, y + other.speed) || !place_free(x, y - other.speed))
{
	instance_destroy();
}