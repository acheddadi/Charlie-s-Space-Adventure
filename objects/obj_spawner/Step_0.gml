/// @description Insert description here
// You can write your code in this editor
var randomX, randomY;
do
{
	randomX = random(room_width);
	randomY = random(room_height);
} until !collision_circle(randomX, randomY, 27, obj_collision, false, true);


if (spawnrate <= 0)
{
	instance_create_layer(randomX, randomY, "enemyLayer", obj_enemySpawn);
	spawnrate = 60;
}
else spawnrate--;