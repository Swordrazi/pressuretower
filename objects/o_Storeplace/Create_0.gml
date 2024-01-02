randomize();

global.crush_power = 0;
global.maximum_crush_needed = 10;

item = function(_item_sprite, _item_base_crushing_power, _item_sprite_crushed, _item_value, _amount, _item_unlock) constructor {
	item_sprite = _item_sprite;
	item_base_crushing_power = _item_base_crushing_power;
	item_sprite_crushed = _item_sprite_crushed;
	item_value = _item_value;
	item_amount = _amount;
	item_unlock = _item_unlock;
	item_crushing_power = item_base_crushing_power;
}

item_database = array_create(2);
item_database[0] = new item(spr_paper, 5, spr_crushed_paper, 1, 0, true);
item_database[1] = new item(spr_wood, 50, spr_crushed_wood, 1, 0, false);

button_unlock = array_create(3, false);

clicking_power = 1;

max_button = 0;

alarm_set(0,60);