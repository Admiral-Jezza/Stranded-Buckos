/// @description Depth & Environment Altering
// You can write your code in this editor

if (obj_control.openSequence) {
	speed = obj_control.startSpeed;
}

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
staminaSprintDrain = 1;

itemSlots = [ -1, -1, -1, -1 ];

objectCount = 0;
objectList = ds_list_create();

//Must be thier own objects to not be affected by depth mechanics in the same way
instance_create_layer(x, y, "Instances", obj_planeLeftWing);
instance_create_layer(x, y, "Instances", obj_planeTail);

if (!obj_control.openSequence) {
	objectCount = collision_rectangle_list(obj_control.landingX - obj_control.airbornX, obj_control.landingY - obj_control.airbornY - sprite_height / 2, x + 50, y + sprite_height / 2, obj_parent_plants, true, false, objectList, true);
	plantModifier(objectCount, objectList);
	objectCount = 0;
	ds_list_clear(objectList);
	
	alarm[0] = room_speed * 1;
}






