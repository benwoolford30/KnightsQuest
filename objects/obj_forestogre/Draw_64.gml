/// @description Insert description here
// You can write your code in this editor
if (gobwins=true)
{
	draw_set_color(c_red);
	draw_set_alpha(0.3);
	draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),false);
	draw_set_color(c_white);
	draw_set_alpha(1);
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
