/// @description Insert description here
// You can write your code in this editor

//kill enemy
if(hp <= 0)
{
	with(instance_create_layer(x,y,layer,oDead))
	{
		direction = other.hitfrom;
		//my enemy now flies 3px from the direction i shoot
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction);
		if(sign(hsp)!=0)
		{
			image_xscale = sign(hsp)*other.size;
			image_yscale = other.size;
		}
	}
	with(mygun)
	{ 
		instance_destroy();
	}
	instance_destroy();
}