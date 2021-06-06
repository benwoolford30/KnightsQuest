/// @description Initialise whole game
// You can write your code in this editor
randomise();
switch (os_type) //check which platform game is on
{
	case os_windows:{
   
	}break;
   
	case os_macosx:{
   
	}break;
	case os_ios:{
   
	}break;
	case os_android:{
		scr_scaletodevice(); //stretch game to screen
	}break;
	
}

if (instance_exists(obj_creator))
{
	NoofPlayers=obj_creator.plcount;
}
else
NoofPlayers=4;
music=instance_create_depth(0,0,0,obj_gamemusic);
Grid=instance_create_depth(x,y,depth+1,obj_hexgridcreatorplanb);
events=instance_create_depth(x,y,depth,obj_events);
eventon=0;
eventorder[eventon]=0;
for (var i=0;i<array_length_1d(events.eventName);i++) //randomise the order of game events
{
	var rcount=0;
	var reset=true;				
	while (reset=true)
	{
		reset=false;
		rcount=irandom(array_length_1d(events.eventName)-1);
		for (var i2=0;i2<array_length_1d(eventorder);i2++)
		{
			if (eventorder[i2]=rcount)
			{
				reset=true;
				break;
			}
		}
	}			
	eventorder[i]=rcount;
}
noOfQuests=4;
QuestOrder[0]=0;
GameQuests=instance_create_depth(x,y,depth,obj_quests);
var difficulty=1;
var counter=0;
for (var i=0;i<array_length_1d(GameQuests.questscore);i++) //randomise the order of game events
{
	var rcount=0;
	var reset=true;				
	while (reset=true)
	{
		reset=false;
		rcount=irandom(array_length_1d(GameQuests.questscore)-1);
		for (var i2=0;i2<array_length_1d(QuestOrder);i2++)
		{
			if (QuestOrder[i2]=rcount) || (GameQuests.questdifficulty[rcount]!=difficulty)
			{
				reset=true;
				break;
			}
		}
	}	
	counter+=1;
	if (counter=5 || counter=12)
	difficulty+=1;
	QuestOrder[i]=rcount;
}
maxquests=array_length_1d(GameQuests.questscore);
QuestNom=0;
GamePiecesX[0]=0;
GamePiecesY[0]=0;
NoofPieces=0;
for (i=1;i<=noOfQuests;i++)
{	
	Quests[i]=instance_create_depth(x,y,depth,obj_Questspot);
	Quests[i].questspotnum=i;
	scr_Questreinit(i);
}
town=instance_create_depth(x,y,depth,obj_town);
var xy=scr_getunoccupied();
var townx=xy[0];
var towny=xy[1];
town.positionX=Grid.axial[townx,towny].identityX;
town.positionY=Grid.axial[townx,towny].identityY;
town.x=Grid.grid[town.positionX,town.positionY].x;
town.y=Grid.grid[town.positionX,town.positionY].y;
Castle=instance_create_depth(x,y,depth,obj_castle);
items=instance_create_depth(x,y,depth,obj_items);
itemon=0;
itemorder[itemon]=0;
for (var i=0;i<array_length_1d(items.itemname);i++) //randomise the order of game events
{
	var rcount=0;
	var reset=true;				
	while (reset=true)
	{
		reset=false;
		rcount=irandom(array_length_1d(items.itemname)-1);
		for (var i2=0;i2<array_length_1d(itemorder);i2++)
		{
			if (itemorder[i2]=rcount)
			{
				reset=true;
				break;
			}
		}
	}			
	itemorder[i]=rcount;
}
player[0]=0;
//create player
var xy=scr_getunoccupied();
var CastleX=xy[0];
var CastleY=xy[1];
Castle.positionX=Grid.axial[CastleX,CastleY].identityX;
Castle.positionY=Grid.axial[CastleX,CastleY].identityY;
Castle.x=Grid.grid[Castle.positionX,Castle.positionY].x;
Castle.y=Grid.grid[Castle.positionX,Castle.positionY].y;
var playx=Grid.grid[Castle.positionX,Castle.positionY].x;
var playy=Grid.grid[Castle.positionX,Castle.positionY].y;
var shiftx=0;
var shifty=0;
var sizer=5;
for (i=1;i<=NoofPlayers;i++)
{
	var width=(display_get_gui_width());
	var height=(display_get_gui_height());
	charactersheet[i]=instance_create_depth(width,height/4+((i-1)*(height/8+height/16)),-1,obj_holdbutton);
}
guide=instance_create_depth(width,height/8-height/16,-1,obj_holdbutton);
guide.event=2;
logbutton=instance_create_depth(0,height-height/16,-1,obj_holdbutton);
logbutton.event=3;
logbutton.image_xscale*=-1;
//backbutton=instance_create_depth(0,0,-1,obj_holdbutton);
//backbutton.image_xscale*=-1;
//backbutton.event=4;
for (i=1;i<=NoofPlayers;i++) //set player positions
{
	switch (i)
	{
		case 1:
		{
			shiftx=-round(obj_hexplanb.sprite_width/sizer);
			shifty=round(obj_hexplanb.sprite_height/sizer);			
		}break;
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
	
	player[i]=instance_create_depth(playx+shiftx,playy+shifty,-1,obj_player);
	switch (i)
	{
		case 1:
		{			
			player[i].image_blend=c_red;
		}break;
		case 2:
		{			
			player[i].image_blend=c_blue;
		}break;
		case 3:
		{			
			player[i].image_blend=c_green;
		}break;
		case 4:
		{			
			player[i].image_blend=c_yellow;
		}break;
	}
	
	player[i].positionx=Castle.positionX;
	player[i].positiony=Castle.positionY;
	player[i].turn=i;
	player[i].name="Player "+string(i);
	charactersheet[i].whichplayer=player[i];
	charactersheet[i].colour=player[i].image_blend;
}	
chosespace=false;
playerturn=1;

legalmoves[0]=0;
var dospiral=true;
if (instance_exists(obj_creator))
{
	if (obj_creator.networking=true) && (obj_creator.host=false)
	{
		dospiral=false;
	}
}
if (dospiral=true)
legalmoves=scr_spiralring(Grid.grid[player[playerturn].positionx,player[playerturn].positiony].cube,player[playerturn].movement,true);
log[0]="---";
for (var i=1;i<=10;i++)
log[i]="---";
gameC=1;
if (instance_exists(obj_creator))
gameC=obj_creator.gclient;
server=noone;
client=noone;
dontallowspaceclick=false;
if (instance_exists(obj_creator))
{
	if (obj_creator.networking=true)
	{
		if (obj_creator.host=true)
		{
			//server=instance_create_depth(1,1,1,obj_server);
			with obj_client
			{
				var size = 1024;
				var type= buffer_fixed;
				var alignment= 1;
				buffer = scr_sendtoserver(9);
				network_send_packet(connection,buffer,buffer_get_size(buffer));
				buffer_delete(buffer);
			}
		}
		else
		{
			Castle.positionX=obj_creator.castlex;
			Castle.positionY=obj_creator.castley;
			Castle.x=Grid.grid[Castle.positionX,Castle.positionY].x;
			Castle.y=Grid.grid[Castle.positionX,Castle.positionY].y;
			town.positionX=obj_creator.townx;
			town.positionY=obj_creator.towny;
			town.x=Grid.grid[town.positionX,town.positionY].x;
			town.y=Grid.grid[town.positionX,town.positionY].y;
			noOfQuests=obj_creator.noofquest;
			for (var i2=1;i2<=noOfQuests;i2++)
			{
				Quests[i2].positionX=obj_creator.questpox[i2];
				Quests[i2].positionY=obj_creator.questpoy[i2];
				Quests[i2].x=Grid.grid[Quests[i2].positionX,Quests[i2].positionY].x;
				Quests[i2].y=Grid.grid[Quests[i2].positionX,Quests[i2].positionY].y;
				Quests[i2].questNo=obj_creator.questqnum[i2];
				Quests[i2].exclamationmark.x=Quests[i2].x;
				Quests[i2].exclamationmark.y=Quests[i2].y;
				switch (GameQuests.questdifficulty[Quests[i2].questNo])
				{
					case 1:{
						Quests[i2].image_blend=c_green;
					}break;
					case 2:{
						Quests[i2].image_blend=c_orange;
					}break;
					case 3:{
						Quests[i2].image_blend=c_red;
					}break;
				}
			}
			for (var i2=1;i2<=NoofPlayers;i2++)
			{
				player[i2].positionx=obj_creator.playerpox[i2];
				player[i2].positiony=obj_creator.playerpoy[i2];
				player[i2].x=Grid.grid[player[i2].positionx,player[i2].positiony].x;
				player[i2].y=Grid.grid[player[i2].positionx,player[i2].positiony].y;
				player[i2].renown=obj_creator.playerrenown[i2];
				player[i2].hp=obj_creator.playerhp[i2];			
			}
			for (var i=0;i<array_length_1d(events.eventName);i++)
			{
				eventorder[i]=obj_creator.event[i];
			}
			for (var i=0;i<array_length_1d(GameQuests.questscore);i++) 
			{
				QuestOrder[i]=obj_creator.questO[i];
			}
			for (var i=0;i<array_length_1d(items.itemname);i++) 
			{
				itemorder[i]=obj_creator.itemO[i];
			}
			log=obj_creator.log;
			gameC=obj_creator.clint;
			//client=instance_create_depth(1,1,1,obj_client);
		}
	}
	instance_destroy(obj_creator);
}

