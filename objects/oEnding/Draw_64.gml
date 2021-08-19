/// @description Insert description here
// You can write your code in this editor

draw_set_colour(c_black)
draw_rectangle(0, 0, RES_W, 128, false);
draw_rectangle(0, RES_H-128, RES_W, RES_H, false);

DrawSetText(c_black, asset_font, fa_center, fa_top);
draw_text(RES_W*0.5 + 2, RES_W*0.3+2, text);
draw_set_colour(c_white);
draw_text(RES_W*0.5, RES_W*0.3, text);