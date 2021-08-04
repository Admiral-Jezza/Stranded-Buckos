/// @description Aircraft Movement
// You can write your code in this editor

depth = -1 * y;
distance = point_distance(x, y, obj_control.landingX, obj_control.landingY);

if (distance < tileSize * obj_control.stoppedArea) {
	speed = 0;
}
else if (distance < tileSize * obj_control.landingArea) {
	speed = obj_control.startSpeed / 2;
	image_index = 1;
}

if (speed > 0) {
	objectCount = collision_line_list(x + 50, y - sprite_height / 2, x + 50, y + sprite_height / 2, obj_parent_plants, true, false, objectList, true);
	if (objectCount > 0) {
		for (var i = 0; i < objectCount; i++;) {
			if (object_get_name(objectList[| i].object_index) == "obj_tree") {
				objectList[| i].image_index = 1;
			}
			objectList[| i].depth = obj_planeLeftWing.depth + 1;
		}		
	}
	objectCount = 0;
	ds_list_clear(objectList);
}

with (obj_planeLeftWing) {
	x = obj_planeDowned.x;
	y = obj_planeDowned.y
}
with (obj_planeTail) {
	x = obj_planeDowned.x;
	y = obj_planeDowned.y;
}

