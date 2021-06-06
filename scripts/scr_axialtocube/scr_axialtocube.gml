function scr_axialtocube(argument0) {
	//scr_axialtocube(hexspace)
	/*


	Converts the axial coordinates to cube coordinates
	x=x
	z=y
	y=-x-z
	*/
	argument0.cube.gridx=argument0.identityX;
	argument0.cube.gridz=argument0.identityY;
	argument0.cube.gridy=-argument0.cube.gridx-argument0.cube.gridz;


}
