/// @description Insert description here
// You can write your code in this editor
gunsprite = layer_sprite_get_id("TitleAssets","gGun");
if (global.hasgun == true)
{
	endtext[0] = "And on this day, Mr Policeman went through something\n he never imagine he will go through";
	endtext[1] = "Losing his daughter to the yakuzas... he never thought he would see her again";
	endtext[2] = "He was lost in the beginning, thinking what he could do to save his daughter";
	endtext[3] = "Going through the challenges the yakuza gave him\n meant that he would have to kill many lives";
	endtext[4] = "But he knew it was worth it, so that he could be with duaghter again";
	endtext[5] = "The end.";
}
spd = 0.5;
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";
