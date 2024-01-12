if (countdown == 0 && unlock == true && on == true) {
	var description = "ERROR";
	switch(id_) {
		case 0:
			description = "ERRORRRRRRRRRRRRRRRRRRR\nUNO\nDOS\nTRES";
		break;
		case 1:
			description = "Charge the Press by clicking on it. \nIt activates once it is fully maxed out.";
		break;
		case 2:
			description = "Restock the belt by clicking on it. \nYou can only restock once you have fully emptied the previous stock.";
		break;
		case 3:
			description = "Every " + string(round(o_Autoclicker.auto_crush_speed/fps)) + " second(s), the Press will charge by " + string(o_Autoclicker.auto_crush) + ".";
		break;
		case 4:
			description = "Increases the quality of the paper, causing it to become stronger, \nbut give more paper!\nStrength: " + string(o_Storeplace.item_database[0].item_crushing_power) + "\nValue: " + string(o_Storeplace.item_database[0].item_value);
		break;
		case 5:
			description = "Paper is getting boring, time to get a better resource.";
		break;
		case 6:
			description = "The amount of Wood you have, increases the speed of the Press,\n but it strengthens the Wood. \nThe increase is: " + string(o_Autoclicker.auto_crush_woodupg*o_Storeplace.item_database[1].item_amount) + "\nStrength: " + string(o_Storeplace.item_database[1].item_crushing_power);
		break;
		case 7:
			description = "The paper will lose a bit of its quality, making it weaker!\nStrength: " + string(o_Storeplace.item_database[0].item_crushing_power) + "\nThe price of this upgrade scales with 'Quality Paper'";
		break;
		case 8:
			description = "Increases the quality of the Wood, causing it to become stronger, \nbut give more Wood!\nStrength: " + string(o_Storeplace.item_database[1].item_crushing_power) + "\nValue: " + string(o_Storeplace.item_database[1].item_value);
		break;
		case 9:
			description = "Your clicks will Pressure more with this one!\nClick Strength: " + string(o_Storeplace.clicking_power);
		break;
		case 10:
			description = "Upon using the Press on Paper, you might be able to take\nout some wood from it!\nChance: " + string(level*10) + "%";
		break;
		case 11:
			description = "You hate restocking, don't you?";
		break;
		case 12:
			description = "Your clicks will Pressure more with this one!\nMultiplies by: " + string(level+1) + "\nClick Strength: " + string(o_Storeplace.clicking_power);
		break;
		case 13:
			description = "Unlock the Restocker... whatever it is.";
		break;
		case 14:
			description = "Get 1 More Wood Stock.";
		break;
		case 15:
			description = "Gears... the heart of materials.";
		break;
		case 16:
			description = "Adds 1 XP to Pressurize";
		break;
		case 17:
			description = "Adds 2 XP to Pressurize";
		break;
		case 18:
			description = "Strength = Value\nEvery 100 Strength a Material has, it gains 1 Value.";
		break;
		case 19:
			description = "Reset Auto Pressing, but all of its levels are kept in this upgrade.\nThe price of this upgrade never changes.";
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