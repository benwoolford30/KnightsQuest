/// @description draw axial,cube and hex
// You can write your code in this editor
draw_self();
draw_set_color(c_white);
if (duel=true && quest=true && event=true)
{
	//make_colour_rgb(0,96,0) event
	//c_purple duel
	//c_yellow quest
	draw_sprite_ext(sprhex,5,x,y,image_xscale,image_yscale,image_angle,make_colour_rgb(0,64,0),image_alpha);	
	draw_sprite_ext(sprhex,3,x,y,image_xscale,image_yscale,image_angle,c_yellow,image_alpha);
	draw_sprite_ext(sprhex,4,x,y,image_xscale,image_yscale,image_angle,c_purple,image_alpha);
}
if (duel=true && quest=true && event=false)
{
	draw_sprite_ext(sprhex,1,x,y,image_xscale,image_yscale,image_angle,c_yellow,image_alpha);
	draw_sprite_ext(sprhex,2,x,y,image_xscale,image_yscale,image_angle,c_purple,image_alpha);
}
if (duel=true && quest=false && event=true)
{
	draw_sprite_ext(sprhex,1,x,y,image_xscale,image_yscale,image_angle,make_colour_rgb(0,64,0),image_alpha);
	draw_sprite_ext(sprhex,2,x,y,image_xscale,image_yscale,image_angle,c_purple,image_alpha);				
}
if (duel=false && quest=true && event=true)
{
		draw_sprite_ext(sprhex,1,x,y,image_xscale,image_yscale,image_angle,make_colour_rgb(0,64,0),image_alpha);			
		draw_sprite_ext(sprhex,2,x,y,image_xscale,image_yscale,image_angle,c_yellow,image_alpha);
}

//draw_set_color(c_orange);
//draw_set_halign(fa_center);
//draw_text_transformed(x,y,"("+string(identityX)+","+string(identityY)+")",2,2,0); //axial
//draw_set_color(c_black);
//draw_text_transformed(x+sprite_width/4,y-sprite_height/4,+string(cube.gridx),2,2,0);
//draw_text_transformed(x-sprite_width/4,y-sprite_height/4,+string(cube.gridy),2,2,0);
//draw_text_transformed(x,y+sprite_height/4,+string(cube.gridz),2,2,0);			//cube
draw_set_color(c_white);