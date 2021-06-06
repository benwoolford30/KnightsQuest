function scr_scaleimagetodevice(argument0) {
	//scr_scaleimagetodevice(objid)
	with obj_aspectratio
	{	
		argument0.image_xscale*=aspectx;
		argument0.image_yscale*=aspecty;
	
	}


}
