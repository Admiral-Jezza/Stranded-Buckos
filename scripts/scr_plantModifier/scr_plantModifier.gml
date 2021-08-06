// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function plantModifier(_objectCount, _objectList){
	if (_objectCount > 0) {
		for (var i = 0; i < _objectCount; i++;) {
			if (object_get_name(_objectList[| i].object_index) == "obj_tree") {
				_objectList[| i].image_index = 1;
			}
			//Can add other object changes here
			
			_objectList[| i].depth = obj_planeLeftWing.depth + 1;
		}		
	}
}