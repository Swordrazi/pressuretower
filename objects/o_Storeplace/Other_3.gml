
// MATERIALS
var _saveData = array_create(0);

for (var i = 0; i < array_length(item_database); i++) {
	var _saveMaterial = {
		item_base_crushing_power : item_database[i].item_base_crushing_power,
		item_value : item_database[i].item_value,
		item_amount : item_database[i].item_amount,
		item_unlock : item_database[i].item_unlock,
		item_belt : item_database[i].item_belt,
	}
	array_push(_saveData, _saveMaterial);
}

var _string = json_stringify(_saveData);
var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
show_debug_message(buffer_read(_buffer,buffer_string));
buffer_save(_buffer, "materialsave.factory");
buffer_delete(_buffer);

// BUTTONS
_saveData = array_create(0);

with (o_button) {
	if (id_ != 0) {
		var _saveButton = {
			id_ : id_,
			level : level,
			cost : cost,
			unlock : unlock,
		}
		array_push(_saveData, _saveButton);
	}
}

_string = json_stringify(_saveData);
_buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "buttonsave.factory");
buffer_delete(_buffer);

// AUTOMATION
_saveData = array_create(0);

with (o_Autoclicker) {
	var _saveAutomation = {
		auto_crush_speed : auto_crush_speed,
	}
	array_push(_saveData, _saveAutomation);
}

_string = json_stringify(_saveData);
_buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "autosave.factory");
buffer_delete(_buffer);

// ORDER
_saveData = array_create(0);

for (var i = 0; i < array_length(global.order); i++) {
	var _saveOrder = global.order[i];
	
	array_push(_saveData, _saveOrder);
}
for (var i = 0; i < array_length(o_Storeplace.button_unlock); i++) {
	var _saveOrder = o_Storeplace.button_unlock[i];
	
	array_push(_saveData, _saveOrder);
}

array_push(_saveData, max_button);

_string = json_stringify(_saveData);
_buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "ordersave.factory");
buffer_delete(_buffer);

// GEARS
_saveData = array_create(0);
for (var i2 = 0; i2 < o_GearSlot.item_amount; i2++) {
	for (var i = 0; i < o_GearSlot.gear_slots; i++) {
		var _saveGear_inSlot = o_GearSlot.gears_in[i][i2];
		array_push(_saveData, _saveGear_inSlot);
	}
}

for (var i = 0; i < array_length(o_GearStorage.gears_in); i++) {
	var _saveGear_inStorage = o_GearStorage.gears_in[i];
	
	array_push(_saveData, _saveGear_inStorage);
}

array_push(_saveData, global.xp_);

_string = json_stringify(_saveData);
_buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "gearsave.factory");
buffer_delete(_buffer);