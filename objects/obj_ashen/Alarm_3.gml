/// @description Thirst Drain
// You can write your code in this editor

if (water > 0) {
	water = water - 0.5;
	alarm[3] = room_speed * 30;
}
else if (water == 0) {
	_health--;
	alarm[3] = room_speed * 30;
}
