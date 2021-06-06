/// @description Insert description here
// You can write your code in this editor
var test=0;
var eventType= async_load[? "type"];
switch (eventType)
{
	case network_type_connect:{
		connect=true;
	}break;
	case network_type_disconnect:{
		connect=false;
	}break;
	case network_type_data:{
		var buffer = async_load[? "buffer"];
        buffer_seek(buffer,buffer_seek_start,0);
		var packettype=buffer_read(buffer,buffer_u8);
		switch packettype
		{
			case 1:{
				var client=buffer_read(buffer,buffer_u8);
				with obj_game
				{
			
					gameC=client;
					Castle.positionX=buffer_read(buffer,buffer_u8);
					Castle.positionY=buffer_read(buffer,buffer_u8);
					Castle.x=Grid.grid[Castle.positionX,Castle.positionY].x;
					Castle.y=Grid.grid[Castle.positionX,Castle.positionY].y;
					town.positionX=buffer_read(buffer,buffer_u8);
					town.positionY=buffer_read(buffer,buffer_u8);
					town.x=Grid.grid[town.positionX,town.positionY].x;
					town.y=Grid.grid[town.positionX,town.positionY].y;
					noOfQuests=buffer_read(buffer,buffer_u8);
					for (var i=1;i<=noOfQuests;i++)
					{
						Quests[i].positionX=buffer_read(buffer,buffer_u8);
						Quests[i].positionY=buffer_read(buffer,buffer_u8);
						Quests[i].x=Grid.grid[Quests[i].positionX,Quests[i].positionY].x;
						Quests[i].y=Grid.grid[Quests[i].positionX,Quests[i].positionY].y;
						Quests[i].questNo=buffer_read(buffer,buffer_u8);
					}
					
					NoofPlayers=buffer_read(buffer,buffer_u8);
					for (var i2=1;i2<=NoofPlayers;i2++)
					{
						player[i2].positionx=buffer_read(buffer,buffer_u8);
						player[i2].positiony=buffer_read(buffer,buffer_u8);
						player[i2].x=Grid.grid[player[i2].positionx,player[i2].positiony].x;
						player[i2].y=Grid.grid[player[i2].positionx,player[i2].positiony].y;
					}
					
					for (var i=0;i<array_length_1d(legalmoves);i++)
					{
						Grid.grid[legalmoves[i].gridx,legalmoves[i].gridz].image_blend=c_white;				
					}
					legalmoves=0;
					for (var i=1;i<=NoofPlayers;i++)
					{
						if (player[i].turn=client)
						{
							
						}
					}
				}
			}break;
			case 2:{
				with obj_game
				{
					var prevplayer=buffer_read(buffer,buffer_u8);
					playerturn=buffer_read(buffer,buffer_u8);	
					player[prevplayer].positionx=buffer_read(buffer,buffer_u8);	
					player[prevplayer].positiony=buffer_read(buffer,buffer_u8);	
					player[prevplayer].x=Grid.grid[player[prevplayer].positionx,player[prevplayer].positiony].x;
					player[prevplayer].y=Grid.grid[player[prevplayer].positionx,player[prevplayer].positiony].y;
					if (playerturn=gameC)
					{
						legalmoves=scr_spiralring(Grid.grid[player[playerturn].positionx,player[playerturn].positiony].cube,player[playerturn].movement,true);					
					}
				}
			}break;
			case 3:{
				var ye=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/2,depth-1,obj_ye);
				ye.event=12;
				ye.link=id;
			}break;
			case 4:{
				create=instance_create_depth(0,0,0,obj_creator);
				create.clint=buffer_read(buffer,buffer_u8);
			}break;
			case 9:{				
				with create
				{
					 networking=true;
					 plcount=buffer_read(buffer,buffer_u8);
					 plcount=buffer_read(buffer,buffer_u8);
					 collumns=buffer_read(buffer,buffer_u8);
					 rows=buffer_read(buffer,buffer_u8);					 					 
					 castlex=buffer_read(buffer,buffer_u8);
					 castley=buffer_read(buffer,buffer_u8);
					 townx=buffer_read(buffer,buffer_u8);
					 towny=buffer_read(buffer,buffer_u8);
					 noofquest=buffer_read(buffer,buffer_u8);
					 for (var i2=1;i2<=noofquest;i2++)
					 {
						questpox[i2]=buffer_read(buffer,buffer_u8);
						questpoy[i2]=buffer_read(buffer,buffer_u8);
						questqnum[i2]=buffer_read(buffer,buffer_u8);
					 }
					 for (var i2=1;i2<=plcount;i2++)
					 {
						playerpox[i2]=buffer_read(buffer,buffer_u8);
						playerpoy[i2]=buffer_read(buffer,buffer_u8);
						playerrenown[i2]=buffer_read(buffer,buffer_u8);
						playerbankedrenown[i2]=buffer_read(buffer,buffer_u8);
						playerhp[i2]=buffer_read(buffer,buffer_u8);	
						playermovement[i2]=buffer_read(buffer,buffer_u8);	
						playerdontfast[i2]=buffer_read(buffer,buffer_u8);	
						playerslow[i2]=buffer_read(buffer,buffer_u8);							
						playerNoofItems[i2]=buffer_read(buffer,buffer_u8);
						if (playerNoofItems[i2]>0)
						{
							for (var i3=1; i3<=playerNoofItems[i2];i3++)
							{
								playeritems[i3]=buffer_read(buffer,buffer_u8);
							}
						}
					 }
					 eventl=buffer_read(buffer,buffer_u8);
					 
					 for (var i2=1;i2<=eventl;i2++)
					 {
						event[i2]=buffer_read(buffer,buffer_u8);
					 }
					 questl=buffer_read(buffer,buffer_u8);
					 questl=buffer_read(buffer,buffer_u8);					
					 for (var i2=1;i2<=questl;i2++)
					 {
						questO[i2]=buffer_read(buffer,buffer_u8);
					 }
					 questa=buffer_read(buffer,buffer_u8);
					 iteml=buffer_read(buffer,buffer_u8);
					 for (var i2=1;i2<=iteml;i2++)
					 {
						itemO[i2]=buffer_read(buffer,buffer_u8);
					 }	
					 logl=buffer_read(buffer,buffer_u8);
					 for (var i=0;i<10;i++)
					 {
						log[i]=buffer_read(buffer,buffer_string);
					 }	
				}
				room_goto(rm_game);
			}break;
			case 10:{
				with obj_game
				{
					
					 if instance_exists(obj_duel)
						instance_destroy(obj_duel);
					 playerturn=buffer_read(buffer,buffer_u8);					 
					 NoofPlayers=buffer_read(buffer,buffer_u8);
					 Grid.gridx=buffer_read(buffer,buffer_u8);
					 Grid.gridy=buffer_read(buffer,buffer_u8);					 					 
					 Castle.positionX=buffer_read(buffer,buffer_u8);
					 Castle.positionY=buffer_read(buffer,buffer_u8);
					 town.positionX=buffer_read(buffer,buffer_u8);
					 town.positionY=buffer_read(buffer,buffer_u8);
					 noOfQuests=buffer_read(buffer,buffer_u8);
					 for (var i2=1;i2<=noOfQuests;i2++)
					 {
						Quests[i2].positionX=buffer_read(buffer,buffer_u8);
						Quests[i2].positionY=buffer_read(buffer,buffer_u8);
						Quests[i2].x=Grid.grid[Quests[i2].positionX,Quests[i2].positionY].x;
						Quests[i2].y=Grid.grid[Quests[i2].positionX,Quests[i2].positionY].y;
						Quests[i2].questNo=buffer_read(buffer,buffer_u8);
						Quests[i2].exclamationmark.x=Quests[i2].x;
						Quests[i2].exclamationmark.y=Quests[i2].y;
						switch (GameQuests.questdifficulty[Quests[i2].questNo])
						{
							case 1:{
								Quests[i2].image_blend=c_green;
							}break;
							case 2:{
								Quests[i2].image_blend=c_orange;
							}break;
							case 3:{
								Quests[i2].image_blend=c_red;
							}break;
						}
					 }
					 for (var i2=1;i2<=NoofPlayers;i2++)
					 {
						player[i2].positionx=buffer_read(buffer,buffer_u8);
						player[i2].positiony=buffer_read(buffer,buffer_u8);
						player[i2].x=Grid.grid[player[i2].positionx,player[i2].positiony].x;
						player[i2].y=Grid.grid[player[i2].positionx,player[i2].positiony].y;
						player[i2].renown=buffer_read(buffer,buffer_u8);
						player[i2].bankedrenown=buffer_read(buffer,buffer_u8);
						player[i2].hp=buffer_read(buffer,buffer_u8);
						player[i2].movement=buffer_read(buffer,buffer_u8);
						player[i2].dontmakefastthisturn=buffer_read(buffer,buffer_u8);
						player[i2].slower=buffer_read(buffer,buffer_u8);					
						player[i2].NoofItems=buffer_read(buffer,buffer_u8);
						if (player[i2].NoofItems>0)
						{
							for (var i3=1; i3<=player[i2].NoofItems;i3++)
							{
								player[i2].items[i3]=buffer_read(buffer,buffer_u8);
							}
						}
					 }
					 eventl=buffer_read(buffer,buffer_u8);
					 for (var i2=0;i2<eventl;i2++)
					 {
						eventorder[i2]=buffer_read(buffer,buffer_u8);
					 }
					 eventon=buffer_read(buffer,buffer_u8);
					 questl=buffer_read(buffer,buffer_u8);
					 for (var i2=0;i2<questl;i2++)
					 {
						QuestOrder[i2]=buffer_read(buffer,buffer_u8);
					 }
					 QuestNom=buffer_read(buffer,buffer_u8);
					 iteml=buffer_read(buffer,buffer_u8);
					 for (var i2=0;i2<iteml;i2++)
					 {
						itemorder[i2]=buffer_read(buffer,buffer_u8);
					 }	
					 logl=buffer_read(buffer,buffer_u8);
					 for (var i2=array_length_1d(log)-10;i2<=array_length_1d(log)-1;i2++)
					 {
						log[i2]=buffer_read(buffer,buffer_string);
					 }
					 if (playerturn=gameC)
					 {
						legalmoves=scr_spiralring(Grid.grid[player[playerturn].positionx,player[playerturn].positiony].cube,player[playerturn].movement,true);
						camera_set_view_pos(view_camera[0], player[playerturn].x-(camera_get_view_width(view_camera[0])/2),player[playerturn].y-(camera_get_view_height(view_camera[0])/2));
					 }
				}
			}break;
			case 11:{
				var height= display_get_gui_height();
				var width= display_get_gui_width();
				var duellink=instance_create_depth(0,0,0,obj_duel);
				var challenger=obj_game.player[buffer_read(buffer,buffer_u8)];
				var defend=obj_game.player[buffer_read(buffer,buffer_u8)];
				with duellink
				{
					nah=instance_create_depth(width/2-width/8-width/32,height/2,-1,obj_nah);
					nah.event=6;
					nah.link=id;
					phases[2]=true;			
					challenger.thecase=false;
					defend.circumstance=true;
					actualchallenger=challenger;
					choice=defend;
					id.ye=instance_create_depth(width/2+width/8+width/32,height/2,-1,obj_ye);
					
					id.ye.event=13;
					id.ye.link=id;
					fight=true;
					
				}
			}break;
			case 12:{
				with obj_duel
				{
					phases[2]=false;
					phases[3]=true;
					actualchallenger.thecase=true;
					choice.circumstance=false;
					id.ye.event=4;
					accept=false;
					instance_destroy(nah);
					instance_activate_object(id.ye);
				}
			}break;
			case 13:{
				var opponentch=buffer_read(buffer,buffer_u8);	
				var height= display_get_gui_height();
				var width= display_get_gui_width();
				with obj_duel
				{
					choice.rpc=opponentch;
					instance_activate_object(id.ye);
					with id.ye
					{
						instance_destroy(obj_nah);
						instance_destroy(link.coin);
						instance_activate_object(link.choicerep);
						link.actualchallenger.thecase=true;
						link.choice.circumstance=false;
						link.ye.event=4;						
						link.phases[5]=false;
						link.phases[3]=true;
						link.accept=true;
						link.challenger.x=width/2-width/8;
						link.challenger.y=height/2+height/8;
						link.choicerep.x=width/2+width/8;
						link.choicerep.y=height/2+height/8;
					}
				}				
				
				
			}break;
		}
		
	}break;
}