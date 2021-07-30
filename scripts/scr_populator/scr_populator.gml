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
			obj_control.landingX = ID.x;
			obj_control.landingY = ID.y - tileSize / 2;
			
			instance_create_layer(obj_control.landingX - 1000, obj_control.landingY, "Instances", obj_planeDowned);
			//CHANGE WHERE PLAYER SPAWNS BEFORE CHANGING X DISTANCE 
			ID.depth--;
		}
	}
}