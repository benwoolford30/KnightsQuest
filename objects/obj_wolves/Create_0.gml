/// @description Insert description here
// You can write your code in this editor
image_xscale*=(display_get_gui_width()/48)*0.2;
image_yscale*=(display_get_gui_height()/48)*0.2;
direction=point_direction(x,y,obj_damsel.x,obj_damsel.y);
flip=1;
spd=2;
speed=image_xscale*spd;