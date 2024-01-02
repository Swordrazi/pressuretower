switch(id_) {
	case 0:
		og_text = "ERRORRRRRRRRRRRRRRRRRRR\nUNO\nDOS\nTRES";
	break;
	case 1:
		text = "Charge Press\n" + string(global.crush_power) + "/" + string(global.maximum_crush_needed);
	break;
	case 2:
		text = "Restock\n" + string(o_spawner.amount_) + "/10";
	break;
	case 3:
		cost = 15+level*level;
		text = "Auto Pressing [" + string(level) + "]\nCost: " + string(cost) + " Paper";
	break;
	case 4:
		cost = 20+level*(20+level);
		text = "Quality Paper [" + string(level) + "]\nCost: " + string(cost) + " Paper";
	break;
	case 5:
		cost = 200;
		text = "Unlock Wood [" + string(level) + "/1]\nCost: " + string(cost) + " Paper";
	break;
	case 6:
		cost = 10+level*(level*10);
		text = "Wood Pressure [" + string(level) + "]\nCost: " + string(cost) + " Wood";
	break;
	case 7:
		cost = 5+level*(level*find_button(4).level);
		text = "Dequaliting Paper [" + string(level) + "]\nCost: " + string(cost) + " Wood";
	break;
	case 8:
		cost = 100+level*level*15;
		text = "Quality Wood [" + string(level) + "]\nCost: " + string(cost) + " Paper";
	break;
	case 9:
		cost = 5+level*level*5;
		text = "Pressure Clicking [" + string(level) + "]\nCost: " + string(cost) + " Wood";
	break;
	case 10:
		cost = 30+level*level*level*3;
		text = "Wooden Paper [" + string(level) + "/10]\nCost: " + string(cost) + " Wood";
	break;
	case 11:
		cost = 125;
		if (level < 1) {
			text = "Auto Restocking [" + string(level) + "/1]\nCost: " + string(cost) + " Wood";
		} else if (level == 1) {
			text = "Auto Restocking [ON]";
		} else {
			text = "Auto Restocking [OFF]";
		}
	break;
}

if (text != og_text) {
	texts = string_split(text,"\n")

	length = 0;
	texts_amount = array_length(texts)

	for (var i = 0; i < texts_amount; i++) {
		if (length < string_width(texts[i])) {
			length = string_width(texts[i]);
		}
	}

	image_xscale = length*2/(font_get_size(font1)*font_get_size(font1));
	image_yscale = texts_amount*4/font_get_size(font1);
}

if (countdown > 0 && countdown_do == true) {
	countdown--;	
}

if (unlock == false) {
	if (lock == -1 || o_Storeplace.button_unlock[lock] == true) {
		unlock = true;	
	}
}