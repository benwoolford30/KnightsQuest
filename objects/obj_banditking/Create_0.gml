/// @description Insert description here
// You can write your code in this editor
image_xscale*=(display_get_gui_width()/48)*0.2;
image_yscale*=(display_get_gui_height()/48)*0.2;
var time=instance_create_depth(display_get_gui_width()-display_get_gui_width()/16,display_get_gui_height()/8,depth-1,obj_clock);
time.link=id;
var spawn=irandom(8)+1;
var spawnx=0;
var spawny=0;
for (i=1;i<=9;i++)
{
	if (i!=spawn)
	{
		switch (i)
		{
			case 1:{	//top left
				spawnx=display_get_gui_width()/4;
				spawny=display_get_gui_height()/6;
			}break;
			case 2:{	//top middle
				spawnx=display_get_gui_width()/2;
				spawny=display_get_gui_height()/6;
			}break;
			case 3:{	//top right
				spawnx=display_get_gui_width()-display_get_gui_width()/4;
				spawny=display_get_gui_height()/6;
			}break;
			case 4:{	//middle left
				spawnx=display_get_gui_width()/4;
				spawny=display_get_gui_height()/2;
			}break;
			case 5:{	//middle middle
				spawnx=display_get_gui_width()/2;
				spawny=display_get_gui_height()/2;
			}break;	
			case 6:{	//middle right
				spawnx=display_get_gui_width()-display_get_gui_width()/4;
				spawny=display_get_gui_height()/2;
			}break;
			case 7:{	//bottom left
				spawnx=display_get_gui_width()/4;
				spawny=display_get_gui_height()-display_get_gui_height()/6;
			}break;
			case 8:{	//bottom middle
				spawnx=display_get_gui_width()/2;
				spawny=display_get_gui_height()-display_get_gui_height()/6;
			}break;
			case 9:{	//bottom right
				spawnx=display_get_gui_width()-display_get_gui_width()/4;
				spawny=display_get_gui_height()-display_get_gui_height()/6;
			}break;
		}
		var fake=instance_create_depth(spawnx,spawny,depth,obj_banditkingfake);
		fake.link=id;
	}
}
switch (spawn)
{
	case 1:{	//top left
		spawnx=display_get_gui_width()/4;
		spawny=display_get_gui_height()/6;
	}break;
	case 2:{	//top middle
		spawnx=display_get_gui_width()/2;
		spawny=display_get_gui_height()/6;
	}break;
	case 3:{	//top right
		spawnx=display_get_gui_width()-display_get_gui_width()/4;
		spawny=display_get_gui_height()/6;
	}break;
	case 4:{	//middle left
		spawnx=display_get_gui_width()/4;
		spawny=display_get_gui_height()/2;
	}break;
	case 5:{	//middle middle
		spawnx=display_get_gui_width()/2;
		spawny=display_get_gui_height()/2;
	}break;	
	case 6:{	//middle right
		spawnx=display_get_gui_width()-display_get_gui_width()/4;
		spawny=display_get_gui_height()/6;
	}break;
	case 7:{	//bottom left
		spawnx=display_get_gui_width()/4;
		spawny=display_get_gui_height()-display_get_gui_height()/6;
	}break;
	case 8:{	//bottom middle
		spawnx=display_get_gui_width()/2;
		spawny=display_get_gui_height()-display_get_gui_height()/6;
	}break;
	case 9:{	//bottom right
		spawnx=display_get_gui_width()-display_get_gui_width()/4;
		spawny=display_get_gui_height()-display_get_gui_height()/6;
	}break;
}
x=spawnx;
y=spawny;

