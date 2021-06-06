/// @description Insert description here
// You can write your code in this editor
image_xscale*=(display_get_gui_width()/48)*0.2;
image_yscale*=(display_get_gui_height()/48)*0.2;
var wolf= instance_create_depth(display_get_gui_width()/16,display_get_gui_height()/2,depth-1,obj_wolves);
wolf.link=id;
numofwolves=10;