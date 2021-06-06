function scr_playerloseitem(argument0, argument1) {
	//scr_playerloseitem(player,itemtolose)
	/*
	itemtolose=-1 means take 1 item away at random
	otemtolose=0-max means take away that item in paticular
	*/

	with obj_game
	{
		if (player[argument0].NoofItems>0)
		{
			var itemtolose=argument1;
			if (argument1=-1)
			{
				itemtolose=irandom(player[argument0].NoofItems-1)+1;
				player[argument0].items[itemtolose]=0;
			}
			else
			{
				for (var i3=1;i3<=player[argument0].NoofItems;i3++)
				{
					if (player[argument0].items[i3]=argument1)
					{
						player[argument0].items[i3]=0;
						break;
					}
				}
	
			}
			var i2=0;
			for (var i=1;i<=player[argument0].NoofItems;i++)
			{
				if (!player[argument0].items[i]=0)
				{
					i2+=1;
					player[argument0].items[i2]=player[argument0].items[i];
				}
			}
			player[argument0].NoofItems-=1;
			switch (itemtolose)
			{
				case 0:{
					player[argument0].maxroll-=1;
				}break;
				case 1:{
					player[argument0].maxroll-=2;
				}break;
				case 2:{
					player[argument0].maxroll-=1;
				}break;
				case 3:{
					player[argument0].maxroll-=2;
				}break;
				case 4:{
					player[argument0].maxroll-=1;
				}break;
				case 5:{
					scr_lowerplayerhp(argument0,1);
				}break;
				case 6:{
					player[argument0].maxroll-=1;
				}break;
				case 7:{
					player[argument0].movement-=1;
				}break;
			}
		}
	}


}
