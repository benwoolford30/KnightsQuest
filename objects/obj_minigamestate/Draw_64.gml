/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_rectangle(0,0,display_get_gui_width(),display_get_height(),false);
if (background!=-1)
draw_sprite_pos(background,0,0,0,display_get_gui_width(),0,display_get_gui_width(),display_get_gui_height(),0,display_get_gui_height(),1);
var width=display_get_gui_width();
var height=display_get_height()
	
draw_set_color(c_white);