dir = point_direction(x,y,mouse_x,mouse_y);
with (instance_create_depth(x,y,direction,obj_tear)){
	speed = 4;
	direction = other.dir;
}