/// @description Menu Button Selection
// You can write your code in this editor

window_set_cursor(cr_default);

switch(menuIndex) {
	case 0:
		room_goto_next();
		break;
	case 1:
		break;
	case 2:
		break;
	case 3:
		currentScreen = 3;
		break;
	case 4:
		game_end();
		break;
}