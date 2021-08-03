/// @description Aircraft Movement
// You can write your code in this editor

depth = -1 * y;
distance = point_distance(x, y, obj_control.landingX, obj_control.landingY);

if (distance < tileSize * obj_control.stoppedArea) {
	speed = 0;
}
else if (distance < tileSize * obj_control.landingArea) {
	speed = obj_control.startSpeed / 2;
}

with (obj_planeLeftWing) {
	x = obj_planeDowned.x;
	y = obj_planeDowned.y
}
with (obj_planeTail) {
	x = obj_planeDowned.x;
	y = obj_planeDowned.y;
}

