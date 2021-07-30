/// @description Movement & Sprite Direction
// You can write your code in this editor

//absolute (abs) used to prevent them from cancelling out if one is negative
if (keyboard_check(vk_shift) && (abs(speedX) + abs(speedY)) != 0 && stamina >= 2) {
	totalSpeed = walkSpeed + sprintExtra;
	isSprinting = true;
}
else {
	totalSpeed = walkSpeed;
	isSprinting = false;
}

speedX = ((keyboard_check(ord("D")) || keyboard_check(vk_right)) - (keyboard_check(ord("A")) || keyboard_check(vk_left)));
speedY = ((keyboard_check(ord("S")) || keyboard_check(vk_down)) - (keyboard_check(ord("W")) || keyboard_check(vk_up)));

//Convoluted af but it works
if ((speedX == 1 && speedY == 1) || (speedX == -1 && speedY == 1) || (speedX == 1 && speedY == -1) || (speedX == -1 && speedY == -1)) {
	totalSpeed = totalSpeed / 1.5;
}

speedX = speedX * totalSpeed;
speedY = speedY * totalSpeed;

//This basically smooths out movement when it is about to collide, until it is only going a pixel at a time (sign), then stops exactly at the object.
if (position_meeting(x + speedX, y, obj_barrierParent)) {
	while (!place_meeting(x + sign(speedX), y, obj_barrierParent)) {
		x = x + sign(speedX);
	}
	speedX = 0;
}
if (position_meeting(x, y + speedY, obj_barrierParent)) {
	while (!place_meeting(x, y + sign(speedY), obj_barrierParent)) {
		y = y + sign(speedY);
	}
	speedY = 0;
}

x = x + speedX;
y = y + speedY;

//TO BE CHANGED UPON FRAME ORDER STANDARDIZATION WITH ATTACHPOINT SOFTWARE
//Sprite Direction (would use switch but thats for definite values)
if (speedX > 0) {
	image_index = spriteFrame + 6; //Walking Right
}
else if (speedX < 0) {
	image_index = spriteFrame + 3; //Walking Left
}
else if (speedY > 0) {
	image_index = spriteFrame; //Walking Down
}
else if (speedY < 0) {
	image_index = spriteFrame + 9; //Walking Up
}

if (speedX + speedY == 0 && image_index >= 9) { //quicker than spriteFrame + 9
	image_index = 1; //Standing still
}

depth = -1 * y;