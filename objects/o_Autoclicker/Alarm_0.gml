var i = auto_crush + auto_crush_woodupg*o_Storeplace.item_database[1].item_amount;

if (global.crush_power + i >= global.maximum_crush_needed) {
	global.crush_power = global.maximum_crush_needed;
} else {
	global.crush_power += i;
}

alarm_set(0,auto_crush_speed);