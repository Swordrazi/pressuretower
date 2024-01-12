if (dir == 0) {
	y += 0.25;	
}
if (dir == 1) {
	y -= 0.25;	
}

if (y < base_y-5) {
	dir = 0;	
} 
if (y > base_y+5) {
	dir = 1;	
}