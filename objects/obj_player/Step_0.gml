//Movement Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

//Movement
var xmove = key_right - key_left;
var ymove = key_down - key_up;

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
//Y Collision with wall
if(place_meeting(x,y+sign(vsp),obj_wall)){
	while(!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
	
//x is the x coord of the object
x = x + hsp;
y = y + vsp;

cooldown += -1;

if(hp < 1)
{
	instance_destroy(obj_gui);
	instance_destroy();
	room_goto(rDeath);

	
}