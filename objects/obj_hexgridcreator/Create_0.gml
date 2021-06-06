/// @description redundant
gridx=10;
gridy=10;
grid[0,0]=pointer_null;


var i=0;
var i2=0;
var placex=x;
var placey=y;

for (i=1;i<=gridx; i++)
{
	switch (i)
	{
		case 1: case 3: case 5: case 7: case 9:{
		placey=y;
		}break;
		case 2: case 4: case 6: case 8: case 10:{
		placey=y-(sprite_get_height(sprhex)/2);
		}break;
	};
	for (i2=1; i2<=gridy; i2++)
	{
		var space=instance_create_layer(placex,placey,"Instances",obj_hex);
		grid[i,i2]=space;
		
		space.identityX=i;
		space.identityY=i2;
		placey+=sprite_get_height(sprhex);
	}
	
	placex+=sprite_get_width(sprhex)*0.75;
	
}
//create neightbours
var count=1;
for (i=1; i<=gridx; i++)
{
	for (i2=1; i2<=gridy; i2++)
	{
		count=0;
		if (i-1<1 ||i2-1<1)
			grid[i,i2].neighbour[count]=0;
		else
			grid[i,i2].neighbour[count]=grid[i-1,i2-1];
		count++;
		
	}
}
dragx =0;
dragy =0;
pointx=0;
pointy=0;
scale=0.1;
camscale=2;
zoomin=false;
oldviewx= 0;
oldviewy= 0;
newx=0;
newy=0;
localgame=true;
connectedgame=false;
NoofPlayers=4;
//create player
var playx=grid[round(gridx/2),round(gridy/2)].x;
var playy=grid[round(gridx/2),round(gridy/2)].y;
var shiftx=0;
var shifty=0;
var sizer=5;
for (i=1;i<=NoofPlayers;i++)
{
	switch (i)
	{
		case 1:
		{
			shiftx=-round(obj_hex.sprite_width/sizer);
			shifty=round(obj_hex.sprite_height/sizer);
		}break;
		case 2:
		{
			shiftx=-round(obj_hex.sprite_width/sizer);
			shifty=-round(obj_hex.sprite_height/sizer);
		}break;
		case 3:
		{
			shiftx=round(obj_hex.sprite_width/(sizer+2));
			shifty=round(obj_hex.sprite_height/sizer);
		}break;
		case 4:
		{
			shiftx=round(obj_hex.sprite_width/(sizer+2));
			shifty=-round(obj_hex.sprite_height/sizer);
		}break;
	}
	
	var player=instance_create_depth(playx+shiftx,playy+shifty,-1,obj_player);
	player.image_blend=make_colour_rgb(irandom(255),irandom(255),irandom(255));
	player.positionx=round(gridx/2);
	player.positiony=round(gridx/2);
}		

//test code
player.movement=2;
var colour=c_blue;
for (i=1; i<=player.movement; i++)
{
	switch (i)
	{
		case 1:{
			colour=c_blue;
			grid[player.positionx-1,player.positiony].image_blend=colour;
			grid[player.positionx,player.positiony-1].image_blend=colour;
			grid[player.positionx+1,player.positiony].image_blend=colour;
			grid[player.positionx+1,player.positiony+1].image_blend=colour;
			grid[player.positionx,player.positiony+1].image_blend=colour;
			grid[player.positionx-1,player.positiony+1].image_blend=colour;
			
		}break;
		case 2:{
			colour=c_green;
			grid[player.positionx-2,player.positiony-1].image_blend=colour;
			grid[player.positionx-1,player.positiony-1].image_blend=colour;
			grid[player.positionx,player.positiony-2].image_blend=colour;
			grid[player.positionx+1,player.positiony-1].image_blend=colour;
			grid[player.positionx+2,player.positiony-1].image_blend=colour;
			grid[player.positionx+2,player.positiony].image_blend=colour;
			grid[player.positionx+2,player.positiony+1].image_blend=colour;
			grid[player.positionx+1,player.positiony+2].image_blend=colour;
			grid[player.positionx,player.positiony+2].image_blend=colour;
			grid[player.positionx-1,player.positiony+2].image_blend=colour;
			grid[player.positionx-2,player.positiony+1].image_blend=colour;
			grid[player.positionx-2,player.positiony].image_blend=colour;
		}break;
	};
}

