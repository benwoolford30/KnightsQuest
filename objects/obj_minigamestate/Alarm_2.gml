/// @description Insert description here
// You can write your code in this editor
instance_deactivate_object(id);
instance_destroy(all);
instance_activate_object(id);
instance_activate_all();
var this=id;
with obj_game
{
	mouse_clear(mb_left);
	Quests[gameqnum].alarm[0]=room_speed*2;
	Quests[gameqnum].endresult=true;
	Quests[gameqnum].outcome=false;
	Quests[gameqnum].endturnandmovequest=true;
	player[playerturn].standonaquest=false;
	Quests[playerturn].playeronquest[playerturn]=false;
	Quests[gameqnum].Noofrolls=0;	
	Quests[gameqnum].win=false;
	log[array_length_1d(log)]=player[playerturn].name+" failed a quest!";
	switch (this.minigame)
	{
		case 0:{
				scr_lowerplayerhp(playerturn,1);
				scr_playerloseitem(playerturn,-1);
		}break;
		case 1:{
				scr_lowerplayerhp(playerturn,100);					
		}break;
		case 2:{
				scr_lowerplayerhp(playerturn,2);					
		}break;
		case 3:{
				scr_playerloserenown(playerturn,1);					
		}break;
		case 4:{
				scr_lowerplayerhp(playerturn,1);					
		}break;
		case 5:{
				scr_lowerplayerhp(playerturn,1);
				scr_playerloseitem(playerturn,-1);
		}break;
		case 6:{
				scr_lowerplayerhp(playerturn,1);
				scr_playerloserenown(playerturn,1);
		}break;
		case 7:{
				scr_lowerplayerhp(playerturn,1);
				scr_playerloserenown(playerturn,1);
		}break;
		case 8:{
				scr_lowerplayerhp(playerturn,2);					
		}break;
		case 9:{
				scr_playerloserenown(playerturn,1);					
		}break;
		case 10:{
												
		}break;
		case 11:{
												
		}break;
		case 12:{
				scr_playerloserenown(playerturn,1);					
		}break;
		case 13:{
				scr_playerloserenown(playerturn,1);					
		}break;
		case 14:{
				scr_playerloseitem(playerturn,-1);				
		}break;
	}					
}
instance_destroy();