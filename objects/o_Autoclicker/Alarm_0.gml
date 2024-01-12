var i = find_button(3).level + find_button(6).level*o_Storeplace.item_database[1].item_amount + find_button(19).level;

if (global.crush_power + i >= global.maximum_crush_needed) {
	global.crush_power = global.maximum_crush_needed;
} else {
	global.crush_power += i;
}

alarm_set(0,auto_crush_speed);