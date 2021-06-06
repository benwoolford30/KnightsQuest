/// @description Insert description here
// You can write your code in this editor
if (device_mouse_check_button_pressed(0,mb_left) && device_mouse_x_to_gui(0)>=(x-sprite_width/2) && device_mouse_x_to_gui(0)<=(x+sprite_width/2) && device_mouse_y_to_gui(0)>=(y-sprite_height/2) && device_mouse_y_to_gui(0)<=(y+sprite_height/2))
{	
		instance_destroy();
		if (instance_exists(obj_goblinattack))
		{}
		else
		{
			
			link.alarm[0]=room_speed*99;
			link.link.alarm[1]=room_speed*2;
		}
}

if x>display_get_gui_width()
x=0;
if x<0
x=display_get_gui_width();
if y>display_get_gui_height()
y=0;
if y<0
y=display_get_gui_height();