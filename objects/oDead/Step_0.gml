/// @description Insert description here
// You can write your code in this editor

//start doing the stuff before die
if (done == 0)
{
	vsp = vsp+grv;
	//x = x+hsp;

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
		hsp=0;
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
	
		if(vsp > 0)
		{
			done=1;
			image_index = 1;
		}	
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
}