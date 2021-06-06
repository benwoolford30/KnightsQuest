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
	Quests[gameqnum].win=true;
	Quests[gameqnum].win=true;	
	scr_playergainrenown(playerturn,GameQuests.questrenown[this.minigame]);
	log[array_length_1d(log)]=player[playerturn].name+" completed a quest!";
				
}
instance_destroy();