if (unlock == true) {
	draw_self();
	draw_sprite(spr_paper,false,x+32*image_xscale,y+32*image_yscale)
}

if (activated_ == true) {
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_color(c_white);
}