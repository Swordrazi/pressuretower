if (instance_exists(o_item)) {
	var _item = instance_nearest(x,y,o_item).id_;
	global.maximum_crush_needed = o_Storeplace.item_database[_item].item_crushing_power;

	if (instance_place(x,y,o_item)) {
		var i = instance_place(x,y,o_item);
		if (round(image_index) >= 6 && round(image_index) < 9) {
			image_speed = 1;
			global.crush_power = 0;
		}
	
		if (i.done == false && round(image_index) >= 9) {
			i.done = true;
		}
	}
}

if (image_index < 6) {
	image_speed = 0;
	image_index = round((global.crush_power/global.maximum_crush_needed)*6);
}