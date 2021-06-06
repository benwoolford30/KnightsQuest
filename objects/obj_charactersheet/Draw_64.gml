/// @description Insert description here
// You can write your code in this editor
var width=(display_get_gui_width());
var height=(display_get_gui_height());
draw_set_font(fnt_bold);
draw_set_halign(fa_center);
draw_set_color(pl.image_blend);
//draw_rectangle(width/4,height/4,(width/2)+(width/4),(height/2)+(height/4),false);
var sizex=(width/480)*2;
var sizey=height/480*2.5;
draw_sprite_pos(spr_charactersheetbkg,0,width/8,height/8,(width)-(width/8),height/8,(width)-(width/8),(height)-(height/8),width/8,(height)-(height/8),1);
draw_text_transformed(width/4+width/16,height/6,pl.name,sizex,sizey,0);		
draw_set_color(c_white);
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);