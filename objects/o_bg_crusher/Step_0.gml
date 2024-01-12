
if (instance_exists(o_item)) {
	var _item = instance_nearest(x,y,o_item).id_;
	global.maximum_crush_needed = o_Storeplace.item_database[_item].item_crushing_power;

	if (instance_place(x,y,o_item)) {
		var i = instance_place(x,y,o_item);
		if (image_index >= 6 && image_index < 9) {
			image_speed = 1;
			global.crush_power = 0;
			one_done = false;
		}
	
		if (i.done == false && image_index >= 9 && one_done == false) {
			i.done = true;
			one_done = true;
			image_speed = 1;
		}
	}
}

if (image_index < 6) {
	image_speed = 0;
	var i = global.crush_power/global.maximum_crush_needed;
	if (i > 1) { i = 0.9 };
	image_index = i*6;
}