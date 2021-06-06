/// @description Insert description here
// You can write your code in this editor
if instance_exists(challenger)
instance_destroy(challenger);
if array_length_1d(options)>0
{
	var legnth=array_length_1d(options);
	for (var i=1;i<legnth;i++)
	{
		if instance_exists(options[i])
		instance_destroy(options[i]);
	}
}
if instance_exists(nah)
instance_destroy(nah);
if instance_exists(ye)
instance_destroy(ye);
if (arrow1!=noone)
instance_destroy(arrow1);
if (arrow2!=noone)
instance_destroy(arrow2);
if (coin!=noone)
instance_destroy(coin);