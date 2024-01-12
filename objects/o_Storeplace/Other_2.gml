
if (file_exists(working_directory + "materialsave.factory")) {
	show_debug_message("A")
	var _buffer = buffer_load("materialsave.factory");
	var _string = buffer_read( _buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	for (var i = 0; i < array_length(item_database); i++) {
		if (array_length(_loadData) > 0) {
			var _loadMaterial = array_shift(_loadData);
			if (variable_struct_exists(_loadMaterial,string(nameof(item_base_crushing_power)))) {
				item_database[i].item_base_crushing_power = _loadMaterial.item_base_crushing_power;
			}
			if (variable_struct_exists(_loadMaterial,string(nameof(item_value)))) {
				item_database[i].item_value = _loadMaterial.item_value;
			}
			if (variable_struct_exists(_loadMaterial,string(nameof(item_amount)))) {
				item_database[i].item_amount = _loadMaterial.item_amount;
			}
			if (variable_struct_exists(_loadMaterial,string(nameof(item_unlock)))) {
				item_database[i].item_unlock = _loadMaterial.item_unlock;
			}
			if (variable_struct_exists(_loadMaterial,string(nameof(item_belt)))) {
				item_database[i].item_belt = _loadMaterial.item_belt;
			}
		}
	}
}


if (file_exists(working_directory + "buttonsave.factory")) {
	var _buffer = buffer_load("buttonsave.factory");
	var _string = buffer_read( _buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	max_button = instance_number(o_button);
	
	/*with (o_button) {
		if (id_ == 0) {
			o_Storeplace.max_button--;	
		}
	}*/
	
	for (var i = 1; i <= max_button; i++) {
		with (o_button) {
			if (array_length(_loadData) > 0 && id_ != 0) {
				var _loadButton = array_pop(_loadData);
				//show_debug_message(string(array_length(_loadData)) + " " + string(id_) + " " + string(_loadButton.id_))
				if (id_ == _loadButton.id_) {
					if (variable_struct_exists(_loadButton,string(nameof(id_)))) {
						id_ = _loadButton.id_
					}
					if (variable_struct_exists(_loadButton,string(nameof(unlock)))) {
						unlock = _loadButton.unlock;
					}
					if (variable_struct_exists(_loadButton,string(nameof(cost)))) {
						cost = _loadButton.cost
					}
					if (variable_struct_exists(_loadButton,string(nameof(level)))) {
						level = _loadButton.level
					}
					break;
				} else {
					array_push(_loadData,_loadButton)	
				}
			
			}
		}
	}
}

if (file_exists(working_directory + "autosave.factory")) {
	var _buffer = buffer_load("autosave.factory");
	var _string = buffer_read( _buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	with (o_Autoclicker) {
		var _loadAuto = array_pop(_loadData);
		if (variable_struct_exists(_loadAuto,string(nameof(auto_crush_speed)))) {
			auto_crush_speed = _loadAuto.auto_crush_speed;
		}
	}
}

if (file_exists(working_directory + "ordersave.factory")) {
	var _buffer = buffer_load("ordersave.factory");
	var _string = buffer_read( _buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	max_button = array_pop(_loadData);
	
	for (var i = array_length(o_Storeplace.button_unlock); i > 0; i--) {
		var _loadOrder = array_pop(_loadData);
		o_Storeplace.button_unlock[i-1] = _loadOrder;
	}
	for (var i = array_length(global.order); i > 0; i--) {
		var _loadOrder = array_pop(_loadData);
		global.order[i-1] = _loadOrder;
	}
}

if (file_exists(working_directory + "gearsave.factory")) {
	var _buffer = buffer_load("gearsave.factory");
	var _string = buffer_read( _buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	global.xp_ = array_pop(_loadData);
	
	for (var i = 0; i < array_length(o_GearStorage.gears_in); i++) {
		var _loadGear_inStorage = array_pop(_loadData);
		o_GearStorage.gears_in[i] = _loadGear_inStorage;
		//show_debug_message(_loadGear_inStorage)
	}
	
	for (var i2 = 0; i2 < o_GearSlot.item_amount; i2++) {
		for (var i = 0; i < array_length(o_GearSlot.gears_in); i++) {
			var _loadGear_inSlot = array_shift(_loadData);
			o_GearSlot.gears_in[i][i2] = _loadGear_inSlot;
			//show_debug_message(_loadGear_inSlot)	
		}
	}
		
	o_GearSlot.amount_left = 0;
	for (var i = 0; i < o_GearSlot.gear_slots; i++) {
		if (o_GearSlot.gears_in[i][0] == -1) {
			o_GearSlot.amount_left++;
		}
	}
}