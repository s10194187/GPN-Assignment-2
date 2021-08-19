// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//SlideTransition(mode,targetroom)
// @argument Mode sets transition mode between next,restart and goto
// argument Target sets targetroom when using goto mode aka deciding which room to go to

function SlideTransition() {
	with(oRoomTransition)
	{  
		//getting the first argument in the mode
		mode = argument[0];
		//if there is more than 1 argument
		if(argument_count > 1)
		{
			target = argument[1];
		}
	}
}