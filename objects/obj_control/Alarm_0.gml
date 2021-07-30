/// @description Map Population
// You can write your code in this editor

//BUG: Only some land tiles get marked as "occupied" when items spawn on them
//Natural Stuff
populator(obj_tree, treeCount);
populator(obj_bush, bushCount);
populator(obj_rock, rockCount);

populatorPlane();

withinRadius = ds_list_create();
collision_circle_list(obj_planeDowned.x, obj_planeDowned.y, sprite_get_height(spr_planeDowned), obj_land, false, true, withinRadius, false);

//Player(s) Spawning
while (!instance_exists(obj_ashen)) {
	var ID = ds_list_find_value(withinRadius, irandom(ds_list_size(withinRadius) - 1));
	if (!ID.occupied && point_distance(ID.x, ID.y, obj_planeDowned.x, obj_planeDowned.y) < spawnDistance) { 
		instance_create_layer(ID.x, ID.y, "Instances", obj_ashen);
		event_user(0);
	}
}

//Extras
instance_create_layer(ID.x, ID.y, "Instances", obj_camera);
instance_create_layer(ID.x, ID.y, "Instances", obj_crosshair);

//Land Occupation Debug Check
for (var i = 0; i < instance_number(obj_land); i++) {
	var ID = instance_find(obj_land, i);
	if (ID.occupied) {
		occupation++;	
	}
}