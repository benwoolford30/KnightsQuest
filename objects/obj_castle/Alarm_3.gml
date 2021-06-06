/// @description Insert description here
// You can write your code in this editor
var width=(display_get_gui_width());
var height=(display_get_gui_height());

pincastle.bankedrenown+=pincastle.renown;
obj_game.log[array_length_1d(obj_game.log)]=pincastle.name+" has banked "+string(pincastle.renown)+" renown";
pincastle.renown=0;
prevrenown.amount=pincastle.renown;
prevbankedrenown.amount=pincastle.bankedrenown;
var ye=instance_create_depth(width-width/8,(height)-(height/8)-height/32,-1,obj_ye);
ye.event=7;
ye.link=id;