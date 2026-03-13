instance_create_depth(0,0,0,adjust_camera)
event_inherited();
camera_set_view_target(view_camera[0], player_n_grace);
camera_set_view_speed(view_camera[0], 2, -1)
scr_text_timed("Hold on, Grace. This isn’t right!", 0.3, spr_mei_icon, 1);
scr_text_timed("Hah?", 0.6, spr_grace_fake_smile, 0);
scr_text_timed("What isn’t right is that fact that f*cking euro would even dare to confess to me!", 0.5, spr_grace_snicker, 0);