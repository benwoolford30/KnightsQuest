/// @description Insert description here
// You can write your code in this editor
image_xscale*=(display_get_gui_width()/48)*0.2;
image_yscale*=(display_get_gui_height()/48)*0.2;
instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/6,depth,obj_dragon);
follow=false;
charge=false;