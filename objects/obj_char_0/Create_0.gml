/// @description Variables
// You can write your code in this editor

//Main (may decrement by half at some points, won't be at 20 and as ints otherwise it may break some other code)
_health = 10;
stamina = 10;
food = 10;
water = 10;

//Movement
totalSpeed = 0;
walkSpeed = 1.8;
speedX = 0;
speedY = 0;
sprintExtra = 1;
isSprinting = false;
staminaSprintDrain = 1;

//Items
itemSlots = [ 1, 0, -1, -1 ]; //Firewood, Radio, Nothing, Nothing

//Other Triggered Actions
spriteFrame = 0;

alarm[0] = 30; //Stamina/Regen
alarm[1] = 10; //Sprite Framerate
alarm[2] = 20; //Footsteps
alarm[3] = room_speed * 60; //Thirst
alarm[4] = room_speed * 180; //Hunger

//Sounds
stepCounter = 0; //Used for footsteps, can be used for other things?