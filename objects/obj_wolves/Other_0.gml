/// @description Insert description here
// You can write your code in this editor
instance_destroy();
obj_damsel.numofwolves-=1;
if (obj_damsel.numofwolves<1)
{
	link.link.alarm[1]=1;
}
else
{
	var spawn=irandom(5)+1;
	var spawnx=0;
	var spawny=0;
	var angle=0;	
	var flip=1;
	switch (spawn)
	{
		case 1:{	//top left
			spawnx=display_get_gui_width()/16;
			spawny=display_get_gui_height()/16;
			angle=-45;
		}break;		
		case 2:{	//top right
			spawnx=display_get_gui_width()-display_get_gui_width()/16;
			spawny=display_get_gui_height()/16;
			angle=45;
			flip=-1;
		}break;
		case 3:{	//middle left
			spawnx=display_get_gui_width()/16;
			spawny=display_get_gui_height()/2;
			angle=0;
		}break;
		case 4:{	//middle right
			spawnx=display_get_gui_width()-display_get_gui_width()/16;
			spawny=display_get_gui_height()/2;
			angle=0;	
			flip=-1;
		}break;
		case 5:{	//bottom left
			spawnx=display_get_gui_width()/16;
			spawny=display_get_gui_height()-display_get_gui_height()/16;
			angle=45;
		}break;		
		case 6:{	//bottom right
			spawnx=display_get_gui_width()-display_get_gui_width()/16;
			spawny=display_get_gui_height()-display_get_gui_height()/16;
			angle=-45;
			flip=-1;		
		}break;
	}
	var newwolf=instance_create_depth(spawnx,spawny,depth,obj_wolves);
	newwolf.image_angle=angle;
	newwolf.link=link;
	newwolf.spd=spd+0.2;
	newwolf.speed=newwolf.image_xscale*newwolf.spd;
	newwolf.flip=flip;
}