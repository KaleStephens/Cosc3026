/// Make broadcast texts

currentroom = room;

display_set_gui_size(gui_width,gui_height);

if(obj_gui.myscore >= 1){
	room1string = "";
}

if(currentroom == room1){ //&& f/ag == false){

	//flag = true;
	draw_text(gui_width/2 -200,gui_height/2 + 100, room1string);
	
	
}

if(currentroom == room2){

	draw_text(gui_width/2 - 90,gui_height/2 + 100, room2string);
	
}