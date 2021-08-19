/// @description Insert description here
// You can write your code in this editor

//move to next level when my trigger block collids with player
with(oMain)
{
	//stop the player's control before the change room transition finishes
	if (hascontrol)
	{
		hascontrol = false;
		//other which means im taking the obj or instance instead of the obj in "with()"
		SlideTransition(TRANS_MODE.GOTO,other.target)
	}
}
