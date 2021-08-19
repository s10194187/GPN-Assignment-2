/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oSpawner))
{
	with(oSpawner)
	{
		if(triggered)
		{
			remaining[current_wave]--;
		}
	}
}