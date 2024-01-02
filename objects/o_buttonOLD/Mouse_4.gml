if (unlock == true) {
	switch(id_) {
		case 0:
			show_debug_message("ERROR");
		break;
		case 1:
			global.crush_power += o_Storeplace.clicking_power;
			if (global.crush_power > global.maximum_crush_needed) {
				global.crush_power = global.maximum_crush_needed;
			}
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
				o_Autoclicker.auto_crush += 1;
				unlock_button(0);
			}
		break;
		case 4:
			if (check_cost(0,cost)) {
				o_Storeplace.item_database[0].item_amount -= cost;
				level++;
				o_Storeplace.item_database[0].item_value++;
				unlock_button(1);
			}
		break;
		case 5:
			if (check_cost(0,cost) && level < 1) {
				o_Storeplace.item_database[0].item_amount -= cost;
				level++;
				o_Storeplace.item_database[1].item_unlock = true;
				o_spawner.order[0] = 1;
				unlock_button(2);
			}
		break;
		case 6:
			if (check_cost(1,cost)) {
				o_Storeplace.item_database[1].item_amount -= cost;
				level++;
				o_Autoclicker.auto_crush_woodupg += 1;
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
				o_Storeplace.item_database[1].item_value += 2;
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
	}
}