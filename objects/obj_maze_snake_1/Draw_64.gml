
for (var i = 0; i < array_length(snake_strip_x); i++)
{
    var sx = snake_strip_x[i];
    var sy = snake_strip_y[i];
    var dir = snake_strip_dir[i];
    var len = snake_strip_length[i];

    var ex = sx - lengthdir_x(len, dir);
    var ey = sy - lengthdir_y(len, dir);

    var draw_x = ex * scale_x;
    var draw_y = ey * scale_y;

    var draw_w = len * scale_x;
    var draw_h = snake_scale * scale_y;

	
	
    draw_sprite_ext(
        spr_maze_wall,
        0,
        draw_x,
        draw_y,
        draw_w / sprite_get_width(spr_maze_wall),
        draw_h / sprite_get_height(spr_maze_wall),
        dir,
        c_white,
        1
    );
}