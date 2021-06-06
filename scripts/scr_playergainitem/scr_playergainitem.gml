function scr_playergainitem(argument0, argument1) {
	//scr_playergainitem(player,itemid)
	/*
		itemid=-1 means gain a random item
		any other number means that specific item
	*/
	with obj_game
	{
		if (argument1=-1)
		{
			argument1=irandom(array_length_1d(items.itemname)-1);
		}
	
		if (player[argument0].NoofItems<3)
		{
			player[argument0].NoofItems+=1;
			player[argument0].items[player[argument0].NoofItems]=argument1;
			/*
			Longsword
			Mrs Pot's Pan
			Sneaky Dagger
			Flaming Battle Mace
			Sturdy Shield
			Plate Armour
			Wishing Ring
			Elevating boots 
			*/
			switch (argument1)
			{
				case 0:{
					player[argument0].maxroll+=1;
				}break;
				case 1:{
					player[argument0].maxroll+=2;
				}break;
				case 2:{
					player[argument0].maxroll+=1;
				}break;
				case 3:{
					player[argument0].maxroll+=2;
				}break;
				case 4:{
					player[argument0].maxroll+=1;
				}break;
				case 5:{
					scr_raiseplayerhp(argument0,1);
				}break;
				case 6:{
					player[argument0].maxroll+=1;
				}break;
				case 7:{
					player[argument0].movement+=1;
				}break;
			}
			log[array_length_1d(log)]=player[argument0].name+" has acquired a "+ items.itemname[argument1];
		
		}
	}


}
