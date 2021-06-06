/// @description Insert description here
// You can write your code in this editor

instance_destroy(prevbankedrenown);
instance_destroy(prevrenown);
if (pincastle.bankedrenown>=10)
{
	room_goto(rm_menu);
}
else
{
	incastle=false;
	pincastle=noone;
	scr_gamenextplayer();
}