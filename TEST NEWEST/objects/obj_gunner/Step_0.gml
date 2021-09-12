if (firing == false){
	alarm[0]=50;
	firing = true;
}
if (place_meeting(x,y,obj_tear))
{
	var nearesttear
	nearesttear = instance_nearest(x,y,obj_tear);
	enemyhp -=1
	with (nearesttear)
	{
		instance_destroy();
	}
}
if (enemyhp < 1)
{
	instance_destroy();
}