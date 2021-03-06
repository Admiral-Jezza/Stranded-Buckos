/// @description Debugging Boxes
// You can write your code in this editor

draw_self();

if (debugMode = true) {
	draw_circle(obj_control.landingX, obj_control.landingY, tileSize * obj_control.stoppedArea, true);	
	draw_circle(obj_control.landingX, obj_control.landingY, tileSize * obj_control.landingArea, true);
	
	if (obj_control.openSequence) {
		draw_line(x + 50, y - sprite_height / 2, x + 50, y + sprite_height / 2);
	}
	else {
		draw_rectangle(obj_control.landingX - obj_control.airbornX, obj_control.landingY - obj_control.airbornY - sprite_height / 2, x + 50, y + sprite_height / 2, true);	
	}
	
}


//ROUGH ESTIMATES, WILL CHANGE ONCE ACTUAL DESIGN OF PLANE IS DONE
//left, top, right, bottom

//draw_rectangle(x + 64, y - 32, x + sprite_width / 2, y + 26, true); //Front
//draw_rectangle(x - sprite_width * 3, y - 30, x + 32, y + 30, true); //Central, for dirt. Also 30 & not 32 to prevent overlap into unwanted land