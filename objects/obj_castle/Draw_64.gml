/// @description Insert description here
// You can write your code in this editor
if (incastle=true)
{
	var width=(display_get_gui_width());
	var height=(display_get_gui_height());
	draw_set_font(fnt_bold);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	//draw_rectangle(width/8,height/8,(width)-(width/8),(height)-(height/8),false);
	draw_sprite_pos(spr_throne,0,width/8,height/8,(width)-(width/8),height/8,(width)-(width/8),(height)-(height/8),width/8,(height)-(height/8),1);

	draw_sprite_ext(spr_arrow,0,width/2,(height)-(height/8)-height/32,(width/480)*1,(height/480)*1,270,c_black,1);
	draw_set_color(c_white);
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);
}