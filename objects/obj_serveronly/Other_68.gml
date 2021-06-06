/// @description check for data packets
var eventType= async_load[? "type"];
switch (eventType)
{
    case network_type_connect:{
    //add client to socket
        if (Noofplayers<noofconnects)
		{
			network_destroy(async_load[? "socket"]);
		}
		else
		{
			for (var i=1; i<=Noofplayers;i++)
			{
				if (socket[i]== noone)
		        {
		            socket[i] = async_load[? "socket"];
		            draw[i]=true;
					socketname[i]=async_load[? "ip"];
					noofconnects+=1;
					if (noofconnects=Noofplayers && hostsocket!=noone)
					{
						var size = 1024;
						var type= buffer_fixed;
						var alignment= 1;
						buffer = buffer_create(size,type,alignment);
						buffer_seek(buffer,buffer_seek_start,0);
						buffer_write(buffer,buffer_u8,3);
						network_send_packet(hostsocket,buffer,buffer_get_size(buffer));				
						buffer_delete(buffer);
						var sparebuffer=buffer_create(size,type,alignment);
						buffer_write(sparebuffer,buffer_u8,4);
						for (var i2=1; i2<=Noofplayers;i2++)
						{
							if (socket[i2]!= hostsocket)
							{
								buffer_write(sparebuffer,buffer_u8,i2);
								network_send_packet(socket[i2],sparebuffer,buffer_get_size(sparebuffer));
								buffer_delete(sparebuffer);
								sparebuffer=buffer_create(size,type,alignment);
								buffer_write(sparebuffer,buffer_u8,4);
							}
						}
						buffer_delete(sparebuffer);
					}
					break;
		        }
			}
		}
    }break;
    case network_type_disconnect:{
    //remove client
       for (var i=1; i<=Noofplayers;i++)
	   {
		if (async_load[?"socket"]=socket[i])
		{
			socket[i] = noone;
			draw[i]=false;
			noofconnects-=1;
			break;
		}
	   }
    }break;
    case network_type_data:{	
    //analyse the data
        var buffer = async_load[? "buffer"];
        buffer_seek(buffer,buffer_seek_start,0);
		var packettype=buffer_read(buffer,buffer_u8);
		var value=async_load[? "id"];
		switch packettype
		{
			case 1:{
				for (var i=1; i<=Noofplayers;i++)
				{
					if (socket[i]== async_load[? "id"])
			        {			           
						socketname[i]=async_load[? "ip"]+" host";
						hostsocket=async_load[? "id"];
						with (conditions)
						{
							plcount=buffer_read(buffer,buffer_u8);
							rows=buffer_read(buffer,buffer_u8);
							collumns=buffer_read(buffer,buffer_u8);
						}
						Noofplayers=conditions.plcount;
					
			        }
				}
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
			case 9:{					
				for (var i=1; i<=Noofplayers;i++)
				{
					
					if (socket[i]!=hostsocket)
					{						
						var theirbuffer=buffer;
						buffer_seek(theirbuffer,buffer_seek_end,1);
						buffer_write(theirbuffer,buffer_u8,i);
						network_send_packet(socket[i],theirbuffer,buffer_get_size(theirbuffer));		
					}
						
				}
				buffer_delete(buffer);
				buffer_delete(theirbuffer);
			}break;
			case 10:{
				buffer_seek(buffer,buffer_seek_start,1);
				for (var i=1; i<=Noofplayers;i++)
				{
					if (socket[i]!= async_load[? "id"])
					{
						network_send_packet(socket[i],buffer,buffer_get_size(buffer));	
					}					
				}
				buffer_delete(buffer);
			}break;
			case 11:{
				var chosenp=buffer_read(buffer,buffer_u8);
				chosenp=buffer_read(buffer,buffer_u8);
				var theirbuffer=buffer;
				buffer_seek(theirbuffer,buffer_seek_start,1);
				network_send_packet(socket[chosenp],theirbuffer,buffer_get_size(theirbuffer));
				buffer_delete(buffer);
				buffer_delete(theirbuffer);
			}break;
			case 12:{
				var chosenp=buffer_read(buffer,buffer_u8);				
				var theirbuffer=buffer;
				buffer_seek(theirbuffer,buffer_seek_start,1);
				network_send_packet(socket[chosenp],theirbuffer,buffer_get_size(theirbuffer));
				buffer_delete(buffer);
				buffer_delete(theirbuffer);
				
			}break;
			case 13:{
				var opponentchoice=buffer_read(buffer,buffer_u8);		
				var chosenp=buffer_read(buffer,buffer_u8);	
				var theirbuffer=buffer;
				buffer_seek(theirbuffer,buffer_seek_start,1);
				network_send_packet(socket[chosenp],theirbuffer,buffer_get_size(theirbuffer));
				buffer_delete(buffer);
				buffer_delete(theirbuffer);
			}break;
		}
        //scr_Recievedpacket(buffer);
    }break;
}

