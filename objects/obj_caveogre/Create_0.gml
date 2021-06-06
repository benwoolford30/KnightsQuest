/// @description Insert description here
// You can write your code in this editor
image_xscale*=(display_get_gui_width()/48)*0.6;
image_yscale*=(display_get_gui_height()/48)*0.6;
image_speed=0;
alarm[0]=room_speed*2;
attack=0;
gobwins=false;
var width=(display_get_gui_width());
var height=(display_get_gui_height());
var pressurepoint=instance_create_depth(width/2-width/4,height/2-height/6,depth-1,obj_pressurepoint);
pressurepoint.link=id;
pressurepoint.hp=2;
var pressurepoint=instance_create_depth(width/2,height/2+height/4,depth-1,obj_pressurepoint);
pressurepoint.link=id;
pressurepoint.hp=1;
var pressurepoint=instance_create_depth(width/2+width/4,height/2,depth-1,obj_pressurepoint);
pressurepoint.link=id;
pressurepoint.hp=1;
var pressurepoint=instance_create_depth(width/2+width/4,height/2-height/4,depth-1,obj_pressurepoint);
pressurepoint.link=id;
pressurepoint.hp=2;