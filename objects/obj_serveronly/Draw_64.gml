/// @description Insert description here
// You can write your code in this editor

for (var i=1;i<=Noofplayers;i++)
{
	if (draw[i]=true)
		draw_text(50,50*i,socketname[i]);
}
draw_text(250,50,info);