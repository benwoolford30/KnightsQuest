/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("A")))
{
	instance_activate_all();
	instance_destroy(id);
	with obj_game
	{
		Quests[gameqnum].endresult=true;
		Quests[gameqnum].outcome=false;
		Quests[gameqnum].endturnandmovequest=true;
		player[playerturn].standonaquest=false;
		Quests[playerturn].playeronquest[playerturn]=false;
		Quests[gameqnum].Noofrolls=0;
	}
}