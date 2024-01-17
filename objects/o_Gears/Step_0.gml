// Inherit the parent event
event_inherited();

//PUTTING GEARS INTO GEAR SLOTS
if (instance_place(x,y,o_GearSlot) && held_ == false) {
	if (count_ > -1) {
		spd = 0;
		o_GearSlot.gears_in[count_][o_GearSlot.current_item] = new o_GearSlot.gear(x,y,id_,level_,value_);
		image_angle++;
		on = false;
	} else {
		for (var i = 0; i < o_GearSlot.gear_slots; i++) {
			if (o_GearSlot.gears_in[i][o_GearSlot.current_item] == -1) {
				count_ = i;
				break;
			}
		}
	}
// PUTTING GEARS INTO THE STORAGE
} else if (instance_place(x,y,o_GearStorage) && held_ == false) {
	if (count_ > -1) {
		spd = 0;
		o_GearStorage.gears_in[count_] = new o_GearStorage.gear(x,y,id_,level_,value_);
		image_angle += 0.25;
		on = false;
	} else {
		for (var i = 0; i < o_GearStorage.gear_slots; i++) {
			if (o_GearStorage.gears_in[i] == -1) {
				count_ = i;
				break;
			}
		}
	}
// SCRAPPING GEARS
} else if (instance_place(x,y,o_ScrapBin) && held_ == false) {
	instance_destroy();
	global.xp_ += level_/10;
} else {
	count_ = -1;
	image_angle = 0;
	on = true;
}

y += spd; // MAKING THEM FALL