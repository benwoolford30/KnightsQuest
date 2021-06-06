function scr_raiseplayerhp(argument0, argument1) {
	//scr_raiseplayerhp(player,amount)
	with obj_game
	{
		player[argument0].hp+=argument1;
		if (player[argument0].hp>player[argument0].maxhealth)
		{
			player[argument0].hp=player[argument0].maxhealth;
		}
	}


}
