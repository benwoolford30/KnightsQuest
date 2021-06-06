/// @description Initialise player
// You can write your code in this editor

hp=3;
circumstance=false;
thecase=true;
maxhealth=3;
renown=0;
bankedrenown=0;
positionx=0;
positiony=0;
client=0;
name="Joe";
items[0]=0;
rpc=0;
slower=false;
dontmakefastthisturn=false;
/*
scisors=1
rock=2
paper=3

*/
NoofItems=0;
movement=3;
sideEvent=0;
targetsize=32;
intown=false;
incastle=false;
duelling=false;
turn=0;
maxroll=6;
roll=0;
width=(display_get_gui_width());
height=(display_get_gui_height());
standonaquest=false;
if (sprite_height!=targetsize) //resize sprite if its too big
{
var multiplier= targetsize/sprite_height; 
image_xscale*=multiplier;
image_yscale*=multiplier;
image_xscale*=4;
image_yscale*=4;
}



