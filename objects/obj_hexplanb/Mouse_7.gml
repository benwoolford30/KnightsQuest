/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_log)) && (!instance_exists(obj_guide)) && !(obj_game.dontallowspaceclick=true) && (obj_hexgridcreatorplanb.drag=false) && (!instance_exists(obj_charactersheet)) && !(obj_town.intown=true) && !(obj_events.draw=true)
{
	
	var nox=identityX;
	var noy=identityY;
	var doevent=event;
	var this=id;
	with obj_game
	{
		var dospace=true;
		if (playerturn!=gameC) && (gameC!=1)
		dospace=false;
		if (chosespace=false) && (dospace=true)
		{	
			var legal=false;	//check if the space is a legal move
			for (var i=0;i<array_length_1d(legalmoves);i++)	//iterate through array
			{
				if (nox=legalmoves[i].gridx && noy=legalmoves[i].gridz) //check space coords in in array
				{
					legal=true;			
					break;
				}
			}
			if (legal=true)	//if space is a legal move 
			{
				
				mouse_clear(mb_any);
				chosespace=true;
				player[playerturn].positionx=nox;
				player[playerturn].positiony=noy;				
				camera_set_view_pos(view_camera[0], player[playerturn].x-(camera_get_view_width(view_camera[0])/2),player[playerturn].y-(camera_get_view_height(view_camera[0])/2));
				for (var i=0;i<array_length_1d(legalmoves);i++)
				{
					Grid.grid[legalmoves[i].gridx,legalmoves[i].gridz].image_blend=make_colour_rgb(0,192,0);	
					Grid.grid[legalmoves[i].gridx,legalmoves[i].gridz].duel=false
					Grid.grid[legalmoves[i].gridx,legalmoves[i].gridz].quest=false;
				}				
				this.alarm[0]=room_speed*0.1;
				
				/*
				player[playerturn].x=Grid.grid[player[playerturn].positionx,player[playerturn].positiony].x;
				player[playerturn].y=Grid.grid[player[playerturn].positionx,player[playerturn].positiony].y;
				
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
				*/
				//do space 			
			}
		}
	}
}
/*
highlightx[0]=0;
highlighty[0]=0;
highlightz[0]=0;
count=0;
var newcube=instance_create_depth(0,0,0,obj_vector);
var distance=2;
for (i=center.gridx-distance;i<=center.gridx+distance;i++)
{
for (i2=center.gridy-distance;i2<=center.gridy+distance;i2++)
{
	for (i3=center.gridz-distance;i3<=center.gridz+distance;i3++)
	{
		if ((i+i2+i3)=0)
		{
			count++;
			/*highlightx[count]=i;
			highlighty[count]=i2;
			highlightz[count]=i3;
				
			var bool exists=false;
			for (i4=1;i4<=obj_hexgridcreatorplanb.gridx;i4++)
			{		
				for (i5=1;i5<=obj_hexgridcreatorplanb.gridy;i5++)
				{						
					if (obj_hexgridcreatorplanb.axial[i4,i5].identityX=i && obj_hexgridcreatorplanb.axial[i4,i5].identityY=i3 )
					{
						exists=true;
						obj_hexgridcreatorplanb.axial[i4,i5].image_blend=c_blue;
						break;
					}	
				}
				if (exists=true)
				{
					break;
				}
			}
		}
	}
}
/*for (i2=max(center.gridy-distance,-(i-(center.gridy-distance)));i2<=min(center.gridy+distance,-(i+(center.gridy+distance)));i2++)
{
	i3=-i-i2;			
	count++;
	//yep				
	highlightx[count]=i;
	highlighty[count]=i2;
	highlightz[count]=i3;
					
}
}
/*
for (i=1; i<=count;i++)
{	
var bool exists=false;
for (i2=1;i2<=obj_hexgridcreatorplanb.gridx;i2++)
{		
		for (i3=1;i3<=obj_hexgridcreatorplanb.gridy;i3++)
		{						
			if (obj_hexgridcreatorplanb.axial[i2,i3].identityX=highlightx[i] && obj_hexgridcreatorplanb.axial[i2,i3].identityY=highlightz[i] )
			{
				exists=true;
				obj_hexgridcreatorplanb.axial[i2,i3].image_blend=c_blue;
				break;
			}	
		}
		if (exists=true)
		{
			break;
		}
}
}
image_blend=c_blue;