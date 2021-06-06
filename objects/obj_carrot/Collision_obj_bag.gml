/// @description Insert description here
// You can write your code in this editor
instance_destroy();
link.items-=1;
if (link.items=0)
{
	link.link.alarm[1]=1;
}