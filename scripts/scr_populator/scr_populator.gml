/// @func populator(obj,x)
/// @desc Randomly Populates the World - Intended for Flora
/// @param {obj} _obj Required Object
/// @param {int} _int Required Amount

function populator(_obj, _int) {
	var ID = noone;
	var count = instance_number(obj_land);
	var i = 0;
	
	while (i < _int) {
		ID = instance_find(obj_land, irandom(count - 1));
		
		if (!ID.occupied) {
			instance_create_layer(ID.x, ID.y, "Instances", _obj);
			ID.depth--;
			i++
		}
	}
}

function populatorPlane() {
	var ID = noone;
	var count = instance_number(obj_land);
	
	while (!instance_exists(obj_planeDowned)) {
		ID = instance_find(obj_land, irandom(count - 1));
		
		if ((ID.x >= 1000 && ID.x <= 1200) && (ID.y >= 600 && ID.y <= 2400)) {
			instance_create_layer(ID.x, ID.y - tileSize / 2, "Instances", obj_planeDowned);
			ID.depth--;
		}
	}
}