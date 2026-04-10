if global.pause_menu{
if bookmark_select && !book_sliding{
if selected_bookmark > 0{
	selected_bookmark --;
}
}
else{
	if page == 0{
		if box_select_i > 0{
			box_select_i--;
			audio_play_sound(sfx_move_select, 1, false);
		}
	}
	else if page == 2{
		if pamphletPage>0{
			pamphletPage --;
			audio_play_sound(sfx_turn_page, 1, false);
		}
	}
	
}
}