/// @description Insert description here
// You can write your code in this editor
var num=questspotnum;
with obj_game
{
	if player[playerturn].standonaquest=true && Quests[num].playeronquest[playerturn]=true and Quests[num].outcome=false
	{
		var width=(display_get_gui_width());
		var height=(display_get_gui_height());

		draw_set_font(fnt_quirky);
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_rectangle(width/4,height/4,(width/2)+(width/4),(height/2)+(height/4),false);
		draw_set_color(c_red);
		
		var thequest=Quests[num].questNo;
		draw_sprite_pos(GameQuests.questsprite[thequest],0,width/8,height/8,(width)-(width/8),height/8,(width)-(width/8),(height)-(height/8),width/8,(height)-(height/8),1);
	    //draw_text(width/2,(height/4)+((height/16)*1),GameQuests.questdescription[thequest]);
		//draw_text(width/2,(height/4)+((height/16)*2),string(GameQuests.questdifficulty[thequest]));
		//draw_text(width/2,(height/4)+((height/16)*3),"Score: "+string(GameQuests.questscore[thequest])+"+");
		//draw_text(width/2,(height/4)+((height/16)*4),string(GameQuests.questturns[thequest])+ "Turn's");
		//draw_text(width/2,(height/4)+((height/16)*5),string(GameQuests.questrenown[thequest])+ "Renown");
		draw_set_color(c_green);
		draw_button((width/2)-((width/16)*1),(height/2)+((height/16)*6),(width/2)+((width/16)*1),(height/2)+((height/16)*8),false);
		draw_set_color(c_white);
		draw_set_font(fnt_bold);
		draw_set_valign(fa_middle);
		draw_text(width/2,(height/2)+((height/16)*7),"Let's Go!");
		draw_set_valign(-1);
		draw_set_halign(-1);
		draw_set_font(-1);
		draw_set_color(c_white);
	}
	if (Quests[num].outcome=true)
	{
		var width=(display_get_gui_width());
		var height=(display_get_gui_height());
		
		draw_set_font(fnt_quirky);
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_rectangle(width/4,height/4,(width/2)+(width/4),(height/2)+(height/4),false);
		var thequest=Quests[num].questNo;
		draw_set_color(c_red);
		draw_text(width/2,(height/4)+((height/16)*1),"Target: "+string(GameQuests.questscore[thequest])+"+");
		draw_text((width/2)+(width/8),(height/4)+((height/16)*1),"Total: "+string(Quests[num].total));
		for (var i=1;i<=Quests[num].Noofrolls;i++)
		{
			if Quests[num].playerturns[playerturn,i]!=0
			{
				draw_text(width/2,(height/4)+((height/16)*(1+i)),string(i)+" roll:  "+string(Quests[num].playerturns[playerturn,i]));
				
			}
		}
		draw_set_color(c_green);
		draw_button((width/2)-((width/16)*1),(height/2)+((height/16)*1),(width/2)+((width/16)*1),(height/2)+((height/16)*3),false);
		
		draw_set_color(c_white);
		draw_set_font(fnt_bold);
		draw_set_valign(fa_middle);
		draw_text(width/2,(height/2)+((height/16)*2),"Let's Go!");
		draw_set_valign(-1);
		draw_set_halign(-1);
		draw_set_font(-1);
		draw_set_color(c_white);
	}
	if (Quests[num].endresult=true)
	{
		
		var width=(display_get_gui_width());
		var height=(display_get_gui_height());
		var thequest=Quests[num].questNo;
		draw_set_font(fnt_quirky);
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_rectangle(width/16,height/4,(width)-(width/16),(height/2)+(height/4),false);
		draw_set_color(c_red);
		if (Quests[num].win=true)
		{
			draw_text(width/2,(height/4)+((height/16)*1),"Success!");
			draw_text(width/2,(height/4)+((height/16)*3),"Gain: "+string(GameQuests.questrenown[thequest]) +" Renown");
		
			
		}
		else
		{
			draw_text(width/2,(height/4)+((height/16)*1),"Failure!");
			draw_text(width/2,(height/4)+((height/16)*3),"Penalty: "+string(GameQuests.questfaildescription[thequest]));
		}
		if (Quests[num].endquest=true)
		{
			draw_set_color(c_green);
			draw_button((width/2)-((width/16)*1),(height/2)+((height/16)*1),(width/2)+((width/16)*1),(height/2)+((height/16)*3),false);
		
			draw_set_color(c_white);
			draw_set_font(fnt_bold);
			draw_set_valign(fa_middle);
			draw_text(width/2,(height/2)+((height/16)*2),"End turn");
		}
		draw_set_valign(-1);
		draw_set_halign(-1);
		draw_set_font(-1);
		draw_set_color(c_white);
	}
}