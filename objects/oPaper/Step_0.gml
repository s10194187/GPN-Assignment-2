/// @description Insert description here
// You can write your code in this editor
y = ystart + sin(get_timer()/500000)*5;

if (instance_exists(oMain)) && (point_in_circle(oMain.x,oMain.y,x,y,64)) && (!instance_exists(oText))
{
	nearby = true;
	if (keyboard_check_pressed(ord("W"))) || mouse_check_button_released(mb_left) || keyboard_check_pressed(ord("A"))
	{
		with (instance_create_layer(x,y-64,layer,oText))
		{
			text = other.text;
			length = string_length(text);
		}
	
		with (oCamera)
		{
			follow = other.id;	
		}
	}
}
else 
{
	nearby = false;
}