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

if (instance_place(x,y,o_stop) || instance_place(x+9,y,o_item)) {
	if (done = true) {
		x += 4;	
	}
} else {
	x += 4;		
}

// Adding Items
if (instance_place(x,y,o_destroyer)) {
	var v = 0;
	// Pressure Value
	if (find_button(18).level > 0) {
		v += floor(o_Storeplace.item_database[id_].item_crushing_power/100)	
		
		// Capping Pressure Value
		if (v > find_button(18).level*25) {
			v = find_button(18).level*25 + round((v-find_button(18).level*25)/(v*v*0.5))
		}
	}
	o_Storeplace.item_database[id_].item_amount += (floor(o_Storeplace.item_database[id_].item_value)+v)*polished; // Adding the items
	
	// Wooden Paper
	if (find_button(10).level > 0 && id_ == 0) {
		var i = irandom_range(find_button(10).level,10)
		if (i == 10) {
			o_Storeplace.item_database[1].item_amount += 1;
		}
	}
	instance_destroy();	
}