/// @description Insert description here
// You can write your code in this editor
draw_self();
if (display=true)
{
	var height=display_get_gui_height();
	draw_set_color(c_white);
	draw_set_halign(fa_middle);
	draw_text_transformed(x,y+height/32,string(amount),image_xscale*0.5,image_yscale*1,0);
	draw_set_halign(-1);
	draw_set_color(c_white);
}