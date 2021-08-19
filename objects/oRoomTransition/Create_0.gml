/// @description Insert description here
// You can write your code in this editor

//size variables and mode setup

//width of the screen at any point of time
w = display_get_gui_width();
h = display_get_gui_height();

//divide the screen to make 2 rectanges for the transition
h_half = h/2;

//transition mode , basically digits / integers allocated
//NOTHING MORE
enum TRANS_MODE
{
	OFF,//0
	NEXT,//1
	GOTO,//2
	RESTART,//3
	INTRO//4
}
mode = TRANS_MODE.INTRO;
//1 the whole screen is covered by the transition/ black bar
//0 is when the bar disappears from screen
percent = 1;
//assign the taret to whichever room im going to
target = room;
