/// @description Insert description here
// You can write your code in this editor
var num=questspotnum;
var thequest=questNo;
with obj_game
{	
	
	if (Quests[num].endturnandmovequest=true)
	{
		
		if (mouse_check_button_released(mb_left)) && (Quests[num].endquest=true)
		{
			Quests[num].endquest=false;
			dontallowspaceclick=false;
			mouse_clear(mb_left);
			Quests[num].endturnandmovequest=false;
			for (var i=1;i<=NoofPlayers;i++)
			{
				Quests[num].playeronquest[playerturn]=false;
			}
			Quests[num].endresult=false;
			if (Quests[num].win=true)
			{
				scr_Questreinit(num);
				
			}
			scr_gamenextplayer();
		}
	}
	if player[playerturn].standonaquest=true && Quests[num].playeronquest[playerturn]=true
	{
		if (mouse_check_button_released(mb_left))
		{			
			
			dontallowspaceclick=true;
			mouse_clear(mb_left);
			Quests[num].outcome=true;
			player[playerturn].roll=irandom(player[playerturn].maxroll-1)+1;
			if ((Quests[num].Noofrolls)=(GameQuests.questturns[thequest]))
			{
				Quests[num].endresult=true;
				Quests[num].outcome=false;
				if (Quests[num].total<GameQuests.questscore[thequest])
				{
					Quests[num].win=false;
					log[array_length_1d(log)]=player[playerturn].name+" failed a quest!";
					switch (thequest)
					{
						case 0:{
								scr_lowerplayerhp(playerturn,1);
								scr_playerloseitem(playerturn,-1);
						}break;
						case 1:{
								scr_lowerplayerhp(playerturn,100);					
						}break;
						case 2:{
								scr_lowerplayerhp(playerturn,2);					
						}break;
						case 3:{
								scr_playerloserenown(playerturn,1);					
						}break;
						case 4:{
								scr_lowerplayerhp(playerturn,1);					
						}break;
						case 5:{
								scr_lowerplayerhp(playerturn,1);
								scr_playerloseitem(playerturn,-1);
						}break;
						case 6:{
								scr_lowerplayerhp(playerturn,1);
								scr_playerloserenown(playerturn,1);
						}break;
						case 7:{
								scr_lowerplayerhp(playerturn,1);
								scr_playerloserenown(playerturn,1);
						}break;
						case 8:{
								scr_lowerplayerhp(playerturn,2);					
						}break;
						case 9:{
								scr_playerloserenown(playerturn,1);					
						}break;
						case 10:{
												
						}break;
						case 11:{
												
						}break;
						case 12:{
								scr_playerloserenown(playerturn,1);					
						}break;
						case 13:{
								scr_playerloserenown(playerturn,1);					
						}break;
						case 14:{
								scr_playerloseitem(playerturn,-1);				
						}break;
					}					
				}
				else
				{
					Quests[num].win=true;	
					scr_playergainrenown(playerturn,GameQuests.questrenown[thequest]);
					log[array_length_1d(log)]=player[playerturn].name+" completed a quest!";
				}
				Quests[num].total=0;
				for (var i=1;i<=Quests[num].Noofrolls;i++)
				{
					Quests[num].playerturns[playerturn,i]=0;
				}
				player[playerturn].standonaquest=false;
				Quests[num].Noofrolls=0;
				Quests[num].endturnandmovequest=true;
			}
			else
			{
				instance_deactivate_all(false);
				var minigames=instance_create_depth(0,0,0,obj_minigamestate);
				with minigames
				{
					minigame=thequest;				
					alarm[0]=1;
				}
				gameqnum=num;
				Quests[num].Noofrolls+=1;
				//Quests[num].playerturns[playerturn,Quests[num].Noofrolls]=player[playerturn].roll;
				//Quests[num].total+=player[playerturn].roll;
			}
		}
	}	
}

