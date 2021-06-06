/// @description Insert description here
// You can write your code in this editor
if (device_mouse_check_button_released(0,mb_left)=true && device_mouse_x_to_gui(0)>=(x-sprite_width/2) && device_mouse_x_to_gui(0)<=(x+sprite_width/2) && device_mouse_y_to_gui(0)>=(y-sprite_height/2) && device_mouse_y_to_gui(0)<=(y+sprite_height/2))
{	
	var height= display_get_gui_height();
	var width= display_get_gui_width();
	mouse_clear(mb_left);
	switch event
	{
		case 1:{
			instance_destroy(obj_arrow);
			instance_destroy(obj_nah);
			instance_deactivate_object(link.choicerep);
			instance_deactivate_object(link.challenger);
			instance_destroy(obj_playercopy);
			instance_activate_object(link.choicerep);
			instance_activate_object(link.challenger);
			
			link.challenger.y=height/2-height/7;
			link.choicerep.y=height/2-height/7;
			link.coin=instance_create_depth(width/2,height/2+height/16,-6,obj_renown);
			link.coin.link=link;
			with link.coin
			{
				image_xscale*=(width/480)*2;
				image_yscale*=(height/480)*2;
				
			}
			link.arrow1=instance_create_depth(width/2-width/12,height/2+height/16,-6,obj_arrow);
			link.arrow1.link=link;			
			link.arrow1.event=2;
			link.arrow1.image_angle=90;
			link.arrow1.image_xscale*=(width/480)*0.75;
			link.arrow1.image_yscale*=(height/480)*0.75;
			link.arrow2=instance_create_depth(width/2+width/12,height/2+height/16,-6,obj_arrow);
			link.arrow2.link=link;			
			link.arrow2.event=2;
			link.arrow2.image_angle=270;
			link.arrow2.image_xscale*=(width/480)*0.75;
			link.arrow2.image_yscale*=(height/480)*0.75;
			link.limit=min(link.actualchallenger.renown,link.choice.renown,5);
			link.ye.event=2;
			link.phases[1]=true;
			link.phases[0]=false;
		}break;
		case 9:{
			link.ye.event=10;
			link.fight=true;			
			instance_deactivate_object(link.choicerep);
			instance_destroy(obj_arrow);
			
			var height= display_get_gui_height();
			var width= display_get_gui_width();
			link.nah=instance_create_depth(width/2-width/8-width/32,height/2,-1,obj_nah);
			link.nah.event=2;
			link.nah.link=link;
			link.ye.event=3;
			link.phases[2]=true;
			
			link.actualchallenger.thecase=false;
			link.choice.circumstance=true;
		}break;
		case 10:{
			
			link.ye.event=3;		
			instance_deactivate_object(link.ye);	
			instance_destroy(link.nah);
			var height= display_get_gui_height();
			var width= display_get_gui_width();
			rpc=instance_create_depth(width/2,height/2+height/8,depth,obj_rpc);
			rpc.link=link;
			rpc.agressor=2;
			link.phases[2]=false;
			link.phases[5]=true;
			
		}break;
		case 2:{
			
			link.ye.event=10;
			instance_destroy(obj_arrow);
			instance_deactivate_object(link.ye);
			instance_deactivate_object(link.coin);
			var height= display_get_gui_height();
			var width= display_get_gui_width();
			rpc=instance_create_depth(width/2,height/2+height/8,depth,obj_rpc);
			rpc.link=link;
			link.phases[1]=false;
			link.phases[4]=true;
			link.actualchallenger.thecase=false;
			link.choice.circumstance=false;
		}break;
		case 3:{
			instance_destroy(obj_nah);
			instance_destroy(link.coin);
			instance_activate_object(link.choicerep);
			link.actualchallenger.thecase=true;
			link.choice.circumstance=false;
			link.ye.event=4;
			link.actualchallenger.roll=irandom(link.actualchallenger.maxroll-1)+1;
			link.choice.roll=irandom(link.choice.maxroll-1)+1;
			link.phases[2]=false;
			link.phases[3]=true;
			link.accept=true;
			link.challenger.x=width/2-width/8;
			link.challenger.y=height/2+height/8;
			link.choicerep.x=width/2+width/8;
			link.choicerep.y=height/2+height/8;
		}break;
		case 4:{			
			if (link.accept=true)
			{
				var challengerwins=0;
				switch (link.actualchallenger.rpc)
				{
					case 1:{ //scissors
						switch (link.choice.rpc)
						{
							case 1:{
								//draw
							}break;
							case 2:{
								//challenger loses
								challengerwins=2;
							}break;
							case 3:{
								//challenger wins
								challengerwins=1;
							}break;
						};
					}break;
					case 2:{ //rock
						switch (link.choice.rpc)
						{
							case 1:{
								challengerwins=1;
							}break;
							case 2:{
								
							}break;
							case 3:{
								//challenger wins
								challengerwins=2;
							}break;
						};
					}break;
					case 3:{ //paper
						switch (link.choice.rpc)
						{
							case 1:{
								challengerwins=2;
							}break;
							case 2:{
								challengerwins=1;
							}break;
							case 3:{
							
							}break;
						};
					}break;
					
				}
				
				if (challengerwins=0) //draw
				{
					obj_game.log[array_length_1d(obj_game.log)]=link.actualchallenger.name+ " challenged " + link.choice.name + " and they tied!"; 
					
				}
				if (challengerwins=1)//challenger wins
				{
					link.actualchallenger.renown+=link.bet;
					link.choice.renown-=link.bet;
					obj_game.log[array_length_1d(obj_game.log)]=link.actualchallenger.name+ " challenged " + link.choice.name + " and won " +string(link.bet) + " renown!"; 
					scr_lowerplayerhp(link.choice.turn,1);
					
				}
				if (challengerwins=2) //challenger loses
				{
					link.actualchallenger.renown-=link.bet;
					link.choice.renown+=link.bet;
					obj_game.log[array_length_1d(obj_game.log)]=link.choice.name+ " was challenged by " + link.actualchallenger.name + " and won " +string(link.bet) + " renown!"; 
					scr_lowerplayerhp(link.actualchallenger.turn,1);
				}
				link.whowon=challengerwins;
			}
			else
			{
				if (link.choice.renown>0)
				{
					link.actualchallenger.renown+=1;
					link.choice.renown-=1;
				}
				obj_game.log[array_length_1d(obj_game.log)]=link.actualchallenger.name+ " challenged " + link.choice.name + " and they wussed out the fight!"; 
					
			}
			if (link.actualchallenger.slower=false)
			{
				link.actualchallenger.movement-=1;
			}
			link.actualchallenger.slower=true;
			link.actualchallenger.dontmakefastthisturn=true;
			instance_destroy(obj_duel);
			scr_checkquestspot();
		}break;
		case 5:{			
				link.pintown.renown-=obj_game.items.itemrenowncost[itemid];
				scr_playergainitem(link.pintown.turn,itemid);
				link.bought+=1;
				instance_destroy(self);
		}break;
		case 6:{
			link.alarm[3]=1;
			instance_destroy(self);
		}break;
		case 7:{
			link.alarm[4]=1;
			instance_destroy(self);
		}break;
		case 8:{
			condit=instance_create_depth(0,0,0,obj_creator);
			var conditions=link;
			with condit{
				plcount=conditions.numofplayers;
				rows=conditions.numofrows;
				collumns=conditions.numofcollumns;
			}
			instance_activate_object(obj_menuchoice);
			instance_destroy(obj_menuchoice);
			room_goto(rm_game);
		}break;
		case 11:{
			//room_goto(rm_game);	
			var hoster=instance_create_depth(1,1,1,obj_creator);	
			var conditions=link;
			with hoster{
				plcount=conditions.numofplayers;
				rows=conditions.numofrows;
				collumns=conditions.numofcollumns;
				networking=true;
				host=true;
			}
			var hosta=instance_create_depth(0,0,0,obj_client);
			hosta.host=true;
			hosta.alarm[0]=1;
			hosta.condit=hoster;
			instance_deactivate_object(link);
			instance_deactivate_object(link.ye);
			instance_deactivate_object(link.nah);
			instance_deactivate_object(obj_arrow);
			
		}break;
		case 12:{
			room_goto(rm_game);
			
		}break;
		case 13:{
			var height= display_get_gui_height();
			var width= display_get_gui_width();
			rpc=instance_create_depth(width/2,height/2+height/8,depth,obj_rpc);
			rpc.link=link;			
			rpc.agressor=2;
			link.phases[2]=false;
			link.phases[5]=true;
			instance_destroy(id);
			instance_destroy(obj_nah);
		}break;

	}
}