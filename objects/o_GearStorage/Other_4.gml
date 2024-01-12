if (room_get_name(room) == "Room2" && !instance_exists(o_Gears)) {

for (var i = 0; i < gear_slots; i++) {
	if (gears_in[i] != -1) {
		var g = gears_in[i];
		var t = instance_create_layer(g.x_,g.y_,"Instances_1",o_Gears);
		t.level_ = g.level_;
		t.value_ = g.value_;
		t.id_ = g.id_;
		t.count_ = i;
	}
	gears_in[i] = -1;
}

}