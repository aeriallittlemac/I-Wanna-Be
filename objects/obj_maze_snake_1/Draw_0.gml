draw_set_color(c_red);

// draw strip skeleton (for debugging collisions)
for (var i = 0; i < array_length(snake_strip_x); i++)
{
    var sx = snake_strip_x[i];
    var sy = snake_strip_y[i];
    var dir = snake_strip_dir[i];
    var len = snake_strip_length[i];

    var ex = sx - lengthdir_x(len, dir);
    var ey = sy - lengthdir_y(len, dir);

    draw_line(sx, sy, ex, ey);
}

// head marker
draw_circle(snake_x, snake_y, 3, false);