// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gear_activate(gear_id, item_id){
	var gear = o_GearSlot.gears_in[gear_id][item_id];
	switch(gear.id_) {
		default:
			show_debug_message(gear);
		break;
		case 1:
			//Strength Gear [" + string(level_) + "]\nBuffs the Strength of the Resource by: " + string(value_)
			item_database[item_id].item_crushing_power += gear.value_;
		break;
		case 2:
			//description = "Critical Gear [" + string(level_) + "]\nBuffs Critical Clicking Chance by: " + string(value_);
			global.crit_chance_ += gear.value_;
		break;
		case 3:
			//description = "Clicking Gear [" + string(level_) + "]\nBuffs Clicking Strength by: " + string(value_);
			o_Storeplace.clicking_power += gear.value_; 
		break;
		case 4:
			//description = "Gear of Value [" + string(level_) + "]\nBuffs the Value of the Material by: " + string(value_);
			item_database[item_id].item_value += gear.value_;
		break;
	}
}