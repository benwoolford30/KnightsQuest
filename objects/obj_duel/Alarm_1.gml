/// @description Insert description here
// You can write your code in this editor
instance_deactivate_object(challenger);
var legnth=array_length_1d(options);
for (var i=1;i<legnth;i++)
{
	instance_deactivate_object(options[i]);
}
instance_deactivate_object(nah);
instance_deactivate_object(ye);
if (arrow1!=0)
instance_deactivate_object(arrow1);
if (arrow2!=0)
instance_deactivate_object(arrow2);
if (coin!=0)
instance_deactivate_object(coin);
instance_deactivate_object(self);