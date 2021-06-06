/// @description Insert description here
// You can write your code in this editor
if (device_mouse_check_button_pressed(0,mb_left)=true && device_mouse_x_to_gui(0)>=(x-sprite_width/2) && device_mouse_x_to_gui(0)<=(x+sprite_width/2) && device_mouse_y_to_gui(0)>=(y-sprite_height/2) && device_mouse_y_to_gui(0)<=(y+sprite_height/2))
{
	var width=(display_get_gui_width());
	var height=(display_get_gui_height());
	var whicharrow=id;
	with link
	{
		switch whicharrow.event
		{
			case 1:
			{
				switch whicharrow.image_angle
				{
					case 180:{
				
						switch (array_length_1d(opponents))
						{					
							case 3:{
						
								choice=opponents[2];
								choicerep=options[2];
								challenger.y=height/2+height/16;
								arrow1.image_angle=0;
								arrow1.y=height/2-height/16;
						
							}break;
							case 4:{
								if (whicharrow=arrow1)
								{
									choice=opponents[2];
									choicerep=options[2];
									challenger.y=height/2;
									arrow1.image_angle=0;
									arrow1.y=height/2-height/8;
								}
								else
								{
									choice=opponents[3];
									choicerep=options[3];
									challenger.y=height/2+height/8;
									arrow2.image_angle=0;
									arrow2.y=height/2;
									arrow1.image_angle=0;
									arrow1.y=height/2-height/8;
								}						
						
							}break;
						}
					}break;
					case 0:{
				
						switch (array_length_1d(opponents))
						{					
							case 3:{						
								choice=opponents[1];
								choicerep=options[1];
								challenger.y=height/2-height/16;
								arrow1.image_angle=180;
								arrow1.y=height/2+height/16;
							}break;
							case 4:{
								if (whicharrow=arrow1)
								{
									choice=opponents[1];
									choicerep=options[1];
									challenger.y=height/2-height/8;
									arrow1.image_angle=180;
									arrow1.y=height/2;
									arrow2.image_angle=180;
									arrow2.y=height/2+height/8;
								}
								else
								{
									choice=opponents[2];
									challenger.y=height/2;
									arrow2.image_angle=180;
									arrow2.y=height/2+height/8;							
								}
							}break;
						}
					}break;
				}
			}break;
			case 2:{
				switch whicharrow.image_angle
				{
					case 90:{
						bet-=1;
						if (bet<0)
						bet=0;
					}break;
					case 270:{
						bet+=1;
						if (bet>limit)
						bet=limit;
					}break;
				}
				coin.amount=bet;
			}break;
			case 3:{
				switch whicharrow.image_index
				{
					case 0:{
						if (numofplayers>2)
						numofplayers-=1;
					}break;
					case 2:{
						if (numofplayers<5)
						numofplayers+=1;
					}break;
				}
			}break;
			case 4:{
				switch whicharrow.image_index
				{
					case 0:{
						if (numofrows>4)
						numofrows-=1;
					}break;
					case 2:{
						if (numofrows<15)
						numofrows+=1;
					}break;
				}
			}break;
			case 5:{
				switch whicharrow.image_index
				{
					case 0:{
						if (numofcollumns>4)
						numofcollumns-=1;
					}break;
					case 2:{
						if (numofcollumns<15)
						numofcollumns+=1;
					}break;
				}
			}break;
		}
	}
}