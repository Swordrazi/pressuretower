randomize();

//STATS
global.crit_chance_ = 0;
global.crit_damage_ = 100;
global.crush_power = 0;
global.maximum_crush_needed = 10;

item = function(_item_sprite, _item_base_crushing_power, _item_sprite_crushed, _item_value, _amount, _item_unlock, _item_belt) constructor {
	item_sprite = _item_sprite;
	item_base_crushing_power = _item_base_crushing_power;
	item_sprite_crushed = _item_sprite_crushed;
	item_base_value = _item_value;
	item_amount = _amount;
	item_unlock = _item_unlock;
	item_crushing_power = item_base_crushing_power;
	item_value = item_base_value;
	item_on_belt = 0;
	item_belt = _item_belt;
}

item_database = array_create(2);
item_database[0] = new item(spr_paper, 5, spr_crushed_paper, 1, 0, true, 10);
item_database[1] = new item(spr_wood, 50, spr_crushed_wood, 1, 0, false, 0);

button_unlock = array_create(6, false);

clicking_power = 1;

max_button = 0;

alarm_set(0,60);

//PRESTIGE
global.xp_ = 0;