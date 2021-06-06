/// @description Initialise variables
// You can write your code in this editor
identityX=-1;
identityY=-1;
cube=instance_create_depth(0,0,0,obj_vector); //create vector obj
event=false;
image_alpha=1;
for (var i=1; i<=12; i++)
neighbours[i]=pointer_null;
LI=0.1;
image_blend=make_colour_rgb(0,192,0);
image_speed=0;
duel=false;
quest=false;

