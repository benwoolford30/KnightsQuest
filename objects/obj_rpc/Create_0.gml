/// @description Insert description here
// You can write your code in this editor
var height= display_get_gui_height();
var width= display_get_gui_width();
agressor=1;
link=noone;
sphere[0]=noone;
numofsphere=0;

sphere[numofsphere]=instance_create_depth(x-width/8,y+height/48,depth,obj_outline);
sphere[numofsphere].symbol=instance_create_depth(sphere[numofsphere].x,sphere[numofsphere].y,sphere[numofsphere].depth-1,obj_scissors);
sphere[numofsphere].vsym=1;
sphere[numofsphere].image_blend=c_green;
sphere[numofsphere].link=id;
numofsphere+=1;
sphere[numofsphere]=instance_create_depth(x,y-height/8,depth,obj_outline);
sphere[numofsphere].symbol=instance_create_depth(sphere[numofsphere].x,sphere[numofsphere].y,sphere[numofsphere].depth-1,obj_rock);
sphere[numofsphere].vsym=2;
sphere[numofsphere].image_blend=c_yellow;
sphere[numofsphere].link=id;
numofsphere+=1;
sphere[numofsphere]=instance_create_depth(x+width/8,y+height/48,depth,obj_outline);
sphere[numofsphere].symbol=instance_create_depth(sphere[numofsphere].x,sphere[numofsphere].y,sphere[numofsphere].depth-1,obj_paper);
sphere[numofsphere].vsym=3;
sphere[numofsphere].image_blend=c_blue;
sphere[numofsphere].link=id;