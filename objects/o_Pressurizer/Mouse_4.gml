clicks_++;

image_xscale -= 0.2;

if (clicks_ > 9) {
	prestige_ = false;
	//PRESTIGE
	with (o_button) {
		if (level != 0 && prestige == true) {
			level = 0;	
		}
		unlock = false;
	}
	for (var i = 0; i < array_length(o_Storeplace.item_database); i++) {
		o_Storeplace.item_database[i].item_amount = 0;
	}
	for (var i = 0; i < array_length(o_Storeplace.button_unlock); i++) {
		o_Storeplace.button_unlock[i] = 0;
	}
	for (var i = 0; i < array_length(global.order); i++) {
		global.order[i] = 0;
	}
	o_Storeplace.button_unlock[5] = 1;
	o_Autoclicker.auto_crush = 0;
	o_Autoclicker.auto_crush_woodupg = 0;
	
	//NEW GEARS
	alarm_set(0,10);
	
	clicks_ = 0;
}