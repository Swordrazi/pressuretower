if (room_get_name(room) == "Room2") {
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(x-96,y-96,x+96,y+96,0)
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_self();

	draw_healthbar(x-96,y+128,x+96,y+(128+16),(amount_left/gear_slots)*100,c_black,c_red,c_lime,0,1,1);
}