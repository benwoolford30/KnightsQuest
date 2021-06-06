/// @description Insert description here
// You can write your code in this editor
/*
eventName[eventNO]="";
eventstateEvent[eventNO]="Success rate- Very Hard";
eventstateSuccess[eventNO]=" ";
eventstatefailure[eventNO]="On Failure- lose 2 hp";
eventroll[eventNO]=0;
eventgainitem[eventNO]=0;
eventgainrenown[eventNO]=0;
eventgainhp[eventNO]=0;
eventfailhp[eventNO]=0;
eventeffect[eventNO]=0;
*/
if (draw=true)
{	 
	draw_set_font(fnt_quirky);
	draw_set_halign(fa_center);
	draw_rectangle(width/4,height/4,(width/2)+(width/4),(height/2)+(height/4),false);
	draw_set_color(c_red);
	draw_text(width/2,(height/4)+((height/16)*1),eventName[eventNO]);
	draw_text(width/2,(height/4)+((height/16)*2),eventstateEvent[eventNO]);
	draw_text(width/2,(height/4)+((height/16)*3),eventstateSuccess[eventNO]);
	draw_text(width/2,(height/4)+((height/16)*4),eventstatefailure[eventNO]);
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
if (outcome=true)
{	 
	draw_set_font(fnt_quirky);
	draw_set_halign(fa_center);
	draw_rectangle(width/4,height/4,(width/2)+(width/4),(height/2)+(height/4),false);
	draw_set_color(c_red);
	if (success=true)
	{
		draw_text(width/2,(height/4)+((height/16)*1),"Success!");
		draw_text(width/2,(height/4)+((height/16)*3),eventstateSuccess[eventNO]);
	}
	else
	{
		draw_text(width/2,(height/4)+((height/16)*1),"Failure");
		draw_text(width/2,(height/4)+((height/16)*4),eventstatefailure[eventNO]);
	}
	draw_text(width/2,(height/4)+((height/32)*1),eventName[eventNO]);
	draw_set_color(c_green);
	draw_button((width/2)-((width/16)*1),(height/2)+((height/16)*1),(width/2)+((width/16)*1),(height/2)+((height/16)*3),false);
	draw_set_color(c_white);
	draw_set_font(fnt_bold);
	draw_set_valign(fa_middle);
	draw_text(width/2,(height/2)+((height/16)*2),"Continue");
	draw_set_valign(-1);
	draw_set_halign(-1);
	draw_set_font(-1);
	draw_set_color(c_white);
}