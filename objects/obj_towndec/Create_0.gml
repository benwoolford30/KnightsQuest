/// @description Insert description here
// You can write your code in this editor
image_xscale*=(display_get_gui_width()/480)*5;
image_yscale*=(display_get_gui_height()/480)*5;
var gob=noone;
for (var i=1;i<=3;i++)
{
	gob=instance_create_depth(x,y,depth-1,obj_goblinattack);
	gob.link=id;
}
alarm[0]=room_speed*8;