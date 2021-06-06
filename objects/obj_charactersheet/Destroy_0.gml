/// @description Insert description here
// You can write your code in this editor
for (var i=0;i<noofhearts;i++)
{
	if instance_exists(hearts[i])
	{
		instance_destroy(hearts[i]);
	}
}
noofhearts=0;
for (var i=0;i<itemnum;i++)
{
	if instance_exists(items[i])
	{
		instance_destroy(items[i]);
	}
}
items[0]=noone;
itemnum=0;
if instance_exists(renown)
{
	instance_destroy(renown);
}
renown=noone;
if instance_exists(bankedrenown)
{
	instance_destroy(bankedrenown);
}
bankedrenown=noone;
if instance_exists(playercopy)
{
	instance_destroy(playercopy);
}
playercopy=noone;