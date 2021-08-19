/// @description Insert description here
// You can write your code in this editor

//progrssing the transition to go the room

if(mode !=TRANS_MODE.OFF)
{
	//we have arrived to the room
	if(mode == TRANS_MODE.INTRO)
	{
		//thus remove black bars to show room
		//when perecnt is 1 bars is shown
		// percent  is when bars disappear
		//reduce the percent to 0 gradually at constant pace 
		percent = max(0,percent-max((percent/10),0.005));
	}
	//going into room so black bar at max
	else
	{
		percent = min(1.2,percent + max(((1.2 - percent)/10),0.005));
	}
	
	if(percent ==1.2) || (percent==0)
	{
		switch(mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				//send player to the next room
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				//whichever room
				mode = TRANS_MODE.INTRO;
				//wherever with room we want to go to 
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
		}
	}
}