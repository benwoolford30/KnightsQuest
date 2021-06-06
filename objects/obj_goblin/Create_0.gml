/// @description Insert description here
// You can write your code in this editor
link=noone;
image_xscale*=(display_get_gui_width()/480)*11;
image_yscale*=(display_get_gui_height()/480)*11;
image_speed=0;
alarm[0]=room_speed*4;
var width=(display_get_gui_width());
var height=(display_get_gui_height());
var pressurepoint=instance_create_depth(width/2,height/2-height/4,depth-1,obj_pressurepoint);
pressurepoint.link=id;
var pressurepoint=instance_create_depth(width/2,height/2,depth-1,obj_pressurepoint);
pressurepoint.link=id;
var pressurepoint=instance_create_depth(width/2,height/2+height/4,depth-1,obj_pressurepoint);
pressurepoint.link=id;