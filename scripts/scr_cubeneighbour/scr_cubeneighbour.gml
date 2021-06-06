function scr_cubeneighbour(argument0, argument1) {
	//scr_cubeneighbour(cube,directionno)
	//ccheck surrounding hexes depending on the direction passed
	var newcube=instance_create_depth(0,0,0,obj_vector);
	newcube.gridx=argument0.gridx;
	newcube.gridy=argument0.gridy;
	newcube.gridz=argument0.gridz;
	newcube.gridx+=obj_cubedirections.cubedir[argument1].gridx;
	newcube.gridy+=obj_cubedirections.cubedir[argument1].gridy;
	newcube.gridz+=obj_cubedirections.cubedir[argument1].gridz;
	return newcube;


}
