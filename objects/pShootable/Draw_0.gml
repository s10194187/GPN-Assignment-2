/// @description Insert description here
// You can write your code in this editor

draw_self();

//if im being hit means my flash increases. this i will excute white enemy
//when enemy hit. flash go up i turn white when hit
if (flash>0)
{
	//flash goes down when hit
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}

