/// @description Insert description here
// You can write your code in this editor
var doevent=event;
var samespot=0;
var sizer=5;
Pspots[0]=noone;
with obj_game
{
	for (var i=1;i<=NoofPlayers;i++)
	{
		if (player[playerturn].positionx=player[i].positionx && player[playerturn].positiony=player[i].positiony && i!=playerturn)
		{
			samespot+=1;
			pspots[samespot]=player[i];
		}
	}
	if (samespot>0)
	{
		shiftx=-round(obj_hexplanb.sprite_width/sizer);
		shifty=round(obj_hexplanb.sprite_height/sizer);	
		player[playerturn].x=Grid.grid[player[playerturn].positionx,player[playerturn].positiony].x+shiftx;
		player[playerturn].y=Grid.grid[player[playerturn].positionx,player[playerturn].positiony].y+shifty;			
		for (i=1;i<=samespot;i++)
		{
			switch (i+1)
			{
				
				case 2:
				{
					shiftx=-round(obj_hexplanb.sprite_width/sizer);
					shifty=-round(obj_hexplanb.sprite_height/sizer);		
				}break;
				case 3:
				{
					shiftx=round(obj_hexplanb.sprite_width/(sizer+2));
					shifty=round(obj_hexplanb.sprite_height/sizer);		
				}break;
				case 4:
				{
					shiftx=round(obj_hexplanb.sprite_width/(sizer+2));
					shifty=-round(obj_hexplanb.sprite_height/sizer);		
				}break;
			}
			
			pspots[i].x=Grid.grid[pspots[i].positionx,pspots[i].positiony].x+shiftx;
			pspots[i].y=Grid.grid[pspots[i].positionx,pspots[i].positiony].y+shifty;	
		}
	}
	//move player
	var proceed=true;
	if (doevent=true)
	{
		events.draw=true;
		events.eventNO=eventorder[eventon];
		eventon+=1;
		if (eventon=array_length_1d(eventorder))
		eventon=0;
		proceed=false;
	}
			
	if (proceed=true)
	{
		scr_checkforduel();
	}
}