function scr_lowerplayerhp(argument0, argument1) {
	//scr_lowerplayerhp(player,amount)
	with obj_game
	{
		player[argument0].hp-=argument1;
		if (player[argument0].hp<1)
			{
				player[argument0].positionx=Castle.positionX;
				player[argument0].positiony=Castle.positionY;
				player[argument0].x=Castle.x;
				player[argument0].y=Castle.y;
				player[argument0].hp=3;
				player[argument0].renown=0;
				var itemshold=player[argument0].NoofItems;
				for (var i=itemshold;i>=1;i--)
				scr_playerloseitem(argument0,-1);
				log[array_length_1d(log)]=player[argument0].name+" has died!";
				
			}
	}


}
