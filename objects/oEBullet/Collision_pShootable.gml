/// @description Insert description here
// You can write your code in this editor

//what happens when the bullet collides with the enemy
//whatever inside the with(other) it means that this
//block of code applies to the instance that it is colliding with
//the SPECIFY ENEMY that we collide with using obullet
with(other)
{
	hp = hp-1;
	flash=3;
	//checking the direction if left or right
	hitfrom = other.direction;
}
//destroy the bullet thrus outside the with
instance_destroy();