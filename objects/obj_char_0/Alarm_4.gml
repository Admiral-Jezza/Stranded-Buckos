/// @description Hunger Drain
// You can write your code in this editor

if (food > 0) {
	food = food - 0.5;
	alarm[3] = room_speed * 180;
}
else if (food == 0) {
	_health = _health - 0.5;
	alarm[3] = room_speed * 90;
}
