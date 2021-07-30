/// @description Map Generation
// You can write your code in this editor

//Starting player
playerAs = 0 //Ashen
spawnDistance = 512;

//Map & Population Variables
#macro tileSize 32

primaryLandCount = 30000;
treeCount = 300;
bushCount = 100;
rockCount = 50;

occupation = 0;

#region BASE MAP GENERATION
//Tutorial by: Leaf Blower Games (Sebastian)
var borderSize = 16;
var dir = 0;

x = room_width / 2;
y = room_height / 2;

for (var i = 0; i <= room_width / tileSize; i++) {
	for (var j = 0; j <= room_height / tileSize; j++) {
		instance_create_layer(i * tileSize, j * tileSize, "Terrain", obj_water);	
	}
}

repeat(primaryLandCount) {
	if (94 >= irandom(99)) { //94 was mostly chosen for its more natual results
		var dir = choose(0, 1, 2, 3) * 90;	
	}
	x += lengthdir_x(tileSize, dir);
	y += lengthdir_y(tileSize, dir);
	
	var replaceTarget = instance_place(x, y, obj_water); //This is why the sprite is obj_water, it needs a collision mask
	if (!instance_place(x, y, obj_land)) {
		instance_destroy(replaceTarget);
		instance_create_layer(x, y, "Terrain", obj_land);
	}

	x = clamp(x, tileSize * borderSize, room_width - tileSize * borderSize);
	y = clamp(y, tileSize * borderSize, room_height - tileSize * borderSize);
}

#endregion

//Try using User Events
obj_water.alarm[0] = 1; //Land Thiccening
obj_land.alarm[0] = 30; //Adds Beaches

//This must be delayed until after the previous two alarms are fired to prevent unintended results (eg: trees in water)
alarm[0] = 60; //Map Population (Flora, Items, Fauna)

//Player-wide
globalvar playerID; //Doesn't support assignment on same line
playerID = noone;
globalvar itemSelection;
itemSelection = 0;

audioDist = 0;
audioVol = 0;

//Ambient Sounds
audio_play_sound(snd_shore, 0, true); //Calm Seashore - No Copyright Sound Effects - Audio Library

