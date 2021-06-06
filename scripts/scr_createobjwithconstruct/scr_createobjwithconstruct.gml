function scr_createobjwithconstruct(argument0, argument1, argument2) {
	//scr_createobjwithconstruct(object,value1,value2)
	var obj=instance_create_depth(10,10,10,argument0);

	with obj
	{
		gridx=argument1;
		gridy=argument2;
	}


}
