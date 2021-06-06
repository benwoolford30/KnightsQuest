/// @description Insert description here
// You can write your code in this editor
if (intown=true)
{
	var width=(display_get_gui_width());
	var height=(display_get_gui_height());
	draw_set_font(fnt_bold);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	//draw_rectangle(width/8,height/8,(width)-(width/8),(height)-(height/8),false);
	draw_sprite_pos(spr_shopkeeperbkg,0,width/8,height/8,(width)-(width/8),height/8,(width)-(width/8),(height)-(height/8),width/8,(height)-(height/8),1);
	
	var i2=obj_game.itemon;
	for (var i=1;i<=3;i++)
	{
		var i2=obj_game.itemon-1+i;
		if (i2>array_length_1d(obj_game.itemorder))
		{
				i2=0-1+i;
		}
		i2=obj_game.itemorder[i2];
		var sprite=obj_game.items.itemspr[i2];
		var name=obj_game.items.itemname[i2];
		var cost=obj_game.items.itemrenowncost[i2];
		var desc=obj_game.items.itemdesc[i2];
		draw_sprite_ext(sprite,0,width/2+(width/4*(i-2)),height/2-height/4,2,2,0,c_white,1);
		draw_set_color(c_white);
		draw_rectangle(width/2+(width/4*(i-2))-width/8,height/2-height/4-height/8,width/2+(width/4*(i-2))+width/8,height-height/8,true);
		draw_text_transformed(width/2+(width/4*(i-2)),height/2-height/8,name,1,1,0);
		draw_text_transformed(width/2+(width/4*(i-2)),height/2-height/16,desc,1,1,0);
		draw_text_transformed(width/2+(width/4*(i-2)),height/2,"Renown cost: "+string(cost),1,1,0);
	}
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);
	draw_set_color(c_white);
	
}