/// @description Menu Variables
// You can write your code in this editor

//Credit: Code Workshop
menuX = display_get_width() / 8;
menuY = display_get_height() / 2;
buttonSpacing = 96;

currentScreen = 0; //In line with buttonMain[] array

buttonMain[0] = "New Game";
buttonMain[1] = "Load Game";
buttonMain[2] = "Options";
buttonMain[3] = "Credits";
buttonMain[4] = "Exit";

buttonCount = array_length(buttonMain);

menuIndex = 0;
lastSelected = 0;