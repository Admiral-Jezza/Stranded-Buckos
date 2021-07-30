/// @description Land Contact Counter
// You can write your code in this editor

for (i = 0; i <= 3; i++) {
	//0, 90, 180, 270
	switch(i) {
		case 0:
		if place_meeting(x, y + tileSize, obj_land) {
			landContacts++;
		}
		break;
		case 1:
		if place_meeting(x + tileSize, y, obj_land) {
			landContacts++;
		}
		break;
		case 2:
		if place_meeting(x, y - tileSize, obj_land) {
			landContacts++;
		}
		break;
		case 3:
		if place_meeting(x - tileSize, y, obj_land) {
			landContacts++;
		}
		break;
	}
}

//Replaces self if bordering too much land 
if (landContacts >= 4) {
	instance_create_layer(x, y, "Terrain", obj_land);
	instance_destroy();
}