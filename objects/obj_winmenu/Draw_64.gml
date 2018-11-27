/// @Creating the start menu

instance_destroy(obj_broadcast);
instance_destroy(obj_gui);
instance_destroy(obj_gun);
instance_destroy(obj_player);

display_set_gui_size(gui_width,gui_height);

draw_text(gui_width/2 - 90,gui_height/2, "You Win!");

draw_text(gui_width/2 - 90,gui_height/2 + 20, "Your Score was: " +string(finalscore));

draw_text(gui_width/2 - 90,gui_height/2 + 140, "Press Spacebar to return to the main menu");

draw_text(gui_width/2 - 90,gui_height/2 + 180, "Press Backspace to exit");

