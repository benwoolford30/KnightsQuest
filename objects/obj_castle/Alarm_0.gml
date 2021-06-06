/// @description Insert description here
// You can write your code in this editor
var width=(display_get_gui_width());
var height=(display_get_gui_height());
prevrenown=instance_create_depth(width/2-width/8,(height)-(height/6)-height/32,-1,obj_renown);
prevrenown.amount=pincastle.renown;
prevrenown.image_xscale*=(width/480)*3;
prevrenown.image_yscale*=(height/480)*3;
prevbankedrenown= instance_create_depth(width/2+width/8,(height)-(height/6)-height/32,-1,obj_bankedrenown);
prevbankedrenown.amount=pincastle.bankedrenown;
prevbankedrenown.image_xscale*=(width/480)*3;
prevbankedrenown.image_yscale*=(height/480)*3;
var ye=instance_create_depth(width-width/8,(height)-(height/8)-height/32,-1,obj_ye);
ye.event=6;
ye.link=id;
