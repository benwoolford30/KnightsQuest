/// @description Insert description here
// You can write your code in this editor
var width=(display_get_gui_width());
var height=(display_get_gui_height());

draw_set_font(fnt_bold);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_color(c_purple);
draw_rectangle(width/4,height/4,(width/2)+(width/4),(height/2)+(height/4),false);
draw_set_color(c_white);
//draw_rectangle(width/4+width/32,height/4+height/32,(width/2)+(width/4)-width/32,(height/2)+(height/4)-height/32,false);
draw_sprite_pos(spr_battlebkg,scroll,width/4+width/32,height/4+height/32,(width/2)+(width/4)-width/32,height/4+height/32,(width/2)+(width/4)-width/32,(height/2)+(height/4)-height/32,width/4+width/32,(height/2)+(height/4)-height/32,1);
draw_set_halign(fa_center);
if (phases[1]=true)
{
	draw_text_transformed_color(width/2,height/2-height/48,"Bet?",(width/480)*2,(height/480)*2,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
}
if (phases[2]=true)
{
	draw_text_transformed_color(width/2,height/2,"Challenged!",(width/480)*1,(height/480)*1,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
	draw_text_transformed_color(width/2,height/2+height/8,"Do you accept?",(width/480)*1,(height/480)*1,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
}
if (phases[3]=true)
{
	if (accept=false)
	{
		draw_text_transformed_color(width/2,height/2-height/16,"Challenge Denied!",(width/480)*1.25,(height/480)*1.25,0,c_yellow,c_yellow,c_yellow,c_yellow,1);

	}
	else
	{
		draw_text_transformed_color(width/2,height/2-height/8,"Fight!",(width/480)*2,(height/480)*2,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
		var actualchoice=0;
		var choicerpc=0;
		var actualcol=0;
		var choicecol=0;
		switch actualchallenger.rpc
		{
			case 1:{
				actualchoice=spr_scissorsG;
				actualcol=c_green;
			}break;
			case 2:{
				actualchoice=spr_rockG;
				actualcol=c_yellow;
			}break;
			case 3:{
				actualchoice=spr_paperG;
				actualcol=c_blue;
			}break;
		}
		switch choice.rpc
		{
			case 1:{
				choicerpc=spr_scissorsG;
				choicecol=c_green;
			}break;
			case 2:{
				choicerpc=spr_rockG;
				choicecol=c_yellow;
			}break;
			case 3:{
				choicerpc=spr_paperG;
				choicecol=c_blue;
			}break;
		}
		switch (actualchallenger.rpc)
		{
			case 1:{ //scissors
				switch (choice.rpc)
				{
					case 1:{
						//draw
					}break;
					case 2:{
						//challenger loses
						whowon=2;
					}break;
					case 3:{
						//challenger wins
						whowon=1;
					}break;
				};
			}break;
			case 2:{ //rock
				switch (choice.rpc)
				{
					case 1:{
						whowon=1;
					}break;
					case 2:{
								
					}break;
					case 3:{
						//challenger wins
						whowon=2;
					}break;
				};
			}break;
			case 3:{ //paper
				switch (choice.rpc)
				{
					case 1:{
						whowon=2;
					}break;
					case 2:{
						whowon=1;
					}break;
					case 3:{
							
					}break;
				};
			}break;
					
		}
		switch (whowon)
		{
			case 1:{
				if (os_type!=os_android)
				{
					draw_sprite_ext(spr_arrowG,0,width/2,height/2,(width/480)*2,(height/480)*2,270,actualcol,1);
				}
				else
				{
					draw_sprite_ext(spr_arrowG,0,width/2,height/2,(width/480)*1.25,(height/480)*1.25,270,actualcol,1);
				}
			}break;
			case 2:{
				if (os_type!=os_android)
				{
					draw_sprite_ext(spr_arrowG,0,width/2,height/2,(width/480)*2,(height/480)*2,90,actualcol,1);
				}
				else
				{
					draw_sprite_ext(spr_arrowG,0,width/2,height/2,(width/480)*1.25,(height/480)*1.25,90,actualcol,1);
				}			
			}break;			
		}
		draw_sprite_ext(spr_outlineG,0,width/2-width/8,height/2,(width/480)*2,(height/480)*2,0,actualcol,1);
		draw_sprite_ext(spr_outlineG,0,width/2+width/8,height/2,(width/480)*2,(height/480)*2,0,choicecol,1);
		draw_sprite_ext(actualchoice,0,width/2-width/8,height/2,(width/480)*1.5,(height/480)*1.5,0,c_white,1);
		draw_sprite_ext(choicerpc,0,width/2+width/8,height/2,(width/480)*1.5,(height/480)*1.5,0,c_white,1);
		
	}
	
}
if (phases[4]=true)
{
	draw_text_transformed_color(width/2,height/2-height/16,"What's your attack?",(width/480)*1,(height/480)*1,0,c_yellow,c_yellow,c_yellow,c_yellow,1);

}
if (phases[5]=true)
{
	draw_text_transformed_color(width/2,height/2-height/16,"Challenged! What's your counter?",(width/480)*0.70,(height/480)*0.70,0,c_yellow,c_yellow,c_yellow,c_yellow,1);

}
draw_set_color(c_white);
draw_set_valign(-1);
draw_set_halign(-1);
draw_set_font(-1);
draw_set_color(c_white);	