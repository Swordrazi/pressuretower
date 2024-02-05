switch(id_) {
	case 0:
		text = "ERRORRRRRRRRRRRRRRRRRRR\nUNO\nDOS\nTRES";
	break;
	case 1:
		text = "Charge Press\n" + string(global.crush_power) + "/" + string(global.maximum_crush_needed);
	break;
	case 2:
		text = "Restock\n" + string(o_spawner.amount_) + "/10";
	break;
	case 3:
		cost = 15+level*round(level/2);
		text = "Auto Pressing [" + string(level) + "]\nCost: " + string(cost) + " Paper";
	break;
	case 4:
		cost = (20+level)*(2+level*4);
		text = "Quality Paper [" + string(level) + "]\nCost: " + string(cost) + " Paper";
	break;
	case 5:
		cost = 124;
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
		cost = 100;
		if (level < 1) {
			text = "Auto Restocking [" + string(level) + "/1]\nCost: " + string(cost) + " Wood";
		} else if (level == 1) {
			text = "Auto Restocking [ON]";
		} else {
			text = "Auto Restocking [OFF]";
		}
	break;
	case 12:
		cost = 250+(level+2)*(level+2)*(level+2);
		text = "Paper Pressure Clicking [" + string(level) + "]\nCost: " + string(cost) + " Paper";
	break;
	case 13:
		cost = 1000;
		text = "Unlock The Restocker [" + string(level) + "/1]\nCost: " + string(cost) + " Paper";
	break;
	case 14:
		cost = 10*(10*(level*level+1));
		text = "Wood Stock [" + string(level) + "/9]\nCost: " + string(cost) + " Wood";
	break;
	case 15:
		cost = 1;
		text = "Gearing (Up) [" + string(level) + "/1]\nCost: " + string(cost) + " Paper";
	break;
	case 16:
		cost = 50*((level+1)*(level+1));
		text = "Pressurize - Paper [" + string(level) + "]\nCost: " + string(cost) + " Paper";
	break;
	case 17:
		cost = 10*((level+1)*(level+1));
		text = "Pressurize - Wood [" + string(level) + "]\nCost: " + string(cost) + " Wood";
	break;
	case 18:
		cost = 750;
		text = "Pressure Value [" + string(level) + "/1]\nCost: " + string(cost) + " Wood";
	break;
	case 19:
		cost = 1000;
		text = "Pressure Storage [" + string(level) + "]\nCost: " + string(cost) + " Paper";
	break;
	case 20:
		cost = (25+level)*(20+level)*(10+level*level);
		text = "Paper Polishing [" + string(level) + "/20]\nCost: " + string(cost) + " Paper";
	break;
}

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

if (countdown > 0 && countdown_do == true) {
	countdown--;	
}

if (unlock == false) {
	if (lock == -1 || o_Storeplace.button_unlock[lock] == true) {
		unlock = true;	
	}
}

/*
if (prestige == false) {
	image_index = 1;	
} else {
	image_index = 0;	
}