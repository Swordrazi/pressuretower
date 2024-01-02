if (done == false and id_ != -1) {
	var i = o_Storeplace.item_database[id_];
	sprite_index = i.item_sprite;
}

if (done == true) {
	var i = o_Storeplace.item_database[id_];
	sprite_index = i.item_sprite_crushed;	
}

if (!instance_place(x,y,o_bg_conveyorbelt)) {
	y += 3;
}

if (instance_place(x,y,o_stop) || instance_place(x+18,y,o_item)) {
	if (done = true) {
		x += 2;	
	}
} else {
	x += 2;		
}

if (instance_place(x,y,o_destroyer)) {
	o_Storeplace.item_database[id_].item_amount += o_Storeplace.item_database[id_].item_value;
	if (find_button(10).level > 0 && id_ == 0) {
		var i = irandom_range(find_button(10).level,10)
		if (i == 10) {
			o_Storeplace.item_database[1].item_amount += 1;
		}
	}
	instance_destroy();	
}