/// @description Footsteps
// You can write your code in this editor

if (abs(speedX) + abs(speedY) != 0) { //Likely needs to be character specific due alarm trigger speed (& walk speed)
	if (sign(stepCounter) == 1 || sign(stepCounter) == 0) {
		audio_play_sound(snd_dirtStep1, 0, false);
	}
	else {
		audio_play_sound(snd_dirtStep2, 0, false);	
	}
	stepCounter++;
}

if (isSprinting) {
	alarm[2] = 15;
}
else {
	alarm[2] = 20;
}
