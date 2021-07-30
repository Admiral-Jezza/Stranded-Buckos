/// @description Dynamic Sizing
// You can write your code in this editor

image_xscale = scale;
image_yscale = scale;

//Instead of draw_self() so it is above the GUI
draw_sprite_ext(spr_crosshair, 0, mouseSightX, mouseSightY, image_xscale, image_yscale, 0, c_white, 1); 
draw_sprite(spr_crosshair, 1, mouseSightX, mouseSightY);

if (debugMode) {
	draw_text(mouseSightX, mouseSightY, string(mouseSightX) + ":" + string(mouseSightY));
	draw_text(mouseSightX, mouseSightY + 16, string(x) + ":" + string(y));	
}