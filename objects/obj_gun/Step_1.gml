x = obj_player.x+7;
y = obj_player.y+8;

image_angle = point_direction(x,y,mouse_x,mouse_y);
key_shoot = gamepad_button_check(0, gp_shoulderrb);


var hraxis = gamepad_axis_value(0, gp_axisrh);
var vraxis = gamepad_axis_value(0, gp_axisrv);

if gamepad_axis_value(0, gp_axisrh) != 0
{
image_angle = point_direction(0, 0, hraxis,vraxis);
}


firingdelay = firingdelay -1;
if (mouse_check_button(mb_left) || key_shoot) && (firingdelay < 0){

	firingdelay = firerate;

	with(instance_create_layer(x,y,"Bullets",obj_bullet)){
		
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;
	}

}

