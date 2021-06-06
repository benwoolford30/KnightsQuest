/// @description Insert description here
// You can write your code in this editor

for (var i=1;i<=obj_game.NoofPlayers;i++)
{
	if (draw[i]=true)
		draw_text(50,50*i,"Connected "+string(i));
}