if (lock_ == false) {
	draw_self();
	draw_sprite(o_Storeplace.item_database[id_].item_sprite,0,x+32,y+32)
	draw_text(x,y,string(left_) + "/" + string(o_Storeplace.item_database[id_].item_belt))
}