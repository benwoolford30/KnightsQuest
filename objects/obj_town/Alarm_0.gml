/// @description Insert description here
// You can write your code in this editor
var i2=obj_game.itemon;
var width=(display_get_gui_width());
var height=(display_get_gui_height());
for (var i=1;i<=3;i++)
{
	var i2=obj_game.itemon-1+i;
	if (i2>array_length_1d(obj_game.itemorder))
	{
			i2=0-1+i;
	}
	i2=obj_game.itemorder[i2];
	var cost=obj_game.items.itemrenowncost[i2];
	if (pintown.renown>=cost)
	{
		var ye=instance_create_depth(width/2+(width/4*(i-2)),height/2+height/4,-1,obj_ye);
		ye.link=id;
		ye.event=5;
		ye.itemid=i2;
		ye.slot=i-1;
		
	}
}
var nah=instance_create_depth(width-width/8,height/8,-1,obj_nah);
nah.link=id;
nah.event=3;
