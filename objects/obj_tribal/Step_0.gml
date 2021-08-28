/// @description Actions & Movement
// You can write your code in this editor

switch(state) {
	case e_state.idle:
		//-1, 0, 1
		speedX = 0;
		speedY = 0;
		if (distance_to_object(playerID) <= alertRange) {
			state = e_state.chase;	
		}
	break;
	
	case e_state.chase:
		speedX = sign(playerID.x - x);
		speedY = sign(playerID.y - y);
		
		if (distance_to_object(playerID) >= escapeRange) {
			state = e_state.idle;	
		}
	break;
	
}

totalSpeed = walkSpeed;

speedXTemp = speedX;
speedYTemp = speedY;

//Convoluted af but it works
if ((speedX == 1 && speedY == 1) || (speedX == -1 && speedY == 1) || (speedX == 1 && speedY == -1) || (speedX == -1 && speedY == -1)) {
	totalSpeed = totalSpeed / 1.5;
}

speedX = speedX * totalSpeed;
speedY = speedY * totalSpeed;

//This basically smooths out movement when it is about to collide, until it is only going a pixel at a time (sign), then stops exactly at the object.
if (position_meeting(x + speedX, y, obj_parent_barrier)) {
	while (!place_meeting(x + sign(speedX), y, obj_parent_barrier)) {
		x = x + sign(speedX);
	}
	speedX = 0;
}
if (position_meeting(x, y + speedY, obj_parent_barrier)) {
	while (!place_meeting(x, y + sign(speedY), obj_parent_barrier)) {
		y = y + sign(speedY);
	}
	speedY = 0;
}

x = x + speedX;
y = y + speedY;

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

