//CHASE
if (canattack == true && instance_exists(obj_player) ) {
	mp_potential_step(obj_player.x,obj_player.y,1,false);
}

if (place_meeting(x,y,obj_tear))
{
	var nearesttear
	nearesttear = instance_nearest(x,y,obj_tear);
	
	direction = point_direction(x,y,nearesttear.x,nearesttear.y)+ 180
	bounce = 1;
	enemyhp -=1
	with (nearesttear)
	{
		instance_destroy();
	}
}

if (bounce ==1)
{
	alarm[0] = 7;
	speed = 4;
	bounce = 0;
	canattack = false;
}
if (enemyhp < 1)
{
	instance_destroy();
}