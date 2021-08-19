/// @description Insert description here
// You can write your code in this editor

//allocating gun position based on player
x = oMain.x;
y = oMain.y+5;

// make gun follow the players mouse direction
image_angle = point_direction(x,y,mouse_x,mouse_y);

//#region Check mouse clicks to shoot

//take firing delay and reduce by 1 when frames change.
firingdelay = firingdelay - 1;

//when left click is triggered
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	firingdelay = 8;
	recoil = 4;
	ScreenShake(2,10);
	audio_sound_pitch(snShoot,choose(0.8,1.0,1.2));
	audio_play_sound(snShoot,5,false);
	with (instance_create_layer(x,y,"Bullets",oBullet))
	{
		spd = 20;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
	
	with (oMain)
	{
		gunkickx = lengthdir_x(1.5, other.image_angle-180);
		gunkicky = lengthdir_y(1, other.image_angle-180);
	}
}
#region recoil of gun
// recoil for the gun to move back and forth while 
//reduce value by 1
recoil = max(0, recoil - 1);

//lengthdir allows you to move the gun
// so i want to move my x coord based on my recoil.
//I want to move in the direction of my gun)
x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

//when image angle is 0 , it typically means its pointing right
//this statemnet means m facing the left
if (image_angle > 90) && (image_angle < 270)
{
	// flip gun
	image_yscale = -1
}
else // im facing the right
{
	//normal pos
	image_yscale = 1;
}
#endregion