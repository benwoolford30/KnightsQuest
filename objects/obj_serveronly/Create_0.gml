/// @description initialise
var width= display_get_gui_width();
var height=display_get_gui_height();

nah=instance_create_depth(width/2,height/2,depth-1,obj_nah);
nah.link=id;
nah.event=5;
conditions=instance_create_depth(0,0,0,obj_creator);
var type = network_socket_tcp;
var port= 80;
var client=4;
Noofplayers=5;
sparebuffer=noone;
myserver= network_create_server(type,port,Noofplayers);
hostsocket=noone;
for (var i=1;i<=Noofplayers;i++)
{
	socket[i]= noone;
	draw[i]=false;
	socketname[i]="Blank";
}
noofconnects=0;
info="nothing";
