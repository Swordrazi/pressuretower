var i = true;
if (instance_place(x,y+spd,o_Throwables)) {
	if (instance_place(x,y+spd,o_Throwables).on == true) {
		i = false;	
	}
}
if (y+spd+16 < room_height && i == true && held_ == false) {
	spd += 0.25;
} else {
	spd = 0;	
}

if (held_ == true) {
	x = mouse_x;
	y = mouse_y;
}