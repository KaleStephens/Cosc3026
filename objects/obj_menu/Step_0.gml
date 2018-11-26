/// Updates Menu

targetRoom = room1;
targetX = 1000;
targetY = 1000;

key_start = keyboard_check(vk_space);

if(key_start == true){

	room_goto(targetRoom);
	obj_player.x = targetX;
	obj_player.y = targetY;
	
}
