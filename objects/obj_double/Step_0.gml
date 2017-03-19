/// @description Insert description here
// You can write your code in this editor
var newMouseX = mouse_x - x, newMouseY = mouse_y - y;
var firstX = newMouseY, firstY = -newMouseX, secondX = -newMouseY, secondY = newMouseX;
var firstLen = sqrt(sqr(firstX) + sqr(firstY)), secondLen = sqrt(sqr(secondX) + sqr(secondY));
var firstNormX = firstX / firstLen, firstNormY = firstY / firstLen, secondNormX = secondX / secondLen, secondNormY = secondY / secondLen;

if (bullets > 0)
{
	with (instance_create_layer(x, y, "projectileLayer", obj_bullet))
	{
		direction = point_direction(x, y, mouse_x, mouse_y);
		direction += other.scatter;
		image_angle = direction;
		speed = 16;
	}
	bullets--;
	with (instance_create_layer(x + (25 * firstNormX), y + (25 * firstNormY), "projectileLayer", obj_bullet))
	{
		direction = point_direction(x, y, mouse_x+ (25 * firstNormX), mouse_y + (25 * firstNormY));
		direction += other.scatter;
		image_angle = direction;
		speed = 16;
	}
	bullets--;
	with (instance_create_layer(x + (25 * secondNormX), y + (25 * secondNormY), "projectileLayer", obj_bullet))
	{
		direction = point_direction(x, y, mouse_x + (25 * secondNormX), mouse_y + (25 * secondNormY));
		direction += other.scatter;
		image_angle = direction;
		speed = 16;
	}
	bullets--;
}
