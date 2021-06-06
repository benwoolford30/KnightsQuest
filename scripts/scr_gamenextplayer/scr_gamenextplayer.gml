function scr_gamenextplayer() {
	//scr_gamenextplayer();
	with obj_game
	{
		for (var i=0;i<array_length_1d(legalmoves);i++)
			{
				Grid.grid[legalmoves[i].gridx,legalmoves[i].gridz].event=false;
			}
	var prevplayer=playerturn;
	if (player[playerturn].slower=true)
	{
		if (player[playerturn].dontmakefastthisturn==true)
		{
			player[playerturn].dontmakefastthisturn=false;
		}
		else
		{
			player[playerturn].slower=false;
			player[playerturn].movement+=1;
		}
	}
	

	playerturn+=1;
	if (playerturn>NoofPlayers)
	{
		playerturn=1;
	}	
	camera_set_view_pos(view_camera[0], player[playerturn].x-(camera_get_view_width(view_camera[0])/2),player[playerturn].y-(camera_get_view_height(view_camera[0])/2));
	chosespace=false;
	//go to next players turn
		if !(instance_exists(obj_client))
			legalmoves=scr_spiralring(Grid.grid[player[playerturn].positionx,player[playerturn].positiony].cube,player[playerturn].movement,true);
		else
		{
			legalmoves=0;
			var size = 1024;
			var type= buffer_fixed;
			var alignment= 1;
			var buffer = scr_sendtoserver(10);
			var sendto=noone;				
			with obj_client
			{
				network_send_packet(socket,buffer,buffer_get_size(buffer));
			}
			buffer_delete(buffer);
			//network_send_packet(server.socket[playerturn],,);
		}
	// get new legal moves/draw the move range for the next player
	}


}
