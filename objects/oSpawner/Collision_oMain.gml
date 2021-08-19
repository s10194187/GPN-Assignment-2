/// @description Insert description here
// You can write your code in this editor
if (triggered == false)
{	
	audio_stop_all();
	audio_play_sound(mFight,1000,true);
	//close doors and stop from retriggering
	with (oDoor) 
	{
		global.closed = true;
	}
	triggered = true;
	
	//work out number of waves and enemies per wave
	total_waves = -1;
	for (var i = 0; i < ds_list_size(waves); i++)
	{
		var thisentry = ds_list_find_value(waves,i);
		if (thisentry[_WAVE] > total_waves) 
		{
			total_waves++;
			remaining[total_waves] = 0;
		}
		remaining[total_waves]++;
	}
}
