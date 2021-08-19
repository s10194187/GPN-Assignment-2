/// @description Insert description here
// You can write your code in this editor

//draw black bars for transition to happen

//if there is no transition taking place or not needed
if (mode != TRANS_MODE.OFF)
{
	//color of black bar
	draw_set_color(c_black);
	
	//postion of black bar to be placed
	//0,0 is top left
	//w and percent up to 0.5 height of screenof screen
	//false is for illed solid black rectangle
	
	//this is for top bar
	draw_rectangle(0,0,w,percent*h_half,false)
	
	//this is for bottom bar
	draw_rectangle(0,h,w,h-(percent*h_half),false)
}