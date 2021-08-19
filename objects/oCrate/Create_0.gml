/// @description Insert description here
// You can write your code in this editor

//this is a create wall to make the crate a wall that can be destroyed
//this ensures the plaer doesnt walk into the crate

mywall = instance_create_layer(x,y,layer,oWall);
with (mywall)
{
	image_xscale = other.sprite_width / sprite_width;
	image_yscale = other.sprite_height / sprite_height;
}
