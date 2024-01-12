switch(id_) {
	case 1:
		min_value_ = level_/10;
		max_value_ = min_value_*2*floor(level_/10);
	break;
	case 2:
		min_value_ = level_/10;
		max_value_ = min_value_+(level_/9);
	break;
	case 3:
		min_value_ = level_/10;
		max_value_ = min_value_*(level_/10)^2;
	break;
	case 4:
		min_value_ = level_/200;
		max_value_ = min_value_*floor(level_/10);
	break;
}

value_ = (1-range_)*min_value_+(range_*max_value_);
alarm_set(0,60);


