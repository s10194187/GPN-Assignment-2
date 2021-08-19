/// @description Insert description here
// You can write your code in this editor

//set up camera

cam = view_camera[0];
follow = oMain;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

//how long i want my camera to shake 
shake_length = 0;
//where it starts from
shake_magnitude = 0;
//how much left
shake_remain = 0;
//buffer to not shake outside of the game room
buffer = 32;