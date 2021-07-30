/// @description Debugging Boxes
// You can write your code in this editor

draw_self();

//ROUGH ESTIMATES, WILL CHANGE ONCE ACTUAL DESIGN OF PLANE IS DONE
//left, top, right, bottom
draw_rectangle(x - sprite_width * 3, y - sprite_height / 2, x + 64, y + sprite_height / 2, true); //Rear
draw_rectangle(x + 64, y - 32, x + sprite_width / 2, y + 26, true); //Front
draw_rectangle(x - sprite_width * 3, y - 30, x + 32, y + 30, true); //Central, for dirt. Also 30 & not 32 to prevent overlap into unwanted land