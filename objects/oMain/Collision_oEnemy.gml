/// @description Insert description here
// You can write your code in this editor

with(oGun)
{
	instance_destroy();
}
audio_stop_sound(mFight);

instance_change(oMainDead,true);

direction = point_direction(other.x,other.y,x,y);
hsp = lengthdir_x(6,direction);
vsp = lengthdir_y(4,direction)-2;
if (sign(hsp) != 0) image_xscale = sign(hsp);