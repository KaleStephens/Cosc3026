if(hp < 1)
{
	instance_destroy();
	obj_gui.myscore = obj_gui.myscore + 1;
	
	if irandom(3) = 1
   {
   instance_create_layer(x,y,"Mobs",obj_coin);
   }
	
	
	
}

//Movement
var xmove = x - obj_player.x //If enemy is farther right, xmove = +
var ymove = y - obj_player.y //If enemy is farther up, ymove = +

//Setting xmove to either 1 or -1
if (xmove < 0){
	xmove = 1;
}
else{
	xmove = -1;
}
//Setting ymove to either 1 or -1
if (ymove < 0){
	ymove = 1;
}
else{
	ymove = -1;
}

//Setting Vertical and Horizntal Speed with direction and magnitude
hsp = xmove * mvspd;
vsp = ymove * mvspd;

//X Collision with wall
if(place_meeting(x+sign(hsp),y,obj_wall)){
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;	
}
//X Collision with enemy
if(place_meeting(x+sign(hsp),y,obj_enemy)){
	while(!place_meeting(x+sign(hsp),y,obj_enemy))
	{
		x = x + sign(hsp);
	}
	hsp = 0;	
}
//No collisions in the x direction, therefore set speed
x = x + hsp;

//Y Collision with wall
if(place_meeting(x,y+sign(vsp),obj_wall)){
	while(!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
//Y Collision with Enemy
if(place_meeting(x,y+sign(vsp),obj_enemy)){
	while(!place_meeting(x,y+sign(vsp),obj_enemy))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
//No collisions in the y direction, therefore set speed
y = y + vsp;
