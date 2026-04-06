if bookmark_select && !book_sliding{
if selected_bookmark < 2{
	selected_bookmark ++;
}
}
else{
	if page == 0{
		if box_select_i < hint_columns-1{
			box_select_i++;
			audio_play_sound(sfx_move_select, 1, false);
		}
	}
	else if page ==2{
		if pamphletPage<array_length(obj_npc_manager.npcs)-1{
			pamphletPage++;
			audio_play_sound(sfx_turn_page, 1, false);
		}
	}
	
}
