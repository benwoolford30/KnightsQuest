/// @description Insert description here
// You can write your code in this editor
var this=id;
with obj_game
{
	var move=scr_linearinterpolateP(player[playerturn].x,player[playerturn].y,Grid.grid[player[playerturn].positionx,player[playerturn].positiony].x,Grid.grid[player[playerturn].positionx,player[playerturn].positiony].y,this.LI);
	player[playerturn].x=move[0];
	player[playerturn].y=move[1];
	if (this.LI<1)
	{
		this.LI+=0.075;
		this.alarm[0]=room_speed*0.1;
	}
	else
	{
		this.alarm[1]=1;
		this.LI=0.1;
	}
	camera_set_view_pos(view_camera[0], player[playerturn].x-(camera_get_view_width(view_camera[0])/2),player[playerturn].y-(camera_get_view_height(view_camera[0])/2));
}
