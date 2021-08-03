/// @description GUI
// You can write your code in this editor

var camHeightY = camera_get_view_height(view_camera[targetView]);
var camHeightX = camera_get_view_width(view_camera[targetView]);

draw_set_font(fnt_main);
draw_set_halign(fa_left);

//Item Boxes

for (var i = array_length(playerID.itemSlots) - 1; i >= 0; i--) { //Loops backwards as the boxes would otherwise overlap incorrectly
	draw_sprite(spr_box, 0, itemPositions[i] + (sprite_get_width(spr_box) / 2) - offsets[1], camHeightY - sprite_get_height(spr_box) / 2); //Left
	draw_sprite(spr_box, 1, camHeightX - (sprite_get_width(spr_box) / 2) + offsets[1] - itemPositions[i], camHeightY - sprite_get_height(spr_box) / 2); //Right

	//Items
	if (playerID != noone) {
		if (playerID.itemSlots[i] != -1) {
			draw_sprite(spr_itemIcon, playerID.itemSlots[i], itemPositions[i] + sprite_get_width(spr_itemIcon) - offsets[0], camHeightY - sprite_get_height(spr_box) / 2);
		}
	}
}


//Item Selector
draw_sprite(spr_selector, 0, itemPositions[itemSelection] + (sprite_get_width(spr_selector) / 2), camHeightY - sprite_get_height(spr_box) / 2);


//draw main dialog box

//Player Selection will work in a similar way to that of items

//HEALTH & STAMINA INFO
var healthFrac = playerID._health - frac(playerID._health);
var staminaFrac = playerID.stamina - frac(playerID.stamina);

//HUNGER & THIRST INFO
var foodFrac = playerID.food - frac(playerID.food);
var waterFrac = playerID.water - frac(playerID.water);

//Loop to Render Icons for each stat
for (var i = 1; i <= 10; i++) {
	//Health & Stamina
	draw_sprite(spr_heartStamina, (i > healthFrac) + ((i == healthFrac + 1) && frac(playerID._health) > 0), view_camera[targetView] - offsets[1] + (i - 1) * offsets[2], camHeightY - 95);	
	
	if (playerID.stamina > 0) {
		var iconSubImg = (i > staminaFrac) + ((i == staminaFrac + 1) && frac(playerID.stamina) > 0) + 3;
	}
	else {
		iconSubImg = 6;	
	}
	draw_sprite(spr_heartStamina, iconSubImg, view_camera[targetView] - offsets[1] + (i - 1) * offsets[2], camHeightY - 75);
	
	//Food & Water
	draw_sprite(spr_foodWater, (i > foodFrac) + ((i == foodFrac + 1) && frac(playerID.food) > 0), camHeightX + offsets[3] - (i + 1) * offsets[2], camHeightY - 95);	
	draw_sprite(spr_foodWater, (i > waterFrac) + ((i == waterFrac + 1) && frac(playerID.water) > 0) + 3, camHeightX + offsets[3] - (i + 1) * offsets[2], camHeightY - 75);	
}

//DEBUG INFO
if (debugMode = true) {
	//Listed
	draw_text(0, 0, "Debug Info");
	draw_text(0, 16, "Water Block Count: " + string(instance_number(obj_water)));
	draw_text(0, 32, "Land Block Count: " + string(instance_number(obj_land)));
	draw_text(0, 48, "Tree Count: " + string(instance_number(obj_tree)));
	
	switch(randomTerrain) {
		case 0:
			draw_text(0, 64, "Randomization: Off");
			break;
		default:
			draw_text(0, 64, "Randomization: On");
			break;
	}
	
	draw_text(0, 80, "Actual Speed: " + string(playerID.totalSpeed));
	draw_text(0, 96, "SpeedX: " + string(playerID.speedX));
	draw_text(0, 112, "SpeedY: " + string(playerID.speedY));
	draw_text(0, 128, "Ocean Volume: " + string(obj_control.audioVol));
	draw_text(0, 144, "Item Slots: " + string(playerID.itemSlots[0]) + string(playerID.itemSlots[1]) + string(playerID.itemSlots[2]) + string(playerID.itemSlots[3]));
	draw_text(0, 160, "Item Selection: " + string(itemSelection));
	draw_text(0, 176, "Occupied Lands:" + string(obj_control.occupation));
}