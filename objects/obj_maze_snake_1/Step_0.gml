/// ===============================
/// INPUT (4-direction snake logic)
/// ===============================


var new_dir = snake_dir;
switch(snake_dir){
case DIR_RIGHT:
	if snake_x > ai_target_x-3{
		if snake_y > ai_target_y{
			new_dir = DIR_UP;
		}
		else{
			new_dir = DIR_DOWN;
		}
		//show_debug_message(new_dir);
	}
break;
case DIR_UP:
	if snake_y < ai_target_y{
		if snake_x > ai_target_x{
			new_dir = DIR_LEFT;	
		}else{
			new_dir = DIR_RIGHT;	
		}
		//show_debug_message(new_dir);
	}
break;
case DIR_LEFT:
	if snake_x < ai_target_x{
		if snake_y > ai_target_y{
			new_dir = DIR_UP;
		}
		else{
			new_dir = DIR_DOWN;
		}
		//show_debug_message(new_dir);
	}
break;
case DIR_DOWN:
	if snake_y > ai_target_y-3{
		if snake_x > ai_target_x{
			new_dir = DIR_LEFT;	
		}else{
			new_dir = DIR_RIGHT;	
		}
		//show_debug_message(new_dir);
	}
break;

}

// prevent instant reverse (classic snake rule)
if (abs(new_dir - snake_dir) != 180)
{
    if (new_dir != snake_dir)
    {
        snake_dir = new_dir;

        // create new strip at turn point
        array_insert(snake_strip_x, 0, snake_x);
        array_insert(snake_strip_y, 0, snake_y);
        array_insert(snake_strip_dir, 0, snake_dir);
        array_insert(snake_strip_length, 0, 0);
    }
}
else{
	new_dir = snake_dir;
}


/// ===============================
/// MOVE HEAD (SMOOTH)
/// ===============================

var dx = lengthdir_x(snake_speed, snake_dir);
var dy = lengthdir_y(snake_speed, snake_dir);

snake_x += dx;
snake_y += dy;



if abs(dx) > 0{
	if (place_meeting(snake_x+dx-3*(dx>0), snake_y-(3*(dy>0)), obj_maze_wall))
	{
	    instance_destroy();
	}
}
else{

if (place_meeting(snake_x, snake_y+dy-(3*(dy>0)), obj_maze_wall))
{
    instance_destroy();
}
}


snake_strip_x[0] = snake_x;
snake_strip_y[0] = snake_y;

snake_strip_length[0] += snake_speed;

// ===============================
// TRIM TAIL (KEEP LENGTH CONSTANT)
// ===============================

var total = 0;

for (var i = 0; i < array_length(snake_strip_length); i++)
{
    total += snake_strip_length[i];
}

while (total > snake_total_length)
{
    var last = array_length(snake_strip_length) - 1;

    var remove = min(total - snake_total_length, snake_strip_length[last]);

    snake_strip_length[last] -= remove;
    total -= remove;

    if (snake_strip_length[last] <= 0)
    {
        array_pop(snake_strip_x);
        array_pop(snake_strip_y);
        array_pop(snake_strip_dir);
        array_pop(snake_strip_length);
    }
}