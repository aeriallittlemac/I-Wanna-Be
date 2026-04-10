character_x+=character_slide_speed;
choices[0].choice_x+=character_slide_speed;
if character_x< character_slide_target{
	alarm[3] = 1;
}
else{
	puzzle_start = true;
	var sentence_length = array_length(sentence);
	for(var i=0; i<sentence_length-missing_words; i++){
		var sentence_word_index = irandom(array_length(sentence)-1);
		var display_word_index = irandom(array_length(displayed_words)-1);
		while (true){
			var flag = true;
			for(var j=0; j<array_length(puzzle_empty_spaces); j++){
				if display_word_index == puzzle_empty_spaces[j]{
					flag = false;
					break;
				}
			}
			if flag{
				break;
			}
			else{
				display_word_index = irandom(array_length(displayed_words)-1);
			}
		
		}
		displayed_words[display_word_index] = sentence[sentence_word_index];
		show_debug_message(sentence[sentence_word_index]);
		array_delete(sentence, sentence_word_index, 1);
		
	}

		
		for(var i=0; i<missing_words; i++){
			var rand_piece = irandom(12-1);
			while (true){
			var flag = true;
			for(var j=0; j<array_length(puzzle_empty_spaces); j++){
				if rand_piece == puzzle_empty_spaces[j]{
					flag = false;
					break;
				}
			}
			if flag&&displayed_words[rand_piece] ==""{
				break;
			}
			else{
				rand_piece = irandom(12-1);
			}
		
			}
		
			displayed_missing[rand_piece] = true;
		}
			for (var i=0; i<array_length(sentence); i++){
				array_push(scattered_words, sentence[i]);
			}
			for (var i=0; i<array_length(random_words); i++){
				array_push(scattered_words, random_words[i]);
			}
			var scattered_words_length = array_length(scattered_words);
			var displayed_missing_clone = array_create(0);
			
			array_copy(displayed_missing_clone, 0, displayed_missing, 0, array_length(displayed_missing));
			show_debug_message("displayed_missing_clone:");
			show_debug_message(displayed_missing_clone);
			for(var i=0; i<scattered_words_length; i++){
				var rand_scattered_piece = irandom(array_length(scattered_words)-1);
				var inst = instance_create_depth(scattered_pieces_x+i*(scatter_pieces_padding), scattered_pieces_y, depth-1, obj_puzzle);
					inst.puzzle_piece_sprite = puzzle;
					inst.puzzle_word = scattered_words[rand_scattered_piece];
					inst.piece_index = i;
					var missing_word_flag = false
					for( var j=0; j<array_length(sentence); j++){
						if scattered_words[rand_scattered_piece] == sentence[j]{
							missing_word_flag = true;
							break;
						}
					}
					
					if missing_word_flag{
						
						for(var j=0; j<array_length(displayed_missing_clone); j++){
							if displayed_missing_clone[j]{
								inst.puzzle_index = j;
								displayed_missing_clone[j] = false;
								show_debug_message(j);
								break;
							}
						}
					}
					else{
						inst.puzzle_index = irandom(12-1);
					}
					
					
					
				array_delete(scattered_words, rand_scattered_piece, 1);
			}
			
	
	alarm[3] = -1;
}