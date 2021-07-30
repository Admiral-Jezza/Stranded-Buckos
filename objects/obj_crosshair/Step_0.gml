/// @description Movement
// You can write your code in this editor

x = mouse_x;
y = mouse_y;

scale = min(max(100, distance_to_object(global.playerID)) / 100, 2);

//For some reason exponentionally increases further it is from 0, 0 (maybe due to camera setup)
mouseSightX = window_mouse_get_x() / 2; 
mouseSightY = window_mouse_get_y() / 2;


