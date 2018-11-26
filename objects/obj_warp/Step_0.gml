/// @Update Warp

if(place_meeting(x,y,obj_player)){

	room_goto(targetRoom);
	obj_player.x = targetX;
	obj_player.y = targetY;
}
