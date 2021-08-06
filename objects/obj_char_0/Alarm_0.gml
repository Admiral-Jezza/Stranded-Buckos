/// @description Stamina Drain & Regen
// You can write your code in this editor

if (stamina <= 9.5 && isSprinting = false) { 
	stamina = stamina + 0.5;
}
else if (isSprinting = true) {
	stamina = stamina - 2;
}

if (stamina = 0) {
	water = water - 0.5;	
}

alarm[0] = 30;