draw_set_font(day_font);
if global.day == 2{
draw_text_transformed_colour(day_x*minimap_scale, day_y*minimap_scale, "MONDAY", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
}
else if global.day == 3{
draw_text_transformed_colour(day_x*minimap_scale, day_y*minimap_scale, "TUESDAY", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
}
else if global.day == 4{
draw_text_transformed_colour(day_x*minimap_scale, day_y*minimap_scale, "WEDNESDAY", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
}
else if global.day == 5{
draw_text_transformed_colour(day_x*minimap_scale, day_y*minimap_scale, "THURSDAY", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
}
else if global.day == 6{
draw_text_transformed_colour(day_x*minimap_scale, day_y*minimap_scale, "FRIDAY", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
}