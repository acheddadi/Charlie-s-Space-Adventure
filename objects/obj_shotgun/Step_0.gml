/// @description Insert description here
// You can write your code in this editor
if (bullets > 0)
{
	var translatedMouseX = mouse_x - x, translatedMouseY = mouse_y - y;
	var c = cos(theta[bullets - 1]), s = sin(theta[bullets - 1]);
	var newMouseX = (translatedMouseX * c) - (translatedMouseY * s);
	var newMouseY = (translatedMouseY * c) + (translatedMouseX * s);
	newMouseX += x; newMouseY += y;
}

if (bullets > 0)
{
	with (instance_create_layer(x, y, "projectileLayer", obj_bullet))
	{
		shotgun = true;
		direction = point_direction(x, y, newMouseX, newMouseY);
		direction += random_range(-4,4);
	}
}
bullets--;