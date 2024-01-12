switch(window_get_fullscreen()) {
	case true:
		window_set_fullscreen(0);
	break;
	case false:
		window_set_fullscreen(1);
	break;
}