/// @description Grid and camera and players
heldfor=0;
drag=false;
device_mouse_dbclick_enable(false); //disable double tap being registered as a right click
if (instance_exists(obj_creator))
{
	gridx=obj_creator.collumns;
	gridy=obj_creator.rows;
}
else
{
	gridx=10;
	gridy=10;
}
grid[0,0]=pointer_null; //axial storage
axial[0,0]=0; //1-10 coord storage ref
widthview=view_wview[0];
heightview=view_hview[0];
dontzoom=false;
dragging=false;
//set up grid variables
var i=0;
var i2=0;
var placex=x;
var placey=y;
var addy=round(gridy/0.75)-gridy+10;
var addx=round(gridx/0.75)-gridx+10;
var track=0;
var subtract=0;
cubedirect=instance_create_depth(0,0,0,obj_cubedirections); //set up cube coords vector array obj
for (i2=1;i2<=gridy; i2++) //iterate through height
{
	
	
	placex=x; //set x back to left side
	switch (i2) 
	{
		case 1: case 3: case 5: case 7: case 9: case 11: case 13: case 15:{
			placex=x;
			
		}break;
		case 2: case 4: case 6: case 8: case 10: case 12: case 14: case 16:{
			
			placex=x+(sprite_get_width(sprhex)*0.5); //move x slightly half over to the right
			
		}break;
		
	};
	/*switch (i)
	{
		case 1: case 3: case 5: case 7: case 9:{
		placey=y;
		}break;
		case 2: case 4: case 6: case 8: case 10:{
		placey=y-(sprite_get_height(sprhex)/2);
		}break;
	};*/
	
	for (i=1; i<=gridx; i++) // iterate through width
	{
		var space=instance_create_depth(placex,placey,depth,obj_hexplanb); //create the hex
		grid[i+addx+subtract,i2]=space;	 // set axial storage
		axial[i,i2]=space;	//set 1-10 storage
		space.identityX=i+addx+subtract;
		space.identityY=i2;		//assign hex coords for identity
		scr_axialtocube(space);	//get cube coords
		
		placex+=sprite_get_width(sprhex)*1; //move along one hex right
	}
	placey+=sprite_get_height(sprhex)*0.75;
	track+=1;	
	if track==2
	{
		track=0;
		subtract-=1;	//code for setting up axial coords
	}
}
//select space range testing with hex 7,5

var count=1;
/*for (i=1; i<=gridx; i++)
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
}*/
//initialise camera variables
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
pinch=false;
onefinger=false;
onefinx=0;
onefiny=0;
twofinger=false;
twofinx=0;
twofiny=0;
distance=0;
camwidth=0;
camheight=0;
camera_set_view_size(view_camera[0],camera_get_view_width(view_camera[0])*camscale,camera_get_view_height(view_camera[0])*camscale);
		zoomin=true;