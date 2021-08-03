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
		
		if ((ID.x >= landingPointX1 && ID.x <= landingPointX2) && (ID.y >= landingPointY1 && ID.y <= landingPointY2)) {
			landingX = ID.x;
			landingY = ID.y - tileSize / 2;
			
			instance_create_layer(landingX - airbornX, landingY - airbornY, "Instances", obj_planeDowned);
			ID.depth--;
		}
	}
}