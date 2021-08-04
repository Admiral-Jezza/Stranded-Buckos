/// @description Text Display
// You can write your code in this editor

if (debugMode && room == rm_mainmenu) {
	draw_text(x + string_width(debugMsg) / 2, y, debugMsg);	
	/*
	if (randomTerrain) {
		draw_text(x + string_width(debugMsgRandom) / 2, y + string_height(debugMsg), debugMsgRandom);
	}
	*/
}

switch(currentScreen) {
	case 0:
		for (var i = 0; i < buttonCount; i++) {
	
			draw_set_font(fnt_menu); //Credit: Zeh Fernando
			draw_set_halign(fa_center);
			draw_set_color(c_ltgray);
	
			if (menuIndex == i) {
				draw_set_color(c_red);	
				draw_sprite(spr_menuBoxLarge, 0, menuX, menuY + buttonSpacing * i);
			}
			else {
				draw_sprite(spr_menuBoxLarge, 0, menuX - sprite_get_height(spr_menuBoxLarge), menuY + buttonSpacing * i);	
			}
	
			draw_text(menuX, menuY + buttonSpacing * i - string_height(buttonMain[i]) / 2, buttonMain[i]);
			
			/*
			draw_rectangle(menuX - sprite_get_width(spr_menuBoxLarge) / 2, menuY - sprite_get_height(spr_menuBoxLarge) / 2 + buttonSpacing * i, 
			menuX + sprite_get_width(spr_menuBoxLarge) / 2, menuY + sprite_get_height(spr_menuBoxLarge) / 2 + buttonSpacing * i, true);
			*/
		}
	break;
	
	case 2:
		break;
		
	case 3:
		break;
}

