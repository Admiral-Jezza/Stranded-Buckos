/// @description General Control & Audio
// You can write your code in this editor

//Item Selection via Scrolling
if (mouse_wheel_down() && !keyboard_check(vk_control) && !keyboard_check(vk_alt)) {
	switch(itemSelection) {
		case 3:
			itemSelection = 0;
			break
		default:
			itemSelection++;
			break;
	}
}
else if (mouse_wheel_up() && !keyboard_check(vk_control) && !keyboard_check(vk_alt)) {
	switch(itemSelection) {
		case 0:
			itemSelection = 3;
			break
		default:
			itemSelection--;
			break;
	}
}
else if (mouse_wheel_down() && keyboard_check(vk_control) && !keyboard_check(vk_alt)) {
	//alter player selection
}
else if (mouse_wheel_up() && keyboard_check(vk_control) && !keyboard_check(vk_alt)) {
	
} //Volume level changes via scrolling not permanent (make that a setting in the options)
else if (mouse_wheel_down() && keyboard_check(vk_alt) && !keyboard_check(vk_control) && !(audioSetting <= 0)) { 
	audioSetting = audioSetting - 0.1;
}
else if (mouse_wheel_up() && keyboard_check(vk_alt) && !keyboard_check(vk_control) && !(audioSetting >= 1)) {
	audioSetting = audioSetting + 0.1;
}

//Audio
if (playerID != noone) {
	with (playerID) {
		obj_control.audioDist = distance_to_point(room_width / 2, room_height / 2);
	}
}
audioVol = min(max(0.05, audioDist / 1000), 1) * audioSetting;
audio_sound_gain(snd_shore, audioVol, 0);