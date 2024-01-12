if (room_get_name(room) == "Room2") {

	amount_left = 0;
	for (var i = 0; i < gear_slots; i++) {
		if (gears_in[i] == -1) {
			amount_left++;
		}
	}
}