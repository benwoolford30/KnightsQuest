/// @description Insert description here
// You can write your code in this editor
if (device_mouse_check_button(0,mb_left) && device_mouse_x_to_gui(0)>=(x-sprite_width/2) && device_mouse_x_to_gui(0)<=(x+sprite_width/2) && device_mouse_y_to_gui(0)>=(y-sprite_height/2) && device_mouse_y_to_gui(0)<=(y+sprite_height/2))
{	
		prevrecordx=recordx;
		prevrecordy=recordy;
		recordx=device_mouse_x_to_gui(0);
		recordy=device_mouse_y_to_gui(0);
		if (recordx!=prevrecordx or recordy!=prevrecordy)
		{
			image_xscale-=(0.1*((display_get_gui_width()/48)*0.1));
			image_yscale-=(0.1*((display_get_gui_height()/48)*0.1));
			if (image_xscale<(0.5*((display_get_gui_width()/48)*0.1)))
			{
				instance_destroy();
			}
		}
}