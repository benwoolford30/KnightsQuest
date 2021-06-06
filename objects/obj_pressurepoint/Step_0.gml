/// @description Insert description here
// You can write your code in this editor
if (device_mouse_check_button_pressed(0,mb_left) && device_mouse_x_to_gui(0)>=(x-sprite_width/2) && device_mouse_x_to_gui(0)<=(x+sprite_width/2) && device_mouse_y_to_gui(0)>=(y-sprite_height/2) && device_mouse_y_to_gui(0)<=(y+sprite_height/2))
{	
	hp-=1;
	if (hp<0)
	{
		instance_destroy();
		if (special=true)
		{
			link.image_index=0;
			link.attack-=1;
		}
		if (instance_exists(obj_pressurepoint))
		{}
		else
		{
		
			link.image_index=link.image_number-1;
			link.alarm[0]=room_speed*99;
			link.link.alarm[1]=room_speed*2;
		}
	}
	else
	{
		image_index=hp;
	}
}