/// @description Insert description here
// You can write your code in this editor
image_xscale*=(display_get_gui_width()/480)*5;
image_yscale*=(display_get_gui_height()/480)*5;
image_speed=0;
instance_create_depth(x,display_get_gui_height()-(display_get_gui_height()/26),depth-1,obj_muddy);