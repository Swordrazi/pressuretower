if (room_get_name(room) == "Room2") {
	sprite_index = o_Storeplace.item_database[current_item].item_sprite;

	amount_left = 0;
	for (var i = 0; i < o_GearSlot.gear_slots; i++) {
		if (gears_in[i][o_GearSlot.current_item] == -1) {
			amount_left++;
		}
	}
}