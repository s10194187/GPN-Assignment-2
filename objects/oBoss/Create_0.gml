/// @description Insert description here
// You can write your code in this editor

//if the enemy actually has gun
if (hasweapon)
{
	mygun = instance_create_layer(x,y,"Gun",oEGun)
	with (mygun)
	{
		owner = other.id	
	}
}
else
{
	mygun = noone;
}