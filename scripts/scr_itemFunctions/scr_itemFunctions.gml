/// @func itemSetter(index, id)
/// @desc Adds Items to Next Inventory Slot
/// @param {int} itemindex
/// @param {int} id

function itemSetter(_int, _character) { //This can be used by any Bot character to add items to inventory
	for (var i = 0; i < array_length(_character.itemSlots); i++) {
		if (_character.itemSlots[i] == -1) { 
			_character.itemSlots[i] = _int;
			break;
		}
	}
}


/// @func itemConsumer(slot, id)
/// @desc Consumes Item From Specified Inventory Slot
/// @param {int} slot
/// @param {int} id

function itemConsumer(_slot, _character) { //For quick consumables
	switch(_character.itemSlots[_slot]) {
		case 2: //Apple
			_character.itemSlots[_slot] = -1;
			_character.food++;
			if (_character.food > 10) {
				_character.food = 10;
			}
			break; 
		default:
			break;
	}
		
}