/// @description Initialise x and y and QuestNo
// You can write your code in this editor
exclamationmark=instance_create_depth(x,y,depth-1,obj_exclamationmark);
positionX=0;
outcome=false;
positionY=0;
questNo=0;
questspotnum=0;
for (var i=1;i<=obj_game.NoofPlayers;i++)
{
playeronquest[i]=false;
	for (var i2=1;i2<=3;i2++)
	{
		playerturns[i,i2]=0;
	}
}
Noofrolls=0;
win=false;
endresult=false;
total=0;
endturnandmovequest=false;
endquest=false;