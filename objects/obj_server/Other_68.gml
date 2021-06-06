/// @description check for data packets
var eventType= async_load[? "type"];
switch (eventType)
{
    case network_type_connect:{
    //add client to socket
        for (var i=1; i<=4;i++)
		{
			if (socket[i]== noone)
	        {
	            socket[i] = async_load[? "socket"];
	            draw[i]=true;
				var buffer=scr_initialiseclient(i);
				
				network_send_packet(socket[i],buffer,buffer_get_size(buffer));
				
				buffer_delete(buffer);
				break;
	        }
		}
    }break;
    case network_type_disconnect:{
    //remove client
       for (var i=1; i<=4;i++)
	   {
		if (async_load[?"socket"]=socket[i])
		{
			socket[i] = noone;
			draw[i]=false;
			break;
		}
	   }
    }break;
    case network_type_data:{	
    //analyse the data
        var buffer = async_load[? "buffer"];
        buffer_seek(buffer,buffer_seek_start,0);
		var packettype=buffer_read(buffer,buffer_u8);
		switch packettype
		{
			case 1:{
			
			}break;
			
			case 2:{
				with obj_game
				{
					var prevplayer=buffer_read(buffer,buffer_u8);
					playerturn=buffer_read(buffer,buffer_u8);	
					player[prevplayer].positionx=buffer_read(buffer,buffer_u8);	
					player[prevplayer].positiony=buffer_read(buffer,buffer_u8);	
					player[prevplayer].x=Grid.grid[player[prevplayer].positionx,player[prevplayer].positiony].x;
					player[prevplayer].y=Grid.grid[player[prevplayer].positionx,player[prevplayer].positiony].y;
					if (playerturn=gameC)
					{
						legalmoves=scr_spiralring(Grid.grid[player[playerturn].positionx,player[playerturn].positiony].cube,player[playerturn].movement,true);					
					}
					for (var i=2;i<=NoofPlayers;i++)
					{
						network_send_packet(server.socket[i],buffer,buffer_get_size(buffer));
					}
				}
			}break;
		}
        //scr_Recievedpacket(buffer);
    }break;
}

