/// @description General Control & Audio
// You can write your code in this editor

//Item Selection via Scrolling
if (mouse_wheel_down() && !keyboard_check(vk_control)) {
	switch(itemSelection) {
		case 3:
			itemSelection = 0;
			break
		default:
			itemSelection++;
			break;
	}
}
else if (mouse_wheel_up() && !keyboard_check(vk_control)) {
	switch(itemSelection) {
		case 0:
			itemSelection = 3;
			break
		default:
			itemSelection--;
			break;
	}
}
else if (mouse_wheel_down() && keyboard_check(vk_control)) {
	//alter player selection
}
else if (mouse_wheel_up() && keyboard_check(vk_control)) {
	
}

//Audio
if (playerID != noone) {
	with (playerID) {
		obj_control.audioDist = distance_to_point(room_width / 2, room_height / 2);
	}
}
audioVol = min(max(0.05, audioDist / 1000), 1);
audio_sound_gain(snd_shore, audioVol, 0);