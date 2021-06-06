function scr_checkforduel() {
	//scr_checkforduel
	with obj_game
	{

		//check for duel
		var endturn=true;
		var playerstoduel=0;
		playerstoduel[0]=0;
		Noofduellers=1;
		for (var i=1;i<=NoofPlayers;i++)
		{
			if (!(player[playerturn].positionx=town.positionX && player[playerturn].positiony = town.positionY) && !(player[playerturn].positionx=Castle.positionX && player[playerturn].positiony=Castle.positionY ) && player[i].positionx=player[playerturn].positionx && player[i].positiony=player[playerturn].positiony && player[i]!=player[playerturn])
			{
				playerstoduel[Noofduellers]=player[i];
				Noofduellers+=1;
			}
		}
		if (array_length_1d(playerstoduel)=1)
		scr_checkquestspot();
		else
		{
			var duel=instance_create_depth(x,y,depth,obj_duel);
			duel.challenger=player[playerturn];
			duel.options=playerstoduel;
			duel.alarm[0]=1;
		}
	}


}
