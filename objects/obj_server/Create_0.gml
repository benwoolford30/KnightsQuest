/// @description initialise
var type = network_socket_tcp;
var port= 80;
var client=obj_game.NoofPlayers;
myserver= network_create_server(type,port,client);
for (var i=1;i<=obj_game.NoofPlayers;i++)
{
	socket[i]= noone;
	draw[i]=false;
}
noofconnects=0;
