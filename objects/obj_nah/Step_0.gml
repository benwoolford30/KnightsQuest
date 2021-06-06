/// @description Insert description here
// You can write your code in this editor
if (device_mouse_check_button_released(0,mb_left)=true && device_mouse_x_to_gui(0)>=(x-sprite_width/2) && device_mouse_x_to_gui(0)<=(x+sprite_width/2) && device_mouse_y_to_gui(0)>=(y-sprite_height/2) && device_mouse_y_to_gui(0)<=(y+sprite_height/2))
{	
	mouse_clear(mb_left);
	switch event
	{
		case 1:{
			scr_checkquestspot();
			instance_destroy(obj_duel);				
		}break;
		case 2:{
			link.accept=false;
			instance_destroy(obj_nah);
			link.phases[2]=false;
			link.phases[3]=true;
			link.actualchallenger.thecase=true;
			link.choice.circumstance=false;
			link.ye.event=4;
		}break;
		case 3:{
			link.intown=false;
			scr_gamenextplayer();
			instance_destroy(obj_nah);
			instance_destroy(obj_ye);
		}break;
		case 4:{
			instance_activate_object(obj_menuchoice);
			instance_destroy(link);
		}break;
		case 5:{
			instance_destroy(link);
		}break;
		case 6:{			
			var challenge=link.actualchallenger;
			var defend=link.choice;
			
			with obj_client
			{
				var size = 1024;
				var type= buffer_fixed;
				var alignment= 1;
				var buffer = buffer_create(size,type,alignment);
				buffer_seek(buffer,buffer_seek_start,0);
				buffer_write(buffer,buffer_u8,12);
				buffer_write(buffer,buffer_u8,challenge.turn);
				buffer_write(buffer,buffer_u8,defend.turn);
				network_send_packet(socket,buffer,buffer_get_size(buffer));
				buffer_delete(buffer);
			}			
			instance_destroy(link);
			
		}break;

	}
	
}