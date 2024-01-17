if (unlock == true && on == true) {
	switch(id_) {
		case 0:
			show_debug_message("ERROR");
		break;
		case 1:
			var popup = global.crush_power;
			global.crush_power += o_Storeplace.clicking_power;
			var i = irandom_range(0,global.crit_chance_);
			var i2 = irandom_range(1,100);
			if (i >= i2) {
				global.crush_power += o_Storeplace.clicking_power*global.crit_damage_;
			}
			if (global.crush_power > global.maximum_crush_needed) {
				global.crush_power = global.maximum_crush_needed;
			}
			popup = global.crush_power - popup;
			var instance = instance_create_layer(x+irandom_range(0,image_xscale*32),y,"Instances",o_button_1_text);
			instance.text = popup;
		break;
		case 2:
			if (o_spawner.amount_ == 10) {
				o_spawner.amount_ = 0;
			}
		break;
		case 3:
			if (check_cost(0,cost)) {
				o_Storeplace.item_database[0].item_amount -= cost;
				level++;
				unlock_button(0);
			}
		break;
		case 4:
			if (check_cost(0,cost)) {
				o_Storeplace.item_database[0].item_amount -= cost;
				level++;
				unlock_button(1);
			}
		break;
		case 5:
			if (check_cost(0,cost) && level < 1) {
				o_Storeplace.item_database[0].item_amount -= cost;
				level++;
				o_Storeplace.item_database[1].item_unlock = true;
				o_Storeplace.item_database[1].item_belt++;
				global.order[0] = 1;
				unlock_button(2);
			}
		break;
		case 6:
			if (check_cost(1,cost)) {
				o_Storeplace.item_database[1].item_amount -= cost;
				level++;
			}
		break;
		case 7:
			if (check_cost(1,cost)) {
				o_Storeplace.item_database[1].item_amount -= cost;
				level++;
			}
		break;
		case 8:
			if (check_cost(0,cost)) {
				o_Storeplace.item_database[0].item_amount -= cost;
				level++;
			}
		break;
		case 9:
			if (check_cost(1,cost)) {
				o_Storeplace.item_database[1].item_amount -= cost;
				level++;
			}
		break;
		case 10:
			if (check_cost(1,cost) && level < 10) {
				o_Storeplace.item_database[1].item_amount -= cost;
				level++;
			}
		break;
		case 11:
			if (check_cost(1,cost) && level < 1) {
				o_Storeplace.item_database[1].item_amount -= cost;
				level++;
				unlock_button(3);
			} else if (level > 0) {
				switch(level) {
					case 1:
						level = 2;
					break;
					case 2:
						level = 1;
					break;
				}
			}
		break;
		case 12:
			if (check_cost(0,cost)) {
				o_Storeplace.item_database[0].item_amount -= cost;
				level++;
			}
		break;
		case 13:
			if (check_cost(0,cost) && level < 1) {
				o_Storeplace.item_database[0].item_amount -= cost;
				level++;
				unlock_button(4);
			}
		break;
		case 14:
			if (check_cost(1,cost) && level < 9) {
				o_Storeplace.item_database[1].item_amount -= cost;
				level++;
				o_Storeplace.item_database[1].item_belt += 1;
			}
		break;
		case 15:
			if (check_cost(0,cost) && level < 1) {
				o_Storeplace.item_database[0].item_amount -= cost;
				level++;
				unlock_button(5);
			}
		break;
		case 16:
			if (check_cost(0,cost)) {
				o_Storeplace.item_database[0].item_amount -= cost;
				level++;
				global.xp_ += 1;
			}
		break;
		case 17:
			if (check_cost(1,cost)) {
				o_Storeplace.item_database[1].item_amount -= cost;
				level++;
				global.xp_ += 2;
			}
		break;
		case 18:
			if (check_cost(1,cost) && level < 1) {
				o_Storeplace.item_database[1].item_amount -= cost;
				level++;
			}
		break;
		case 19:
			if (check_cost(0,cost)) {
				o_Storeplace.item_database[0].item_amount -= cost;
				level += find_button(3).level;
				find_button(3).level = 0;
			}
		break;
		case 20:
			if (check_cost(0,cost)) {
				o_Storeplace.item_database[0].item_amount -= cost;
				level += 1;
			}
		break;
	}
}

image_index = 1;
alarm_set(0,5)