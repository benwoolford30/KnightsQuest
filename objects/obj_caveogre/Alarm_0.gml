/// @description Insert description here
// You can write your code in this editor
image_index+=1;
attack+=1;
if (attack<2)
{
	alarm[0]=room_speed*2;
	var width=(display_get_gui_width());
	var height=(display_get_gui_height());
	var pressurepoint=instance_create_depth(width/2-width/8,height/2,depth-1,obj_pressurepoint);
	pressurepoint.link=id;
	pressurepoint.special=true;
}
else
{
	gobwins=true;
	instance_destroy(obj_pressurepoint);
	alarm[1]=room_speed*2;
}