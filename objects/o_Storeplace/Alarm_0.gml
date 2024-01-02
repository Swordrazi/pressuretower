//PAPER CRUSHING POWER
item_database[0].item_crushing_power = item_database[0].item_base_crushing_power;
item_database[0].item_crushing_power += find_button(4).level*5;
item_database[0].item_crushing_power -= find_button(7).level*5;

//WOOD CRUSHING POWER
item_database[1].item_crushing_power = item_database[1].item_base_crushing_power;
if (find_button(6).level > 0) {
	item_database[1].item_crushing_power += item_database[1].item_amount*2;
}

//CLICKING POWER
clicking_power = 1;
clicking_power += find_button(9).level;

alarm_set(0,60);