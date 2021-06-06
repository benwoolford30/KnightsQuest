/// @description Insert description here
// You can write your code in this editor
image_xscale*=display_get_gui_width()/48;
image_yscale*=display_get_gui_height()/48;
var time=instance_create_depth(display_get_gui_width()-display_get_gui_width()/16,display_get_gui_height()/8,depth-1,obj_clock);
time.link=id;
var xmov=0;
var ymov=0;
var displacementx=-display_get_gui_width()/3;
var displacementy=display_get_gui_height()/4;
for (var i=1;i<=4;i++)
{
	xmov=(display_get_gui_width()/7*i);	
	var fire=instance_create_depth(x+xmov+displacementx,y+displacementy,depth-1,obj_fire);
	fire.link=id;
	var fire=instance_create_depth(x+xmov+displacementx,y+displacementy-(display_get_gui_height()/8*1),depth-1,obj_fire);
	fire.link=id;
	var fire=instance_create_depth(x+xmov+displacementx,y+displacementy-(display_get_gui_height()/8*2),depth-1,obj_fire);
	fire.link=id;
	var fire=instance_create_depth(x+xmov+displacementx,y+displacementy-(display_get_gui_height()/8*3),depth-1,obj_fire);
	fire.link=id;
}