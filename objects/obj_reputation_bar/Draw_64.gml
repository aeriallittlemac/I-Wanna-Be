draw_set_font(reoutation_font);
if room == bobbys_room{
draw_text_transformed_colour(10*minimap_scale, 110*minimap_scale, "Reputation", 1, 1, 0, #22B14C, #22B14C, #22B14C, #22B14C, 1);
}
draw_sprite_ext(IWB_UI_reputation_bar, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
draw_healthbar(25*minimap_scale, 128*minimap_scale, 245*minimap_scale, 134*minimap_scale, cur_val, #093315, c_maroon, #22B14C, 0, true, false);