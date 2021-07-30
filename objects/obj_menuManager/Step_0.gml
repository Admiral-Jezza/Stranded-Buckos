/// @description Menu Selection Funcionality 
// You can write your code in this editor

//Mouse Control
window_set_cursor(cr_default); 

for (var i = 0; i < buttonCount; i++) {
	if (point_in_rectangle(mouse_x, mouse_y, menuX - sprite_get_width(spr_menuBoxLarge) / 2, menuY - sprite_get_height(spr_menuBoxLarge) / 2 + buttonSpacing * i,
	menuX + sprite_get_width(spr_menuBoxLarge) / 2, menuY + sprite_get_height(spr_menuBoxLarge) / 2 + buttonSpacing * i)) {
		menuIndex = i;
		window_set_cursor(cr_handpoint); //May replace with in-game style cursors
		
		if (mouse_check_button_released(mb_left)) {
			event_user(0);
		}
	}
}

//Keyboard control
menuMove = ((keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)) - (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)));

menuIndex = menuIndex + menuMove;

if (menuIndex < 0) {
	menuIndex = buttonCount - 1;	
}
else if (menuIndex > buttonCount - 1) {
	menuIndex = 0;	
}

if (keyboard_check_pressed(vk_enter)) {
	event_user(0);	
}

//Sound
if (menuIndex != lastSelected) {
	//audio_play_sound()	
}

lastSelected = menuIndex;