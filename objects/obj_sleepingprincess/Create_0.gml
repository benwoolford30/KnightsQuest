/// @description Insert description here
// You can write your code in this editor
image_xscale*=(display_get_gui_width()/48)*0.8;
image_yscale*=(display_get_gui_height()/48)*0.8;
var bar=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/12,depth-1,obj_bar);
bar.link=id;