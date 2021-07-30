/// @description Variables & Display
// You can write your code in this editor

//Global Variables that need to remain througout reloading
//This (previous a display manager only) object was chosen as it's persistent

//Dev Options
globalvar debugMode;
debugMode = true;
globalvar randomTerrain;
randomTerrain = true;

if (randomTerrain) { //THIS WILL NEED TO BE TAKEN FROM A FILE TO HAVE ANY EFFECT AS IT WILL JUST BE DEFAULT
	randomize();	
}

//Display (FIX FOR MAIN MENU)
displayZoom = 2;
idealWidth = display_get_width() / displayZoom;
idealHeight = display_get_height() / displayZoom;

surface_resize(application_surface, idealWidth, idealHeight);
display_set_gui_size(idealWidth, idealHeight);

window_set_size(display_get_width(), display_get_height());
window_set_rectangle(0, 0, display_get_width(), display_get_height());
window_set_fullscreen(true);

mainCamera = camera_create();
camera_set_view_size(mainCamera, idealWidth, idealHeight);
camera_set_view_pos(mainCamera, x - (idealWidth / 2), y - (idealHeight / 2));

room_goto_next();


