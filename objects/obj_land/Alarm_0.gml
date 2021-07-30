/// @description Conversion to Beach
// You can write your code in this editor

if (collision_rectangle(x - 32, y - 32, x + 32, y + 32, obj_water, false, false)) {
	instance_create_layer(x, y, "Terrain", obj_beach);
	instance_destroy();
}