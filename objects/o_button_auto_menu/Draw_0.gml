if (activated_ == true) {
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_color(c_white);
}

if (unlock == true) {
	draw_self();
	var i = 0.75;
	draw_sprite_ext(spr_bg_conveyorbelt,false,x+(32*i*image_xscale)-8,y+(32*i*image_yscale)-8,i*image_xscale,i*image_xscale,0,c_white,1)
}