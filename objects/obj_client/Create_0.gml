/// @description initialise
/*
GM networking tips

to send floats in packets use buffer_f32

*/

var type = network_socket_tcp;
var ip = "35.178.7.106";
//var ip= "148.197.204.110";
var port= 80;
socket= network_create_socket(type);
connection = network_connect(socket,ip,port);
connect=false;
host=false;
if (connection=0)
connect=true;
var size = 1024;
var type= buffer_fixed;
var alignment= 1;
buffer = buffer_create(size,type,alignment);
