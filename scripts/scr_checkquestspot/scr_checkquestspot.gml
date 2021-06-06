function scr_checkquestspot() {
	//scr_checkspot
	//check for quest
	with obj_game
	{
	mouse_clear(mb_left);
	var onaquest=false;

		for (i=1;i<=noOfQuests;i++)
		{
			if (player[playerturn].positionx=Quests[i].positionX && player[playerturn].positiony=Quests[i].positionY)
			{
				onaquest=true;
				Quests[i].playeronquest[playerturn]=true;
				player[playerturn].standonaquest=true;			
				break;
			}
		}
				
		if (onaquest=false)
		{
			if (player[playerturn].positionx=town.positionX && player[playerturn].positiony=town.positionY)
			{
				town.intown=true;
				town.alarm[0]=1;
				town.pintown=player[playerturn];
				scr_raiseplayerhp(playerturn,3);
			}
			else
			{
				if (player[playerturn].positionx=Castle.positionX && player[playerturn].positiony=Castle.positionY)
				{
					Castle.incastle=true;
					Castle.alarm[0]=1;
					Castle.pincastle=player[playerturn];
				}
				else
				scr_gamenextplayer();
			}
		}
	}


}
