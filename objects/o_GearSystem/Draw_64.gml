if (countdown == 0) {
	var description = "ERROR";
	switch(id_) {
		case 0:
			description = "ERRORRRRRRRRRRRRRRRRRRR\nUNO\nDOS\nTRES";
		break;
		case 1:
			description = "Strength Gear [" + string(level_) + "]\nBuffs the Strength of the Resource by: " + string(value_);
		break;
		case 2:
			description = "Critical Gear [" + string(level_) + "]\nBuffs Critical Clicking Chance by: " + string(value_);
		break;
		case 3:
			description = "Clicking Gear [" + string(level_) + "]\nBuffs Clicking Strength by: " + string(value_);
		break;
		case 4:
			description = "Gear of Value [" + string(level_) + "]\nBuffs the Value of the Material by: " + string(value_);
		break;
	}

	var descriptions = string_split(description,"\n")

	var _length = 0;
	var _texts_amount = array_length(descriptions)

	for (var i = 0; i < _texts_amount; i++) {
		if (_length < string_length(descriptions[i])) {
			_length = string_length(descriptions[i]);
		}
	}
	
	draw_set_color(c_black);
	var m_x = window_mouse_get_x();
	var m_y = window_mouse_get_y();
	draw_rectangle(m_x,m_y,m_x+_length*font_get_size(font2),m_y+_texts_amount*2*font_get_size(font2), false)
	draw_set_color(c_white);
	draw_set_font(font2);
	draw_text(m_x,m_y,description);
	draw_set_font(font1);
}