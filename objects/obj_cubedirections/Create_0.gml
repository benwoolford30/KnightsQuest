/// @description Initialise direction array
// You can write your code in this editor
cubedir[1]=instance_create_depth(0,0,0,obj_vector);
with cubedir[1] //right
{
	gridx=1;
	gridy=-1;
	gridz=0;
}
cubedir[2]=instance_create_depth(0,0,0,obj_vector);
with cubedir[2] //topright
{
	gridx=1;
	gridy=0;
	gridz=-1;
}
cubedir[3]=instance_create_depth(0,0,0,obj_vector);
with cubedir[3] //topleft
{
	gridx=0;
	gridy=1;
	gridz=-1;
}
cubedir[4]=instance_create_depth(0,0,0,obj_vector);
with cubedir[4] //left
{
	gridx=-1;
	gridy=1;
	gridz=0;
}
cubedir[5]=instance_create_depth(0,0,0,obj_vector);
with cubedir[5] //bottomleft
{
	gridx=-1;
	gridy=0;
	gridz=1;
}
cubedir[6]=instance_create_depth(0,0,0,obj_vector);
with cubedir[6] //bottomright
{
	gridx=0;
	gridy=-1;
	gridz=1;
}
cubedir[7]=instance_create_depth(0,0,0,obj_vector);
with cubedir[7] //two right up
{
	gridx=2;
	gridy=-1;
	gridz=-1;
}
cubedir[8]=instance_create_depth(0,0,0,obj_vector);
with cubedir[8] // two up up
{
	gridx=1;
	gridy=1;
	gridz=-2;
}
cubedir[9]=instance_create_depth(0,0,0,obj_vector);
with cubedir[9] //two left up
{
	gridx=-1;
	gridy=2;
	gridz=-1;
}
cubedir[10]=instance_create_depth(0,0,0,obj_vector);
with cubedir[10] //two left down
{
	gridx=-2;
	gridy=1;
	gridz=1;
}
cubedir[11]=instance_create_depth(0,0,0,obj_vector);
with cubedir[11] //two down down
{
	gridx=-1;
	gridy=-1;
	gridz=2;
}
cubedir[12]=instance_create_depth(0,0,0,obj_vector);
with cubedir[12] //two right down
{
	gridx=1;
	gridy=-2;
	gridz=1;
}