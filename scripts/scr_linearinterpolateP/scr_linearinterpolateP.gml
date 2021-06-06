function scr_linearinterpolateP(argument0, argument1, argument2, argument3, argument4) {
	//scr_linearinterpolateP(x1,y1,x2,y2,distance)

    
	var result=0;
	result[0]=(argument0*(1-argument4))+(argument2*argument4);
	result[1]=(argument1*(1-argument4))+(argument3*argument4);
	return result;
    


}
