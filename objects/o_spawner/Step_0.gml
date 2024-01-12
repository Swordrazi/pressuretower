if (spawn_cooldown == false && amount_ < 10 && instance_number(o_item) < 10) {
	spawn_cooldown = true;
	alarm_set(0,spawn_time);
	var i = instance_create_layer(x,y,"Instances",o_item);
	i.id_ = global.order[amount_];
	amount_++;
}

if (amount_ == 10 && find_button(11).level == 1) {
	amount_ = 0;	
}