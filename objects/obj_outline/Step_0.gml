/// @description Insert description here
// You can write your code in this editor
if (device_mouse_check_button_released(0,mb_left)=true && device_mouse_x_to_gui(0)>=(x-sprite_width/2) && device_mouse_x_to_gui(0)<=(x+sprite_width/2) && device_mouse_y_to_gui(0)>=(y-sprite_height/2) && device_mouse_y_to_gui(0)<=(y+sprite_height/2))
{	
	var height= display_get_gui_height();
	var width= display_get_gui_width();
	if (link.agressor=1)
	{
		link.link.actualchallenger.rpc=vsym;
		var challenge=link.link.actualchallenger.turn;
		var defend=link.link.choice.turn;
		if (instance_exists(obj_client))
		{
			with obj_client
			{
				var size = 1024;
				var type= buffer_fixed;
				var alignment= 1;
				var buffer = buffer_create(size,type,alignment);
				buffer_seek(buffer,buffer_seek_start,0);
				buffer_write(buffer,buffer_u8,11);
				buffer_write(buffer,buffer_u8,challenge);
				buffer_write(buffer,buffer_u8,defend);
				network_send_packet(socket,buffer,buffer_get_size(buffer));
				buffer_delete(buffer);
			}	
		}
		else
		{
			
		
			link.link.nah=instance_create_depth(width/2-width/8-width/32,height/2,-1,obj_nah);
			link.link.nah.event=2;
			link.link.nah.link=link.link;
			link.link.phases[2]=true;
			
			link.link.actualchallenger.thecase=false;
			link.link.choice.circumstance=true;
			link.link.event=3;
		
			link.link.fight=true;
			instance_activate_object(link.link.ye);
		}
	}
	else
	{
		if (instance_exists(obj_client))
		{
			var height= display_get_gui_height();
			var width= display_get_gui_width();
			var challenge=link.link.actualchallenger.turn;
			var defend=link.link.choice.turn;
			var chi=vsym;
			with obj_client
			{
				var size = 1024;
				var type= buffer_fixed;
				var alignment= 1;
				var buffer = buffer_create(size,type,alignment);
				buffer_seek(buffer,buffer_seek_start,0);				
				buffer_write(buffer,buffer_u8,13);
				buffer_write(buffer,buffer_u8,chi);
				buffer_write(buffer,buffer_u8,challenge);
				buffer_write(buffer,buffer_u8,defend);
				network_send_packet(socket,buffer,buffer_get_size(buffer));
				buffer_delete(buffer);
				
			}
			
		}
		else
		{
			link.link.choice.rpc=vsym;
			instance_activate_object(link.link.ye);
			with link.link.ye
			{
				instance_destroy(obj_nah);
				instance_destroy(link.coin);
				instance_activate_object(link.choicerep);
				link.actualchallenger.thecase=true;
				link.choice.circumstance=false;
				link.ye.event=4;
				link.actualchallenger.roll=irandom(link.actualchallenger.maxroll-1)+1;
				link.choice.roll=irandom(link.choice.maxroll-1)+1;
				link.ye.y=height/2-height/8;
				link.phases[5]=false;
				link.phases[3]=true;
				link.accept=true;
				link.challenger.x=width/2-width/8;
				link.challenger.y=height/2+height/8;
				link.choicerep.x=width/2+width/8;
				link.choicerep.y=height/2+height/8;
			}
		}
	}
	if instance_exists(obj_duel)
	link.link.phases[4]=false;
	
	instance_destroy(link);
	
}
