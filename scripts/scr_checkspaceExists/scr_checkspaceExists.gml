function scr_checkspaceExists(argument0, argument1) {
	//scr_checkspaceExists(x,y,col)
	/*
	Iterate through hexgrid and check the coords actually exist
	to prevent an error
	*/
	var exists=false;
	for (var i4=1;i4<=obj_hexgridcreatorplanb.gridx;i4++)
		{		
			for (var i5=1;i5<=obj_hexgridcreatorplanb.gridy;i5++)
			{						
				if (obj_hexgridcreatorplanb.axial[i4,i5].identityX=argument0 && obj_hexgridcreatorplanb.axial[i4,i5].identityY=argument1 )
				{
					exists=true;
				
					break;	//now that we found the space we can leave the loop
				}	
			}
			if (exists=true)
			{
				break;
			}
		}
	return exists;


}
