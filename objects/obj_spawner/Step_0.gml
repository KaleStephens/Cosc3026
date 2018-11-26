if(hp <= 0)
{
	instance_destroy();
}

if(cooldown <= 0)
{
	instance_create_layer(x + 0, y + 0, "Mobs", obj_enemy);

	cooldown = 300;
}

cooldown += -1;