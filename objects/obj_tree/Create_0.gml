/// @description Variables & Depth
// You can write your code in this editor

//Credit: IndieBerg
if (irandom(99) <= 4) {
	image_index = 1;
}

depth = -1 * y;

landTile = instance_position(x, y, obj_land);
landTile.occupied = true;