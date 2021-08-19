/// @description Insert description here
// You can write your code in this editor

//set vertical speed
vsp = vsp+grv;
//x = x+hsp;

//Don't walk off edges
if (grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,oWall))
{
	hsp = -hsp;

}

#region Horizontal Collision
//setting horizontal collision with the wall
//check position first
if(place_meeting(x+hsp,y,oWall))
{
	//potential collision , sign hsp returns: 1,0,-1
	//depending on the value whether positive or negative 
	
	//while there isnt a collision when move(false)
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		//move 1 pixel until theres a wall
		x=x+sign(hsp);
	}
	//once hit
	hsp= -hsp;
}
//once done , assign to horizontal movement
x=x+hsp
#endregion

#region Vertical Collision
//setting vertical collision with the wall
if(place_meeting(x,y+vsp,oWall))
{
	//potential collision , sign vsp returns: 1,0,-1
	//depending on the value whether positive or negative 
	
	//while there isnt a collision when move(false)
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		//move 1 pixel until theres a wall
		y=y+sign(vsp);
	}
	//once hit
	vsp=0;
}
//once done , assign to vertical movement
y=y+vsp
#endregion

#region Player Animation
//If no collision in jump , no collision with floor
if(!place_meeting(x,y+1,oWall))
{
	grounded = false;
	//use spriteA when in Airborne
	sprite_index = sEnemyA;
	//image_speed 0 is not animating
	image_speed = 0;
	
	//check whether going up or down
	//if greter than 0 then moving down
	if(sign(vsp) > 0)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
}
else
{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEnemyR;
	}
}	
#endregion

#region Flip Enemy
if (hsp != 0)
{
	image_xscale = sign(hsp) * size;
}
image_yscale = size;
#endregion

