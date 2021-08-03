/// @description Depth & Environment Altering
// You can write your code in this editor

speed = obj_control.startSpeed;

//Needed "character" variables
_health = 1;
stamina = 1;
food = 1;
water = 1;

totalSpeed = 0;
walkSpeed = 0;
speedX = 0;
speedY = 0;
sprintExtra = 0;
isSprinting = false;

itemSlots = [ -1, -1, -1, -1 ];

/* Not needed until plane crashes
var objectList = ds_list_create();
var treeCount = collision_rectangle_list(x - sprite_width * 3, y - sprite_height / 2, x + 64, y + sprite_height / 2, obj_tree, false, false, objectList, false);
treeCount += collision_rectangle_list(x + 64, y - 32, x + sprite_width / 2, y + 26, obj_tree, false, false, objectList, false);
for (var i = 0; i < treeCount; i++) {
	instance_destroy(objectList[| i]);
}

var landCount = collision_rectangle_list(x - sprite_width * 3, y - 30, x + 32, y + 30, obj_land, false, false, objectList, false);
for (var i = 0; i < landCount; i++) {
	with (objectList[| i]) {
		image_index = 1;
	}
}
*/

//Must be thier own objects to not be affected by depth mechanics in the same way
instance_create_layer(x, y, "Instances", obj_planeLeftWing);
instance_create_layer(x, y, "Instances", obj_planeTail);