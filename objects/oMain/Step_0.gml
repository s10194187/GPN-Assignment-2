/// @description Insert description here
// You can write your code in this editor

#region Check Movement Key
if(hascontrol)
{
	//checking if player clicks the key for movemement.
	//values return 0,1,-1
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A")) ;
	key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
}	
else
//while in transitition dun allow player to move
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

#endregion

#region Calculate Movement
//calculate movement
//eg, if im clicking both the left and righr
var _move = key_right - key_left;

//set horiontal speed
hsp = _move*walksp;

//set vertical speed
vsp = vsp+grv;
#endregion

#region jumping coord
//check position and both conditions before execution
canjump-=1
if(canjump>0) && (key_jump)
{
	//reduce y-coord
	vsp=-8;
	canjump=0;
}
#endregion

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
	//use spriteA when in Airborne
	sprite_index = sPlayerA;
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
	canjump = 10;
	if (sprite_index == sPlayerA)
	{
		audio_sound_pitch(snLanding,choose(0.8,1.0,1.2))
		audio_play_sound(snLanding,4,false)
	}
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sMain;
	}
	else
	{
		sprite_index = sPlayerR;
	}
}	
#endregion

#region Flip Player
if (hsp != 0)
{
	image_xscale = sign(hsp);
}
#endregion

