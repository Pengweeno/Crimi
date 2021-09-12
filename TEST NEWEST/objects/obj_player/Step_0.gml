reset_variables()

get_input();

if (place_meeting(x,y,obj_enemyZombie))
{
	var nearestenemy;
	nearestenemy = instance_nearest(x,y,obj_enemyZombie);
	
	direction = point_direction(x,y,nearestenemy.x,nearestenemy.y) + 180
	bounce = 1;
	global.hp -= 1;
}

if (bounce = 1)
{
	alarm[1] = 10;
	speed = 3;
	bounce = 0;
}

else if (place_meeting(x,y,obj_bullet))
{
	var nearestbullet;
	nearestbullet = instance_nearest(x,y,obj_bullet);
	
	direction = point_direction(x,y,nearestbullet.x,nearestbullet.y) + 180
	global.hp -= 1;
}

if (global.hp < 1)
{
	instance_destroy();
}

hmove = right - left;
vmove = down - up;
	
if hmove != 0 or vmove != 0 {
	dir = point_direction(0,0, hmove, vmove);
		
	hmove = lengthdir_x(walk_spd, dir);
	vmove = lengthdir_y(walk_spd, dir);
		
	x += hmove;
	y += vmove;
	switch(point_direction(0,0, hmove, vmove)){
		case 0:sprite_index = _3; break;
		case 45:sprite_index = _4; break;
		case 90:sprite_index = _6; break;
		case 135:sprite_index = _5; break;
		case 180:sprite_index = _2; break;
		case 225:sprite_index = _2; break;
		case 270:sprite_index = _1; break;
		case 315:sprite_index = _3; break;
	}
}
	else
	{
		image_index = 0;
	}

if global.hp < 0 {
	global.hp = 0
}

if global.hp > 50 {
	global.hp = 50;
}