//CLICKING POWER
clicking_power = 1;
clicking_power += (find_button(9).level*(1+find_button(12).level))*10;

// Gears Setup
item_database[0].item_on_belt = 0;
item_database[1].item_on_belt = 0;
if (instance_exists(o_item)) {
	with (o_item) {
		o_Storeplace.item_database[id_].item_on_belt++;
	}
}

//PAPER STRENGTH
item_database[0].item_crushing_power = item_database[0].item_base_crushing_power;
item_database[0].item_crushing_power += find_button(4).level*(find_button(4).level+5);
item_database[0].item_crushing_power -= find_button(7).level*5;
item_database[0].item_crushing_power += find_button(20).level*find_button(20).level*125;

//PAPER VALUE
item_database[0].item_value = item_database[0].item_base_value;
item_database[0].item_value += find_button(4).level;

///Gears for Paper
repeat(item_database[0].item_on_belt) {
	for (var i = 0; i < o_GearSlot.gear_slots; i++) {
		if (o_GearSlot.gears_in[i][0] != -1) {
			gear_activate(i, 0);
		}
	}
}

item_database[0].item_crushing_power = round(item_database[0].item_crushing_power);

//WOOD STRENGTH
item_database[1].item_crushing_power = item_database[1].item_base_crushing_power;
item_database[1].item_crushing_power += item_database[1].item_amount*(10+find_button(6).level)*find_button(6).level;
item_database[1].item_crushing_power += find_button(8).level*15;

//PAPER VALUE
item_database[1].item_value = item_database[1].item_base_value;
item_database[1].item_value += find_button(8).level*2;

///Gears for Wood
repeat(item_database[1].item_on_belt) {
	for (var i = 0; i < o_GearSlot.gear_slots; i++) {
		if (o_GearSlot.gears_in[i][1] != -1) {
			gear_activate(i, 1);
		}
	}
}

item_database[1].item_crushing_power = round(item_database[1].item_crushing_power);

alarm_set(0,60);