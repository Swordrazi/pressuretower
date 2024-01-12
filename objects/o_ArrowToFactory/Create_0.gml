base_y = y;
dir = 0;

if (room_get_name(room) == "Room2") {
	dir = 1;
	image_angle = 180;
}
if (room_get_name(room) == "Room3") {
	dir = 1;
	image_angle = 270;
}