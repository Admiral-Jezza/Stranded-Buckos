/// @description Debug
// You can write your code in this editor

draw_self();

if (debugMode) {
	draw_circle_color(x, y + 16, alertRange, c_white, c_red, true); //Alert range
	draw_circle_color(x, y + 16, escapeRange, c_white, c_orange, true); //Escape range

	draw_text(x + 32, y, speedXTemp);
	draw_text(x + 32, y + 16, speedYTemp);
	draw_text(x + 32, y + 32, distance_to_object(playerID));
	draw_text(x + 32, y + 48, state);
}

