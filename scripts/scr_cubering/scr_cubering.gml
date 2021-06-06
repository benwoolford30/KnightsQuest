function scr_cubering(argument0, argument1) {
	//scrcubering(center,radius)
	/*
	detect hexes in a surrounding ring of the center space

	*/
	count=0;
	ring=0;
	ring[count]=instance_create_depth(0,0,0,obj_vector);

	ring[count].gridx=argument0.gridx;
	ring[count].gridy=argument0.gridy;
	ring[count].gridz=argument0.gridz;
	ring[count].gridx+=obj_cubedirections.cubedir[5].gridx*argument1;
	ring[count].gridy+=obj_cubedirections.cubedir[5].gridy*argument1;
	ring[count].gridz+=obj_cubedirections.cubedir[5].gridz*argument1;
	for (var i=1; i<=6; i++)
	{
		for (var i2=1; i2<=argument1;i2++)
		{		
			ring[count+1]=scr_cubeneighbour(ring[count],i); //store neighbours in array
			count++;
		}
	}
	return ring;


}
