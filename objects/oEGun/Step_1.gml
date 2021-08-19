x = owner.x;
y = owner.y+10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(oMain))
{
	if (oMain.x < x) image_yscale = -image_yscale;	
	if (point_distance(oMain.x,oMain.y,x,y) < 600)
	{
		image_angle = point_direction(x,y,oMain.x,oMain.y);
		countdown--;
		if (countdown <= 0)
		{
			countdown = countdownrate;
			if (!collision_line(x,y,oMain.x,oMain.y,oWall,false,false))
			{
				audio_sound_pitch(snShoot,choose(0.8,1.0,1.2));
				audio_play_sound(snShoot,5,false);
				with (instance_create_layer(x,y,"Bullets",oEBullet))
				{
					spd = 10;
					direction = other.image_angle + random_range(-3,3);
					image_angle = direction;
				}
			}
		}
		
	}
}
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


