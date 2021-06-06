function scr_playerloserenown(argument0, argument1) {
	//scr_playerloserenown(player,amount)
	with obj_game
	{
		player[argument0].renown-=argument1;
		if (player[argument0].renown<0)
		player[argument0].renown=0;
	}


}
