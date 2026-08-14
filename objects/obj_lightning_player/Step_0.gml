right_key = keyboard_check(MOVE_RIGHT);
left_key = keyboard_check(MOVE_LEFT);
up_key = keyboard_check(MOVE_UP);
down_key = keyboard_check(MOVE_DOWN);

// 1. Get the raw input direction vectors
var _hmove = right_key - left_key;
var _vmove = down_key - up_key;

// 2. If there is any movement input, normalize it
if (_hmove != 0 || _vmove != 0) {
    // Get the angle of movement based on keys pressed
    var _dir = point_direction(0, 0, _hmove, _vmove);
    
    // Break that angle back down into perfect X and Y components (lengths between -1 and 1)
    var _length_x = lengthdir_x(1, _dir);
    var _length_y = lengthdir_y(1, _dir);
    
    // Apply speed perfectly uniform in all directions
	
    x += _length_x * player_speed;
    y += _length_y * player_speed;
	if x > RESOLUTION_W - x_border_margins || x < x_border_margins{
		x -= _length_x * player_speed
	}
	
	if y > y_bottom_border || y < y_top_border_{
		y -= _length_y * player_speed
	}
}

