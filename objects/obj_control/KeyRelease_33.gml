/// @description DEBUG Increment
// You can write your code in this editor

if (playerID._health < 10 && !keyboard_check(vk_control) && !keyboard_check(vk_alt)) {
	playerID._health = playerID._health + 0.5;
}
else if (playerID.food < 10 && keyboard_check(vk_control)) {
	playerID.food = playerID.food + 0.5;
}
else if (playerID.water < 10 && keyboard_check(vk_alt)) {
	playerID.water = playerID.water + 0.5;
}
