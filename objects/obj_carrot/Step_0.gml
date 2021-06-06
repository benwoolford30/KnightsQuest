/// @description Insert description here
// You can write your code in this editor
if (device_mouse_check_button_pressed(0,mb_left) && device_mouse_x_to_gui(0)>=(x-sprite_width/2) && device_mouse_x_to_gui(0)<=(x+sprite_width/2) && device_mouse_y_to_gui(0)>=(y-sprite_height/2) && device_mouse_y_to_gui(0)<=(y+sprite_height/2))
{	
	follow=true;
	
}
if (device_mouse_check_button_released(0,mb_left))
{
	follow=false;
}
if (follow=true)
{
	x=device_mouse_x_to_gui(0);
	y=device_mouse_y_to_gui(0);
}
