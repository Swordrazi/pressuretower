if (file_exists("materialsave.factory")) {
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
		}
	}
}


if (file_exists("buttonsave.factory")) {
	var _buffer = buffer_load("buttonsave.factory");
	var _string = buffer_read( _buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	for (var i = 1; i <= max_button; i++) {
		with (o_buttonOLD) {
			if (id_ = i && array_length(_loadData) > 0) {
				var _loadButton = array_pop(_loadData);
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
			}
		}
	}
}

if (file_exists("autosave.factory")) {
	var _buffer = buffer_load("autosave.factory");
	var _string = buffer_read( _buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	with (o_Autoclicker) {
		var _loadAuto = array_pop(_loadData);
		if (variable_struct_exists(_loadAuto,string(nameof(auto_crush)))) {
			auto_crush = _loadAuto.auto_crush;
		}
		if (variable_struct_exists(_loadAuto,string(nameof(auto_crush_speed)))) {
			auto_crush_speed = _loadAuto.auto_crush_speed;
		}
		if (variable_struct_exists(_loadAuto,string(nameof(auto_crush_woodupg)))) {
			auto_crush_woodupg = _loadAuto.auto_crush_woodupg;
		}
	}
}

if (file_exists("ordersave.factory")) {
	var _buffer = buffer_load("ordersave.factory");
	var _string = buffer_read( _buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	max_button = array_pop(_loadData);
	
	for (var i = array_length(o_Storeplace.button_unlock); i > 0; i--) {
		var _loadOrder = array_pop(_loadData);
		o_Storeplace.button_unlock[i-1] = _loadOrder;
	}
	for (var i = array_length(o_spawner.order); i > 0; i--) {
		var _loadOrder = array_pop(_loadData);
		o_spawner.order[i-1] = _loadOrder;
	}
}