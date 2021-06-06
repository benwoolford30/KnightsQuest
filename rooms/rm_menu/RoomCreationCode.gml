instance_create_depth(0,0,0,obj_aspectratio);
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
var width=(display_get_gui_width());
var height=(display_get_gui_height());

var gamemenu=instance_create_depth(width-width/8,height/2,-1,obj_menu);

with gamemenu
{
	
	var offset=(sprite_get_height(spr_menuchoice)/obj_aspectratio.aspect)/8;
	var shift=-(sprite_get_height(spr_menuchoice)/obj_aspectratio.aspect)*1.75-height/4;
	var count=1;
	menuitems[count]=instance_create_depth(x,y+shift+offset,-1,obj_menuchoice);
	menuitems[count].text="Start Local Game";
	menuitems[count].event=1;
	offset=menuitems[count].sprite_height;
	shift= -offset*3;
	var shiftx= -menuitems[count].sprite_width/16;
	menuitems[count].y=y+shift;
	menuitems[count].x=x+shiftx;
	count+=1;
	
	/*menuitems[count]=instance_create_depth(x,y+shift+offset+((count-1)*(offset*8)),-1,obj_menuchoice);
	menuitems[count].text="Continue Local Game";
	menuitems[count].event=8;
	count+=1;*/
	if (os_type=os_windows)
	{
		menuitems[count]=instance_create_depth(x+shiftx,y+((count-1)*offset)+shift,-1,obj_menuchoice);
		menuitems[count].text="Server";
		menuitems[count].event=9;
		count+=1;
	}
	menuitems[count]=instance_create_depth(x+shiftx,y+((count-1)*offset)+shift,-1,obj_menuchoice);
	menuitems[count].text="Start LAN game-Host";
	menuitems[count].event=2;
	count+=1;
	menuitems[count]=instance_create_depth(x+shiftx,y+((count-1)*offset)+shift,-1,obj_menuchoice);
	menuitems[count].text="Start LAN game-Join";
	menuitems[count].event=3;
	count+=1;
	menuitems[count]=instance_create_depth(x+shiftx,y+((count-1)*offset)+shift,-1,obj_menuchoice);
	menuitems[count].text="Rules";
	menuitems[count].event=4;
	count+=1;
	menuitems[count]=instance_create_depth(x+shiftx,y+((count-1)*offset)+shift,-1,obj_menuchoice);
	menuitems[count].text="Options";
	menuitems[count].event=5;
	count+=1;
	menuitems[count]=instance_create_depth(x+shiftx,y+((count-1)*offset)+shift,-1,obj_menuchoice);
	menuitems[count].text="Credits";
	menuitems[count].event=6;
	count+=1;
	menuitems[count]=instance_create_depth(x+shiftx,y+((count-1)*offset)+shift,-1,obj_menuchoice);
	menuitems[count].text="Quit";
	menuitems[count].event=7;
}
