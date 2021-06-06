/// @description Insert description here
// You can write your code in this editor
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
if instance_exists(bankedrenown2)
{
	instance_destroy(bankedrenown2);
}
bankedrenown2=noone;