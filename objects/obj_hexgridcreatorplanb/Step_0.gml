///@description Camera Movement

if (mouse_check_button_pressed(mb_left)) { //check left mouseclick/mobile tap
	dragx = mouse_x;
	dragy = mouse_y;	
	oldviewx= camera_get_view_x(view_camera[0]);
	oldviewy= camera_get_view_y(view_camera[0]);
	
	//get position of intial click
}
if (mouse_check_button(mb_left)) 
{
	heldfor+=1;
}
if (heldfor>room_speed*0.3) and (twofinger=false){ //check for just one finger
    // actual dragging logic
	
	pointx=mouse_x-dragx;
	pointy=mouse_y-dragy;	
	newx=camera_get_view_x(view_camera[0])+(-pointx*scale);
	newy=camera_get_view_y(view_camera[0])+(-pointy*scale);
	newx=clamp(newx,0-(sprite_get_width(sprhex)*4),axial[gridx-3,gridy-3].x);
	newy=clamp(newy,0-(sprite_get_height(sprhex)*5),axial[gridx-3,gridy-3].y);
	camera_set_view_pos(view_camera[0], newx,newy);
	if (oldviewx!=newx or oldviewy!=newy)
	{
		drag=true;
	}
	

	//view_set_yport(0,drag_y - (mouse_y - view_get_yport(0)));
	
}
if ((device_mouse_check_button_pressed(0,mb_left)) ) //track for one finger on mobile
{
	onefinger=true;
	onefinx=device_mouse_x_to_gui(0);
	onefiny=device_mouse_x_to_gui(0);
	distance=point_distance(onefinx,onefiny,twofinx,twofiny);
	camwidth=camera_get_view_width(view_camera[0]);
	camheight=camera_get_view_height(view_camera[0]);
}
if ((mouse_check_button_released(mb_left)) ) 
{
	drag=false;
	heldfor=0;
}
if ((device_mouse_check_button_released(0,mb_left)) ) //check finger was let go
{
	onefinger=false;
}
if  (device_mouse_check_button(1,mb_left))	//check finger is on screen
{
	twofinger=true;
	twofinx=device_mouse_x_to_gui(1);
	twofiny=device_mouse_x_to_gui(1);
	distance=point_distance(onefinx,onefiny,twofinx,twofiny);
	camwidth=camera_get_view_width(view_camera[0]);
	camheight=camera_get_view_height(view_camera[0]);
}
if  (device_mouse_check_button_released(1,mb_left)) //check finger 2 is let go
{
	twofinger=false;
}
if (onefinger=true) && (twofinger=true) //check if two fingers our on mobile
{
	onefinx=device_mouse_x_to_gui(0);
	twofinx=device_mouse_x_to_gui(1);
	var newdistance=point_distance(onefinx,onefiny,twofinx,twofiny);
	camwidth-=(newdistance-distance)*3;
	camheight-=(newdistance-distance)*3;
	camwidth=clamp(camwidth,((widthview/4)*3),widthview+((widthview/4)*3));	
	camheight=clamp(camheight,((heightview/3)*2),heightview+((heightview/3)*3)); //ensure that the view doesnt go beyond the room
	camera_set_view_size(view_camera[0],camwidth,camheight);
	//zoom out/in screen
}
if (mouse_check_button_pressed(mb_right)) {
	if (zoomin=false)
	{
		camera_set_view_size(view_camera[0],camera_get_view_width(view_camera[0])*camscale,camera_get_view_height(view_camera[0])*camscale);
		zoomin=true;		
	}
	else
	{
		camera_set_view_size(view_camera[0],camera_get_view_width(view_camera[0])/camscale,camera_get_view_height(view_camera[0])/camscale);
		zoomin=false;		
	}
	//zoom out/in screen
}