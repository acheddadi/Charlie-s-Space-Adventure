/// @description Insert description here
// You can write your code in this editor
var dirVecX = dcos(direction), dirVecY = dsin(direction);

if (!place_free(x + other.speed, y) || !place_free(x - other.speed, y)) // Hitting left or right side of square
{
    var normVecX = 1, normVecY = 0;
    collision = true;
}
else if (!place_free(x, y + other.speed) || !place_free(x, y - other.speed)) // Hitting top or bottom side of square
{
    var normVecX = 0, normVecY = 1;
    collision = true;
}

if (collision)
{
        var bounceVecX = dirVecX - 2 * (dot_product(dirVecX, dirVecY, normVecX, normVecY)) * normVecX;
        var bounceVecY = dirVecY - 2 * (dot_product(dirVecX, dirVecY, normVecX, normVecY)) * normVecY;
        var bounceAngle = darctan2(bounceVecY, bounceVecX);
        direction = bounceAngle;
        image_angle = direction;
        collision = false;
		bounce--;
}

if (bounce < 0) instance_destroy();