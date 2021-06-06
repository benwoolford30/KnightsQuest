/// @description Insert description here
// You can write your code in this editor
var width=(display_get_gui_width());
var height=(display_get_gui_height());
draw_set_color(c_white);
draw_set_font(fnt_bold);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_rectangle(width/8,height/8,(width)-(width/8),(height)-(height/8),false);
draw_set_color(c_green);
draw_text_transformed(width/4+width/16+width/32+width/64,height/8+height/16+height/64,"Number of Players:",(width/480)*1.25,height/480*2,0);

draw_text_transformed(width/4+width/16+width/32+width/64,height/2+height/16,string(numofplayers),(width/480)*1.75,height/480*2,0);
draw_text_transformed(width/2,height/2+height/8+height/16,"No. rows: "+string(numofrows),(width/480)*1.75,height/480*2,0);
draw_text_transformed(width/2,height/2+height/8+height/8+height/64,"No. collumns: "+string(numofcollumns),(width/480)*1.75,height/480*2,0);
draw_set_valign(-1);
draw_set_halign(-1);
draw_set_font(-1);
draw_set_color(c_white);