/// @description Map Generation
// You can write your code in this editor

#region AIRCRAFT OPTIONS
openSequence = true;

//Plane Positioning - General Area of Map for plane to land - Arbitary
landingPointX1 = 1000;
landingPointX2 = 1200;
landingPointY1 = 600;
landingPointY2 = 2400;

stoppedArea = 3
landingArea = stoppedArea * 2;

airbornX = irandom_range(800, 1600); //How far the plane is from landing - Arbitary
airbornY = irandom_range(tileSize * stoppedArea - 1, -tileSize * stoppedArea + 1); //Should be no larger than tileSize * 3 - 1 (or + 1 if negative)

startSpeed = 3;

//Plane Positioning (Set from populatorPlane() method, not here)
landingX = 0;
landingY = 0;

#endregion

//Starting player
playerAs = 0
spawnDistance = 512;

//Map & Population Variables
#macro tileSize 32

primaryLandCount = 30000;
treeCount = irandom_range(200, 400);
bushCount = irandom_range(50, 150);
rockCount = irandom_range(50, 100);
occupation = 0;

tribalCount = irandom_range(16, 32);

enum e_state {
	idle,
	chase,
}

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

obj_water.alarm[0] = 1; //Land Thiccening
obj_land.alarm[0] = 30; //Adds Beaches

//This must be delayed until after the previous two alarms are fired to prevent unintended results (eg: trees in water)
alarm[0] = 60; //Map Population (Flora, Items, Fauna)

//Player-wide
globalvar playerID; //Doesn't support assignment on same line
playerID = noone;
globalvar itemSelection;
itemSelection = 0;

//Audio
audioDist = 0;
audioVol = 0;
audioSetting = 1;

audio_play_sound(snd_shore, 0, true); //Calm Seashore - No Copyright Sound Effects - Audio Library

