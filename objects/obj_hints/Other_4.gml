ui_scale = room_get_viewport(room, 0)[3] / RESOLUTION_W;
highlight_offset = (sprite_get_width(spr_hint_box) * box_scale - sprite_get_width(spr_hint_highlight) * highlight_scale) / 2 * ui_scale;

viewport_width = display_get_gui_width();
viewport_height = display_get_gui_height();
