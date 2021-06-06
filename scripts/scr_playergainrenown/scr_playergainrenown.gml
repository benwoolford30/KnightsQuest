function scr_playergainrenown(argument0, argument1) {
	//scr_playergainrenown(player,amount)
	with obj_game
	{
		player[argument0].renown+=argument1;
	}


}
