/*
if (room_get_name(room) == "Room2" && !instance_exists(o_Gears)) {
for (var i = 0; i < o_GearSlot.gear_slots; i++) {
	if (o_GearSlot.gears_in[i][o_GearSlot.current_item] != -1) {
		var g = o_GearSlot.gears_in[i][o_GearSlot.current_item];
		var t = instance_create_layer(g.x_,g.y_,"Instances_1",o_Gears);
		t.level_ = g.level_;
		t.value_ = g.value_;
		t.id_ = g.id_;
		t.count_ = i;
	}
	o_GearSlot.gears_in[i][o_GearSlot.current_item] = -1;
}

}