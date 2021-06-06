/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_playersorce))
{
	var eball=instance_create_depth(x,y,depth,obj_electroball);
	var player=instance_find(obj_playersorce,0);
	with eball
	{
		alarm[0]=room_speed*2;
		xdir=player.x-x;
		ydir=player.y-y;
		var length=(xdir*xdir)+(ydir*ydir);
		length=sqrt(length);
		xdir/=length;
		ydir/=length;
	
	}
	image_angle=point_direction(x,y,player.x,player.y)+90;
}
alarm[0]=room_speed*1;