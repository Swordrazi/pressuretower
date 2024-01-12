gear_slots = 100;

gear = function(_x, _y, _id, _level, _value) constructor {
	x_ = _x;
	y_ = _y;
	id_ = _id;
	level_ = _level;
	value_ = _value;
}

gears_in[gear_slots-1] = -1;

for (var i = 0; i < gear_slots; i++) {
	gears_in[i] = -1;
}

current_item = 0;
amount_left = 0;