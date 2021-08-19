/// @description Insert description here
// You can write your code in this editor


//update camera position based on where my x and y are going to
//whereever my player aka the intstance is going
//i have assigned my player to follow

//if my instance player exts then
if (instance_exists(follow))
{
	//where ever im going to i will assign them to my x coord and y coord
	//follow.x will take my player's x coord 
	//follow.y will take my player's y coord
	xTo = follow.x;
	yTo = follow.y;
	
	if ((follow).object_index == oMainDead)
	{
		x = xTo;
		y = yTo;
	}
}

//Update object/camera position
//im assigning x to whereever i am going to , subtracting where im at
// by dividing, im saying that i will be updated to be at 1/15 of the distance , giving a smooth movement
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//clamping means setting the camera indefinetely in the room
//clamping is fixed at where the view at.
//when i stop the player the camera will be clamped in the middle so
//i cant see anything further than that
x = clamp(x,view_w_half+buffer,room_width-view_w_half);
y = clamp(y,view_h_half+buffer,room_height-view_h_half);


//Screen shake
//random value from -6 to 6
x +=random_range(-shake_remain,shake_remain);
y +=random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude)); //reduce shake at frames

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half

if (room != rMenu) && (room != rEnding)
{
	if (layer_exists("Clouds"))
	{
		layer_x("Clouds",x/2);
	}
	
	if (layer_exists("Plant"))
}