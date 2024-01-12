switch (held_) {
	case true:
		held_ = false;
	break;
	case false:
		held_ = true;
	break;
}

if (instance_place(x,y,o_Throwables)) {
	var i = instance_place(x,y,o_Throwables);
	if (i.held_ == true) {
		i.held_ = false;
		i.x -= 10;
	}
}