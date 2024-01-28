clicks_++;

image_xscale -= 0.2;

if (clicks_ > 9 && global.xp_ >= minimum) {
	prestige_ = false;
	//PRESTIGE
	with (o_button) {
		if (level != 0) {
			level = 0;	
		}
		unlock = false;
	}
	for (var i = 0; i < array_length(o_Storeplace.item_database); i++) {
		o_Storeplace.item_database[i].item_amount = 0;
		o_Storeplace.item_database[i].item_belt = 0;
	}
	for (var i = 0; i < array_length(global.order); i++) {
		global.order[i] = 0;
	}
	o_Storeplace.item_database[0].item_belt = 10;
	
	//NEW GEARS
	alarm_set(0,10);
	
	clicks_ = 0;
} else if (clicks_ > 9) {
	clicks_ = 0;	
}