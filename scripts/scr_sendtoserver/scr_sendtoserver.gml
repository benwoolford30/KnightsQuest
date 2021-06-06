function scr_sendtoserver(argument0) {
	//scr_initilaiseclient()
	var size = 1024;
	var type= buffer_fixed;
	var alignment= 1;
	var buffer = buffer_create(size,type,alignment);
	buffer_seek(buffer,buffer_seek_start,0);
	buffer_write(buffer,buffer_u8,argument0);
	with obj_game
	{
		buffer_write(buffer,buffer_u8,playerturn);
		buffer_write(buffer,buffer_u8,NoofPlayers);
		buffer_write(buffer,buffer_u8,Grid.gridx);
		buffer_write(buffer,buffer_u8,Grid.gridy);
		buffer_write(buffer,buffer_u8,Castle.positionX);
		buffer_write(buffer,buffer_u8,Castle.positionY);
		buffer_write(buffer,buffer_u8,town.positionX);
		buffer_write(buffer,buffer_u8,town.positionY);
		buffer_write(buffer,buffer_u8,noOfQuests);
		for (var i2=1;i2<=noOfQuests;i2++)
		{
			buffer_write(buffer,buffer_u8,Quests[i2].positionX);
			buffer_write(buffer,buffer_u8,Quests[i2].positionY);
			buffer_write(buffer,buffer_u8,Quests[i2].questNo);
		}	
		for (var i2=1;i2<=NoofPlayers;i2++)
		{
			buffer_write(buffer,buffer_u8,player[i2].positionx);
			buffer_write(buffer,buffer_u8,player[i2].positiony);
			buffer_write(buffer,buffer_u8,player[i2].renown);	
			buffer_write(buffer,buffer_u8,player[i2].bankedrenown);
			buffer_write(buffer,buffer_u8,player[i2].hp);
			buffer_write(buffer,buffer_u8,player[i2].movement);
			buffer_write(buffer,buffer_u8,player[i2].dontmakefastthisturn);
			buffer_write(buffer,buffer_u8,player[i2].slower);
			buffer_write(buffer,buffer_u8,player[i2].NoofItems);
			if (player[i2].NoofItems>0)
			{
				for (var i3=1; i3<=player[i2].NoofItems;i3++)
				{
					buffer_write(buffer,buffer_u8,player[i2].items[i3]);
				}
			}
		}	
		buffer_write(buffer,buffer_u8,array_length_1d(events.eventName));
		for (var i=0;i<array_length_1d(events.eventName);i++) 
		{
			buffer_write(buffer,buffer_u8,eventorder[i]);
		}
		buffer_write(buffer,buffer_u8,eventon);
		buffer_write(buffer,buffer_u8,array_length_1d(GameQuests.questscore));
		for (var i=0;i<array_length_1d(GameQuests.questscore);i++) 
		{
			buffer_write(buffer,buffer_u8,QuestOrder[i]);
		}
		buffer_write(buffer,buffer_u8,QuestNom);
		buffer_write(buffer,buffer_u8,array_length_1d(items.itemname));
		for (var i=0;i<array_length_1d(items.itemname);i++) 
		{
			buffer_write(buffer,buffer_u8,itemorder[i]);
		}
		buffer_write(buffer,buffer_u8,array_length_1d(log));
		for (var i2=array_length_1d(log)-10;i2<=array_length_1d(log)-1;i2++)
		{
			buffer_write(buffer,buffer_string,log[i2]);
		}

	
	}
	return buffer;


}
