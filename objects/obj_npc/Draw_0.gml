draw_self();
if talk_priority{
draw_sprite_ext(spr_interaction_priority, 0, x, y-40, 1, 1, 0, c_white, icon);
}
else{
draw_sprite_ext(spr_interaction, 0, x, y-35, 1, 1, 0, c_white, icon && !obj_player.player_frozen);
}