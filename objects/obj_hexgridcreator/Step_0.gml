/// @description redundant
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left)) {
	dragx = mouse_x;
	dragy = mouse_y;	
	oldviewx= camera_get_view_x(view_camera[0]);
	oldviewy= camera_get_view_y(view_camera[0]);
	
}
// update:
if (mouse_check_button(mb_left)) {
    // actual dragging logic:
    pointx=mouse_x-dragx;
	pointy=mouse_y-dragy;	
	newx=camera_get_view_x(view_camera[0])+(-pointx*scale);
	newy=camera_get_view_y(view_camera[0])+(-pointy*scale);
	newx=clamp(newx,0,room_width);
	//newy=clamp(newy,0,room_height);
	camera_set_view_pos(view_camera[0], newx,newy);
	
	

	//view_set_yport(0,drag_y - (mouse_y - view_get_yport(0)));
	
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
}