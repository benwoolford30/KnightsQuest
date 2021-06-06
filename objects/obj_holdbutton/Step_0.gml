/// @description Insert description here
// You can write your code in this editor
if (device_mouse_check_button_pressed(0,mb_left)=true && device_mouse_x_to_gui(0)>=(x-sprite_get_width(spr_holdbutton)/2) && device_mouse_x_to_gui(0)<=(x+sprite_get_width(spr_holdbutton)/2) && device_mouse_y_to_gui(0)>=(y-sprite_height/2) && device_mouse_y_to_gui(0)<=(y+sprite_height/2))
{		
	var width=(display_get_gui_width());
	var height=(display_get_gui_height());
	held=true;
	image_blend=c_green;
	if (instance_exists(obj_duel))
	{
		obj_duel.alarm[1]=1;
		hideduel=true;
	}
	if (instance_exists(obj_town))
	{
		if (obj_town.pintown!=0)
		{
		obj_town.alarm[1]=1;
		hidetown=true;
		}
	}
	if (instance_exists(obj_castle))
	{
		if (obj_castle.pincastle!=0)
		{
		obj_castle.alarm[1]=1;
		hidecastle=true;
		}
	}
	switch (event)
	{
		case 1:{			
			csheet=instance_create_depth(0,0,0,obj_charactersheet);
			
			var pl=whichplayer;
			csheet.pl=pl;
			with (csheet)
			{				
				for (var i=1;i<=pl.hp;i++)
				{
					hearts[i-1]=instance_create_depth(width/2+((i-1)*(width/8+width/64)),height/4+height/16,-1,obj_heart);
					hearts[i-1].image_xscale*=(display_get_gui_width()/480)*2;
					hearts[i-1].image_yscale*=(display_get_gui_height()/480)*2;
					noofhearts+=1;
				}
				renown=instance_create_depth(width/2,height/2,-1,obj_renown);
				renown.amount=pl.renown;
				renown.image_xscale*=(display_get_gui_width()/480)*4;
				renown.image_yscale*=(display_get_gui_height()/480)*4;
				bankedrenown=instance_create_depth(width/2+width/8+width/16,height/2,-1,obj_bankedrenown);
				bankedrenown.amount=pl.bankedrenown;
				bankedrenown.image_xscale*=(display_get_gui_width()/480)*4;
				bankedrenown.image_yscale*=(display_get_gui_height()/480)*4;
				for (var i=1;i<=pl.NoofItems;i++)
				{
					var obj_create=noone;
					switch (pl.items[i])
					{
						case 0:{
							obj_create=obj_longsword;
						}break;
						case 1:{
							obj_create=obj_potspan;
						}break;
						case 2:{
							obj_create=obj_longsword;
						}break;
						case 3:{
							obj_create=obj_flambatmace;
						}break;
						case 4:{
							obj_create=obj_sturdyshield;
						}break;
						case 5:{
							obj_create=obj_platearmour;
						}break;
						case 6:{
							obj_create=obj_wishring;
						}break;
						case 7:{
							obj_create=obj_elevatingboots;
						}break;
					}
					items[i-1]=instance_create_depth(width/2+((i-1)*(width/16+width/16+width/64)),height/2+height/8+height/6,-1,obj_create);
					itemnum+=1;
				}
				playercopy=instance_create_depth(width/4+width/16,height/2,-1,obj_playercopy);
				playercopy.image_blend=pl.image_blend;
				playercopy.image_xscale*=(display_get_gui_width()/480)*6;
				playercopy.image_yscale*=(display_get_gui_height()/480)*6;
		
			}
		}break;
		case 2:{
			csheet=instance_create_depth(0,0,0,obj_guide);
		}break;
		case 3:{
			csheet=instance_create_depth(0,0,0,obj_log);
		}break;
		case 4:{
			instance_destroy(all);
			room_goto(rm_menu);
		}break;
	}
	
}
if (device_mouse_check_button_released(0,mb_left)=true && held=true)	
{
	mouse_clear(mb_left);
	held=false;
	image_blend=c_white;	
	if (hideduel=true)
	{
		hideduel=false;
		instance_activate_object(obj_duel);
		obj_duel.alarm[2]=1;
	}
	if (hidetown=true)
	{
		hidetown=false;
		instance_activate_object(obj_town);
		obj_town.alarm[2]=1;
	}
	if (hidecastle=true)
	{
		hidecastle=false;
		instance_activate_object(obj_castle);
		obj_castle.alarm[2]=1;
	}
	if (instance_exists(csheet))
	{
		instance_destroy(csheet);
		csheet=noone;
	}
	
}