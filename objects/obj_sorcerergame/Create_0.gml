/// @description Insert description here
// You can write your code in this editor
var sorce=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/2,depth-1,obj_sorcerer);
sorce.link=id;
var play=instance_create_depth(display_get_gui_width()-display_get_gui_width()/8,display_get_gui_height()-display_get_gui_height()/4,depth-1,obj_playersorce);
play.link=id;
var topwall=instance_create_depth(display_get_gui_width()/2,0,depth-1,obj_electricwall);
topwall.image_xscale=20;
topwall.bouncey=true;
var bottomwall=instance_create_depth(display_get_gui_width()/2,display_get_gui_height(),depth-1,obj_electricwall);
bottomwall.image_xscale=20;
bottomwall.bouncey=true;
var rightwall=instance_create_depth(display_get_gui_width(),display_get_gui_height()/2,depth-1,obj_electricwall);
rightwall.image_yscale=20;
rightwall.bouncex=true;
var leftwall=instance_create_depth(0,display_get_gui_height()/2,depth-1,obj_electricwall);
leftwall.image_yscale=20;
leftwall.bouncex=true;