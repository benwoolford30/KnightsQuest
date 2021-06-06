/// @description Insert description here
// You can write your code in this editor
var width=(display_get_gui_width());
var height=(display_get_gui_height());
renown=noone;
bankedrenown=noone;
var jump=-1;
bankedrenown=instance_create_depth(width/8+width/16,height/4+(height/16)+((height/16+height/32)*jump),-1,obj_bankedrenown);
bankedrenown.image_xscale*=(width/480)*2;
bankedrenown.image_yscale*=(height/480)*2;
bankedrenown.display=false;
bankedrenown2=instance_create_depth(width-width/8-width/16,height/4+(height/16)+((height/16+height/32)*jump),-1,obj_bankedrenown);
bankedrenown2.image_xscale*=(width/480)*2;
bankedrenown2.image_yscale*=(height/480)*2;
bankedrenown2.display=false;
renown=instance_create_depth(width/8+width/8+width/16,height/4+(height/16)+((height/16+height/32)*jump),-1,obj_renown);
renown.image_xscale*=(width/480)*2;
renown.image_yscale*=(height/480)*2;
renown.display=false;