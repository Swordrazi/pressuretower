if (unlock == true) {
	switch(activated_) {
		case true:
			activated_ = false;
			o_button_paper.on = false;
		break;
		case false:
			activated_ = true;
			o_button_paper.on = true;
		break;
	}

	if (o_button_auto_menu.activated_ == true) {
		o_button_auto_menu.activated_ = false;
		o_button_auto.on = false;
	}
	if (o_button_wood_menu.activated_ == true) {
		o_button_wood_menu.activated_ = false;
		o_button_wood.on = false;
	}
}