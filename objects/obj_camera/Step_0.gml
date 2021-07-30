/// @description Positioning & Res.
// You can write your code in this editor

//Tutorial by: Gamerev Games
move_towards_point(mouse_x, mouse_y, 0);

if (obj_control.openSequence) {
	var xTo = obj_planeDowned.x + lengthdir_x(min(maxDistance, distance_to_point(mouse_x, mouse_y)), direction);
	var yTo = obj_planeDowned.y + lengthdir_y(min(maxDistance, distance_to_point(mouse_x, mouse_y)), direction);
}
else if (!obj_control.openSequence) {
	var xTo = playerID.x + lengthdir_x(min(maxDistance, distance_to_point(mouse_x, mouse_y)), direction);
	var yTo = playerID.y + lengthdir_y(min(maxDistance, distance_to_point(mouse_x, mouse_y)), direction);

}

x += (xTo - x) / 25;
y += (yTo - y) / 25;

var viewPosX = camera_get_view_x(view_camera[targetView]);
var viewPosY = camera_get_view_y(view_camera[targetView]);
var viewPosW = camera_get_view_width(view_camera[targetView]) * 0.5;
var viewPosH = camera_get_view_height(view_camera[targetView]) * 0.5;

var newX = lerp(viewPosX, x - viewPosW, cameraSpeed);
var newY = lerp(viewPosY, y - viewPosH, cameraSpeed);

camera_set_view_pos(view_camera[targetView], newX, newY);


