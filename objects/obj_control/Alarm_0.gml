/// @description Map Population
// You can write your code in this editor

//BUG: Only some land tiles get marked as "occupied" when items spawn on them
//Natural Stuff
populator(obj_tree, treeCount);
populator(obj_bush, bushCount);
populator(obj_rock, rockCount);

populatorPlane();
playerID = obj_planeDowned.id;

//Extras (ID.x/y)
instance_create_layer(obj_planeDowned.x, obj_planeDowned.y, "Instances", obj_camera);
instance_create_layer(obj_planeDowned.x, obj_planeDowned.y, "Instances", obj_crosshair);


//Land Occupation Debug Check
for (var i = 0; i < instance_number(obj_land); i++) {
	var ID = instance_find(obj_land, i);
	if (ID.occupied) {
		occupation++;	
	}
}