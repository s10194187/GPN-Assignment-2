/// @description Insert description here
// You can write your code in this editor

hsp=0;
vsp = 0;
grv = 0.3;
done=0;

image_speed=0;
image_index=0;
ScreenShake(6,60);
audio_play_sound(snDeath,10,false);

//slowmo effect
game_set_speed(30,gamespeed_fps);

with(oCamera)
{
	follow = other.id;
}