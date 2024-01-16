randomize();

if (global.xp_ > 0) {
	var i = instance_create_layer(x,y-32,"Instances_1",o_Gears);
	if (prestige_ = false) {
		i.id_ = 4;
		prestige_ = true;
	} else {
		i.id_ = irandom_range(1,4);
	}
	i.level_ = irandom_range(1+floor(global.xp_/1.5),global.xp_);

	global.xp_ -= i.level_;

	if (global.xp_ > 0) {
		alarm_set(0,10);
	}
}