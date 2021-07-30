/// @description Sprite Framing
// You can write your code in this editor

//Its done this way as to not need multiple sprite indexes
if (spriteFrame < 2) {
	spriteFrame++;
}
else {
	spriteFrame = 0;	
}

if (isSprinting) {
	alarm[1] = 5;
}
else {
	alarm[1] = 10;
}
