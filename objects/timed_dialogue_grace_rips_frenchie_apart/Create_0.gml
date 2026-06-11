event_inherited();

game_camera_change_settings(obj_grace, 1);
move_to_pos(1, 0, 705, obj_player.y);

scr_text_timed("Hold on, Grace. This isn't right!", 0.3, spr_mei_portrait_default, 1);
//debug_skip("sewing_club_second_day_debug", function() {
	scr_text_timed("Hah?", 0.6, spr_grace_portrait_default, 0);
	scr_text_timed("What isn't right is that fact that f*cking euro would even dare to confess to me!", 0.5, spr_grace_snicker, 0);
//});
