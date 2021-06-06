function scr_initialiseclient(argument0) {
	//scr_initilaiseclient()
	var size = 1024;
	var type= buffer_fixed;
	var alignment= 1;
	var buffer = buffer_create(size,type,alignment);
	buffer_seek(buffer,buffer_seek_start,0);
	buffer_write(buffer,buffer_u8,9);
	buffer_write(buffer,buffer_u8,argument0+1);
	with obj_game
	{
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
		buffer_write(buffer,buffer_u8,NoofPlayers);
		for (var i2=1;i2<=NoofPlayers;i2++)
		{
			buffer_write(buffer,buffer_u8,player[i2].positionx);
			buffer_write(buffer,buffer_u8,player[i2].positiony);				
		}
		buffer_write(buffer,buffer_u8,Grid.gridx);
		buffer_write(buffer,buffer_u8,Grid.gridy);
	}
	return buffer;


}
