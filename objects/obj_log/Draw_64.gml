/// @description Insert description here
// You can write your code in this editor
with obj_game
{
	var width=(display_get_gui_width());
	var height=(display_get_gui_height());
	draw_set_color(c_white);
	draw_set_font(fnt_quirky);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	//draw_rectangle(width/8,height/8,(width)-(width/8),(height)-(height/8),false);
	draw_sprite_pos(spr_raggedpaper,0,width/8,height/8,(width)-(width/8),height/8,(width)-(width/8),(height)-(height/8),width/8,(height)-(height/8),1);

	draw_set_color(c_black);
	draw_text_transformed(width/2,height/4,"Adventure Log",(width/480),(height/480)*1.25,0);
	for (var i=array_length_1d(log)-1;i>array_length_1d(log)-10;i--)
	{
		draw_text_transformed(width/2,(height/16+height/4)+(((array_length_1d(log)-1)-i)*(height/16)),log[i],(width/480),(height/480)*1.25,0);
	}
	draw_set_valign(-1);
	draw_set_halign(-1);
	draw_set_font(-1);
	draw_set_color(c_white);
}