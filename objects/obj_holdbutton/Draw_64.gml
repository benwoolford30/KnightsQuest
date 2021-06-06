/// @description Insert description here
// You can write your code in this editor
var width=display_get_gui_width();
var height= display_get_gui_height();
draw_self();
switch (event)
{
	case 1:{
		if (whichplayer!=0)
		{	
			if (whichplayer.turn=obj_game.playerturn)
			{
				draw_sprite_ext(spr_indicateturn,0,x-width/32,y,image_xscale,image_yscale,0,c_white,1);	
				
			}
			draw_sprite_ext(spr_greyKnighthead,0,x-width/32,y,image_xscale,image_yscale,0,colour,1);	
			
		}
	}break;
	case 2:{
		draw_sprite_ext(spr_questionmark,0,x-width/32,y,image_xscale,image_yscale,image_angle,c_white,1);	
	}break;
	case 3:{			
		draw_sprite_ext(spr_log,0,x,y-(height/28),image_xscale*sign(image_xscale),image_yscale,image_angle,c_white,1);
	}break;
	case 4:{
		draw_sprite_ext(spr_arrow,0,x+sprite_get_width(spr_arrow)/2,y+sprite_get_height(spr_arrow)/4,image_xscale,image_yscale,90,c_white,1);	
	}break;
}