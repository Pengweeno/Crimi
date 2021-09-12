function reset_variables() {
	left = 0;
	right = 0;
	up = 0;
	down = 0;
}

function get_input() {
	if keyboard_check(ord("A")) left = 1;
	if keyboard_check(ord("D")) right = 1;
	if keyboard_check(ord("W")) up = 1;
	if keyboard_check(ord("S")) down = 1;
}

function collision() {
	var _tx = x;
	var _ty = y;
	
	x = xprevious;
	y = yprevious;
	
	var _disx = abs(_tx - x);
	var _disy = abs(_ty - y);
	
	repeat(_disx) {
		if !place_meeting(x + sign(_tx - x), y, obj_wall) x += sign(_tx - x);
	}
	repeat(_disy) {
		if !place_meeting(x, y + sign(_ty - y), obj_wall) y += sign(_ty - y);
	}
}