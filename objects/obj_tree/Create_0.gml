/// @description Variables & Depth
// You can write your code in this editor


if (irandom(99) <= 4) {
	image_index = 1;
}

//Credit: IndieBerg
depth = -1 * y;

landTile = instance_position(x, y, obj_land);
landTile.occupied = true;