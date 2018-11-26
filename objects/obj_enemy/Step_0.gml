if(hp < 1)
{
	instance_destroy();
}

var l37D1DBA3_0 = false;
l37D1DBA3_0 = instance_exists(obj_player);
if(l37D1DBA3_0)
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	speed = spd;
}