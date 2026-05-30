if !game_over{
	if selected_index > 2{
		if squares[selected_index-3] ==0{
			squares[selected_index-3] = squares[selected_index];
			squares[selected_index] = 0;
		}
	}
	if selected_index < 6{
		if squares[selected_index+3] ==0{
			squares[selected_index+3] = squares[selected_index];
			squares[selected_index] = 0;
		}
	}
	if selected_index%3 > 0{
		if squares[selected_index-1] ==0{
			squares[selected_index-1] = squares[selected_index];
			squares[selected_index] = 0;
		}
	
	}
	if selected_index%3 < 2{
		if squares[selected_index+1] ==0{
			squares[selected_index+1] = squares[selected_index];
			squares[selected_index] = 0;
		}
	}

	var vent_score = 0;
	for(var i=0; i<9; i++){
		if squares[i]-1 == i{
			vent_score ++;
		}
	}
	if vent_score = 8{
		game_over = true;
		alarm[0] = 100;
	}
}