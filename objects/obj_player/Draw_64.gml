/// @description Insert description here
// You can write your code in this editor
/// @description draw player
// You can write your code in this editor
/*
if ((obj_game.playerturn=turn) or circumstance=true) and (thecase=true)
{
	/*
	hp=3;
maxhealth=0;
renown=0;

name="Joe";
items[0]=0;
movement=3;
sideEvent=0;
maxroll=6;

	
	width=(display_get_gui_width());
	height=(display_get_gui_height());
	draw_set_color(c_green);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_bold);
	
	draw_text_transformed(width/32,height/32,name,2,2,0);
	draw_sprite(spr_heart,0,width/4,height/16);
	draw_text_transformed(width/4,height/16+height/16,string(hp),2,2,0);
	draw_sprite(spr_movement,0,width/2,height/16);
	draw_text_transformed(width/2,height/16+height/16,string(movement),2,2,0);
	draw_sprite(spr_renown,0,width/2+width/4,height/16);
	draw_text_transformed(width/2+width/4,height/16+height/16,string(renown),2,2,0);
	draw_sprite(spr_sword,0,width/2+width/4+width/8,height/16);
	draw_text_transformed(width/2+width/4+width/8,height/16+height/16,string(maxroll),2,2,0);
	for (var i=1;i<=NoofItems;i++)
	{
		var shift=width/16;
		switch (items[i])
		{
			case 0:{	//longsword
				draw_sprite(spr_longsword,0,width-shift,((height/4)*i));
			}break;
			case 1:{	//mrs pots pan
				draw_sprite(spr_potspan,0,width-shift,((height/4)*i));
			}break;
			case 2:{	//Sneaky dagger
				draw_sprite(spr_sneakydagger,0,width-shift,((height/4)*i));
			}break;
			case 3:{	//flambatmace
				draw_sprite(spr_flambatmace,0,width-shift,((height/4)*i));
			}break;
			case 4:{	//sturdyshield
				draw_sprite(spr_sturdyshield,0,width-shift,((height/4)*i));
			}break;
			case 5:{	//platearmour
				draw_sprite(spr_platearmour,0,width-shift,((height/4)*i));
			}break;
			case 6:{	//wishing ring
				draw_sprite(spr_wishingring,0,width-shift,((height/4)*i));
			}break;
		}
	}
	draw_set_color(c_white);
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);
}
