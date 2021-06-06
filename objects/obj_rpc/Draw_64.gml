/// @description Insert description here
// You can write your code in this editor
var height= display_get_gui_height();
var width= display_get_gui_width();
var sizex=1.5;
var sizey=2;
if (os_type!=os_android)
{
	draw_sprite_ext(spr_arrowG,0,x-width/14,y-height/16,(width/480)*sizex,(height/480)*sizey*0.75,135,c_white,1);
	draw_sprite_ext(spr_arrowG,0,x,y+height/64,(width/480)*sizex,(height/480)*sizey*1.25,270,c_white,1);
	draw_sprite_ext(spr_arrowG,0,x+width/14,y-height/16,(width/480)*sizex,(height/480)*sizey*0.75,45,c_white,1);
}
else
{
	draw_sprite_ext(spr_arrowG,0,x-width/14,y-height/16,(width/480)*sizex,(height/480)*sizey*0.5,135,c_white,1);
	draw_sprite_ext(spr_arrowG,0,x,y+height/64,(width/480)*sizex,(height/480)*sizey*0.70,270,c_white,1);
	draw_sprite_ext(spr_arrowG,0,x+width/14,y-height/16,(width/480)*sizex,(height/480)*sizey*0.5,45,c_white,1);
}