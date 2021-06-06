function scr_spiralring(argument0, argument1, argument2) {
	//scr_spiralring(center,distance,col)
	/*
	Do multiple rings in succession
	*/
	range=0;
	range[0]=0;
	temparray[0]=0;
	var count=0;
	for (var i=0; i<=argument1;i++)
	{
		temparray=scr_cubering(argument0,i);
		for (var i2=0; i2<array_length_1d(temparray);i2++)
		{
			if (scr_checkspaceExists(temparray[i2].gridx,temparray[i2].gridz)=true) //check the identified hexes are actually in the gridarray
				{
					range[count]=temparray[i2];
					count++;
					if (argument2=true)
					{
						if (argument1=i)
						{
							obj_hexgridcreatorplanb.grid[temparray[i2].gridx,temparray[i2].gridz].image_blend=make_colour_rgb(0,64,0);
							obj_hexgridcreatorplanb.grid[temparray[i2].gridx,temparray[i2].gridz].event=true;
						}
						else
						{
							obj_hexgridcreatorplanb.grid[temparray[i2].gridx,temparray[i2].gridz].image_blend=make_colour_rgb(0,96,0);
						}
						for (var i3=1;i3<=obj_game.noOfQuests;i3++)
						{
							if (temparray[i2].gridx=obj_game.Quests[i3].positionX && temparray[i2].gridz=obj_game.Quests[i3].positionY)
							{
								obj_hexgridcreatorplanb.grid[temparray[i2].gridx,temparray[i2].gridz].image_blend=c_yellow;
								obj_hexgridcreatorplanb.grid[temparray[i2].gridx,temparray[i2].gridz].quest=true;
							}
						}
						for (var i3=1;i3<=obj_game.NoofPlayers;i3++)
						{
							if (temparray[i2].gridx=obj_game.player[i3].positionx && temparray[i2].gridz=obj_game.player[i3].positiony && i3!=obj_game.playerturn && !(temparray[i2].gridx=obj_game.Castle.positionX && temparray[i2].gridz = obj_game.Castle.positionY) && !(temparray[i2].gridx=obj_game.town.positionX && temparray[i2].gridz = obj_game.town.positionY))
							{
								obj_hexgridcreatorplanb.grid[temparray[i2].gridx,temparray[i2].gridz].image_blend=c_purple;
								obj_hexgridcreatorplanb.grid[temparray[i2].gridx,temparray[i2].gridz].duel=true;
							
							}
						
						}
					
					}
					else
					{
						obj_hexgridcreatorplanb.grid[temparray[i2].gridx,temparray[i2].gridz].image_blend=c_white;
					} //change the hex colour
				}
		}
	}
	temparray=0;
	return range;


}
