/// @description Insert description here
// You can write your code in this editor
if (outcome=true)
{
	if (mouse_check_button_released(mb_left))
	{
		mouse_clear(mb_left);
		outcome=false;		
		scr_checkforduel();
	}
}
if (draw=true)
{
	if (mouse_check_button_released(mb_left))
	{
		mouse_clear(mb_left);
		draw=false;
		outcome=true;
		var succeded=true;
		var theEvent=eventNO;
		with obj_game
		{
			player[playerturn].roll=irandom(player[playerturn].maxroll-1)+1;
			if player[playerturn].roll<events.eventroll[eventorder[eventon]]
			{
				 succeded=false;
			}
			switch (theEvent)
			{
				case 0:{ //mrs Potts Pie
					succeded=true;
					scr_raiseplayerhp(playerturn,1);
				}break;
				case 1:{//raft across a river
					if (succeded=false)
					{
						scr_lowerplayerhp(playerturn,1);
					}
				}break;
				case 2:{//wandering monster
					if (succeded=false)
					{
						scr_lowerplayerhp(playerturn,1);
					}
					else
					{
						scr_playergainrenown(playerturn,1);
					}
				}break;
				case 3:{//woke the bear
					if (succeded=false)
					{
						scr_lowerplayerhp(playerturn,1);
					}
				}break;
				case 4:{//woke the bears
					if (succeded=false)
					{
						scr_lowerplayerhp(playerturn,1);
					}
				}break;
				case 5:{//bandits
					if (succeded=false)
					{
						scr_lowerplayerhp(playerturn,1);
					}
					else
					{
						scr_playergainitem(playerturn,-1);
					}
				}break;
				case 6:{//banditos
					if (succeded=false)
					{
						scr_lowerplayerhp(playerturn,1);
					}
					else
					{
						scr_playergainitem(playerturn,-1);
					}
				}break;
				case 7:{//dread bunny
					if (succeded=false)
					{
						scr_lowerplayerhp(playerturn,2);
					}					
				}break;
				case 8:{//bring mrs potts to town
				
				}break;
				case 9:{ //village idiot
				
				}break;
			}			
		}
		success=succeded;
	}
}
