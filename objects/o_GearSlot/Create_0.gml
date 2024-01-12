image_xscale = 3;
image_yscale = 3;

gear_slots = 4;

gear = function(_x, _y, _id, _level, _value) constructor {
	x_ = _x;
	y_ = _y;
	id_ = _id;
	level_ = _level;
	value_ = _value;
}

item_amount = array_length(o_Storeplace.item_database);

gears_in[gear_slots-1][item_amount] = -1;

for (var i = 0; i < gear_slots; i++) {
	for (var i2 = 0; i2 < item_amount; i2++) {
		gears_in[i][i2] = -1;
	}	
}

current_item = 0;
amount_left = 0;