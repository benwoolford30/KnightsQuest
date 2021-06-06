/// @description Insert description here
// You can write your code in this editor
if (event=3)
{
	obj_game.itemon+=obj_town.bought;
	obj_town.bought=0;
	if obj_game.itemon>array_length_1d(obj_game.itemorder)
	{
		obj_game.itemon-=6;
	}
}