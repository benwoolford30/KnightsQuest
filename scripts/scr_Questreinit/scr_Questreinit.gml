function scr_Questreinit(argument0) {
	//scr_Questreinit(questnum)
	with obj_game
	{
		var xy=scr_getunoccupied();
		var QuestsX=xy[0];
		var QuestsY=xy[1];
		Quests[argument0].positionX=Grid.axial[QuestsX,QuestsY].identityX;
		Quests[argument0].positionY=Grid.axial[QuestsX,QuestsY].identityY;
		Quests[argument0].x=Grid.grid[Quests[argument0].positionX,Quests[argument0].positionY].x;
		Quests[argument0].y=Grid.grid[Quests[argument0].positionX,Quests[argument0].positionY].y;
		Quests[argument0].exclamationmark.x=Quests[argument0].x;
		Quests[argument0].exclamationmark.y=Quests[argument0].y;
		Quests[argument0].questNo=QuestOrder[QuestNom];
		switch (GameQuests.questdifficulty[Quests[argument0].questNo])
		{
			case 1:{
				Quests[argument0].image_blend=c_green;
			}break;
			case 2:{
				Quests[argument0].image_blend=c_orange;
			}break;
			case 3:{
				Quests[argument0].image_blend=c_red;
			}break;
		}
		QuestNom+=1;
		if (QuestNom>=maxquests)
		QuestNom=0;
	}


}
