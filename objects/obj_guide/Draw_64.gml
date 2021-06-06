/// @description Insert description here
// You can write your code in this editor
var width=(display_get_gui_width());
var height=(display_get_gui_height());
var jump=-1;
draw_set_font(fnt_quirky);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);
//draw_rectangle(width/8,height/8,(width)-(width/8),(height)-(height/8),false);
draw_sprite_pos(spr_charactersheetbkg,0,width/8,height/8,(width)-(width/8),height/8,(width)-(width/8),(height)-(height/8),width/8,(height)-(height/8),1);
draw_set_color(c_white);
//draw_sprite_ext(spr_chest,0,width/8+width/16,height/4+(height/16)+((height/16+height/32)*jump),3,3,0,c_white,1);	
var sizex=(width/480)*1;
var sizey=(height/480)*1.25;
draw_text_transformed(width/8+width/16+width/32+width/64,height/4+(height/16)+((height/16+height/32)*jump),"=",sizex,sizey,0);
//draw_sprite_ext(spr_coin,0,width/8+width/8+width/16,height/4+(height/16)+((height/16+height/32)*jump),3,3,0,c_white,1);	
draw_text_transformed(width/8+width/4-width/32,height/4+(height/16)+((height/16+height/32)*jump),"+",sizex,sizey,0);
draw_sprite_ext(spr_Gcastle,0,width/2-width/16,height/4+(height/16)+((height/16+height/32)*jump),sizex*1.5,sizey*1.5,0,c_white,1);	
if (os_type=os_android)
draw_sprite_ext(spr_arrow,0,width/2+width/32,height/4+(height/16)+((height/16+height/32)*jump),sizex,sizey*0.25,270,c_blue,1);	
else
draw_sprite_ext(spr_arrow,0,width/2+width/32,height/4+(height/16)+((height/16+height/32)*jump),sizex,sizey*0.75,270,c_blue,1);	

draw_text_transformed(width/2+width/16+width/32,height/4+(height/16)+((height/16+height/32)*jump),"1'st to 10 ",sizex,sizey,0);

jump+=1;
draw_sprite_ext(sprhex,0,width/8+width/16,height/4+(height/16)+((height/16+height/32)*jump),sizex*0.125,sizey*0.125,0,c_purple,1);	

draw_text_transformed(width/8+width/8,height/4+(height/16)+((height/16+height/32)*jump),"= Duel",sizex,sizey,0);
jump+=1;
draw_sprite_ext(sprhex,0,width/8+width/16,height/4+(height/16)+((height/16+height/32)*jump),sizex*0.125,sizey*0.125,0,c_yellow,1);	
draw_text_transformed(width/8+width/8,height/4+(height/16)+((height/16+height/32)*jump),"= Quests",sizex,sizey,0);

jump+=1;
draw_sprite_ext(sprhex,0,width/8+width/16,height/4+(height/16)+((height/16+height/32)*jump),sizex*0.125,sizey*0.125,0,make_colour_rgb(0,64,0),1);	
draw_text_transformed(width/8+width/8,height/4+(height/16)+((height/16+height/32)*jump),"= Event",sizex,sizey,0);

jump+=1;
draw_sprite_ext(sprhex,0,width/8+width/16,height/4+(height/16)+((height/16+height/32)*jump),sizex*0.125,sizey*0.125,0,make_colour_rgb(0,96,0),1);	
draw_text_transformed(width/8+width/8,height/4+(height/16)+((height/16+height/32)*jump),"= Nothing happens",sizex,sizey,0);

jump+=1;
draw_sprite_ext(sprhex,1,width/8+width/16,height/4+(height/16)+((height/16+height/32)*jump),sizex*0.125,sizey*0.125,0,c_yellow,1);	
draw_sprite_ext(sprhex,2,width/8+width/16,height/4+(height/16)+((height/16+height/32)*jump),sizex*0.125,sizey*0.125,0,c_purple,1);	
draw_text_transformed(width/8+width/8,height/4+(height/16)+((height/16+height/32)*jump),"= Combinations!",sizex,sizey,0);

draw_set_color(c_white);
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);