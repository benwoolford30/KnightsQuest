/// @description Insert description here
// You can write your code in this editor
image_xscale*=(display_get_gui_width()/480)*5;
image_yscale*=(display_get_gui_height()/480)*5;
var carrot= instance_create_depth(x-(display_get_gui_width()/4),y-(display_get_gui_height()/4),depth-1,obj_carrot);
carrot.link=id;
var egg=instance_create_depth(x-(display_get_gui_width()/4),y+(display_get_gui_height()/4),depth-1,obj_egg);
egg.link=id;
var milk=instance_create_depth(x+(display_get_gui_width()/4),y-(display_get_gui_height()/4),depth-1,obj_milk);
milk.link=id;
var bread=instance_create_depth(x+(display_get_gui_width()/4),y+(display_get_gui_height()/4),depth-1,obj_bread);
bread.link=id;
items=4;