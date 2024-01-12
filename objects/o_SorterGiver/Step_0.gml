var id__ = id_;

left_ = o_Storeplace.item_database[id_].item_belt;

if (left_ > 0) {
	lock_ = false;	
}

for (var i = 0; i < array_length(global.order); i++) {
	if (global.order[i] == id_) {
		left_--;	
	}
}
