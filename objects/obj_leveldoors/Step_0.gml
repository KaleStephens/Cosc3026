/// Check for level requirements

enemies = instance_number(obj_enemy);
spawns = instance_number(obj_spawner);

if(enemies == 0) && (spawns == 0){

	instance_destroy();

}
