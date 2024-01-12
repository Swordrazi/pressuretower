// Inherit the parent event
event_inherited();

if (instance_place(x,y,o_GearSlot) && count_ != -1) {
	o_GearSlot.gears_in[count_][o_GearSlot.current_item] = -1;
}

if (instance_place(x,y,o_GearStorage) && count_ != -1) {
	o_GearStorage.gears_in[count_] = -1;
}
