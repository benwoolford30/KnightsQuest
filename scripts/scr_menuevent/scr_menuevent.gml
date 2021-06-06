function scr_menuevent(argument0) {
	//scr_menuevent(eventnom)
	switch (argument0)
	{
		case 1:{
			instance_deactivate_object(obj_menuchoice);
			var gr=instance_create_depth(0,0,0,obj_setgameconditions);
			//room_goto(rm_game);
		}break;
		case 2:{
			instance_deactivate_object(obj_menuchoice);
			var gr=instance_create_depth(0,0,0,obj_setgameconditions);
			gr.ye.event=11;
		
		}break;
		case 3:{
			instance_deactivate_object(obj_menuchoice);
			client=instance_create_depth(0,0,0,obj_client);
		}break;
		case 4:{
			instance_deactivate_object(obj_menuchoice);
			instance_create_depth(0,0,0,obj_rules);
		}break;
		case 7:{
			game_end();		
		}break;
		case 9:{
			instance_deactivate_object(obj_menuchoice);
			instance_create_depth(0,0,0,obj_serveronly);
		}break;
	
	}


}
