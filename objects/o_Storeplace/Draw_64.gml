draw_sprite(spr_paper,false,800*2,32*2);
draw_set_font(font1);
draw_text(824*2,32*2,item_database[0].item_amount);

if (item_database[1].item_unlock == true) {
	draw_sprite(spr_wood,false,800*2,64*2);
	draw_text(824*2,64*2,item_database[1].item_amount);
}