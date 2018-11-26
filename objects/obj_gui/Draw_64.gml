myhealth = obj_player.hp;
enemies = instance_number(obj_enemy);


display_set_gui_size(gui_width,gui_height);

draw_text(gui_width - 125, 5, "Health: " + string(myhealth));

draw_text(gui_width - 125, 25, "Enemies: " + string(enemies));

draw_text(gui_width - 125, 45, "Score: " + string(myscore));

draw_text(gui_width - 125, 65, "Money: $ " + string(money));