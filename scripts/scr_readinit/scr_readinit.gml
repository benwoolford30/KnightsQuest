function scr_readinit() {
	//scr_initilaiseclient()
	with obj_game
	{
		Castle.positionX=buffer_read(buffer,buffer_u8);
		Castle.positionY=buffer_read(buffer,buffer_u8);
		town.positionX=buffer_read(buffer,buffer_u8);
		town.positionY=buffer_read(buffer,buffer_u8);
		noOfQuests=buffer_read(buffer,buffer_u8);
		for (var i2=1;i2<=noOfQuests;i2++)
		{
			Quests[i2].positionX=buffer_read(buffer,buffer_u8);
			Quests[i2].positionY=buffer_read(buffer,buffer_u8);
			Quests[i2].questNo=buffer_read(buffer,buffer_u8);
		}
		NoofPlayers=buffer_read(buffer,buffer_u8);
		for (var i2=1;i2<=NoofPlayers;i2++)
		{
			player[i2].positionx=buffer_read(buffer,buffer_u8);
			player[i2].positiony=buffer_read(buffer,buffer_u8);
						
		}
		Grid.gridx=buffer_read(buffer,buffer_u8);
		Grid.gridy=buffer_read(buffer,buffer_u8);
	}


}
