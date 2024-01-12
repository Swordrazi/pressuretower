spawn_time = 60;
spawn_cooldown = false;

amount_ = 0;

global.order = array_create(10);

for (var i = 0; i < array_length(global.order); i++) {
	global.order[i] = 0;	
}