character_x+=character_slide_speed;
choices[0].choice_x+=character_slide_speed;
if character_x< character_slide_target{
	alarm[3] = 1;
}
else{
	puzzle_start = true;
	var displayed_words_clone = array_create(array_length(displayed_words));
	array_copy(displayed_words_clone, 0, displayed_words, 0, array_length(displayed_words));
	for(var i=0; i<array_length(sentence); i++){
		var display_word_index = irandom(array_length(displayed_words_clone)-1);
		while (true){
			var flag = true;
			for(var j=0; j<array_length(puzzle_empty_spaces); j++){
				if display_word_index == puzzle_empty_spaces[j]||displayed_words[display_word_index] =="word"{
					flag = false;
					break;
				}
			}
			if flag{
				break;
			}
			else{
				display_word_index = irandom(array_length(displayed_words_clone)-1);
			}
		
		}
		displayed_words[display_word_index] = "word";
		show_debug_message("display word index"+string(display_word_index));
		
	}
	var sentence_index = 0;
	var sentence_puzzle_index_list = array_create(0);
	var puzzle_answer_index_list = array_create(0);
	for(var i=0; i<array_length(displayed_words); i++){
		if displayed_words[i] == "word"{
			displayed_words[i] = sentence[sentence_index];
			show_debug_message(displayed_words[i]);
			sentence_index++;
			array_push(sentence_puzzle_index_list,i);
		}
		
	}
	for(var i=0; i<missing_words; i++){
		 var answer_piece_index = irandom(array_length(sentence_puzzle_index_list)-1);
		 var temp = sentence_puzzle_index_list[answer_piece_index];
		 array_push(scattered_words, displayed_words[temp]);
		 array_push(puzzle_answer_index_list, temp);
		 array_delete(sentence_puzzle_index_list, answer_piece_index, 1);
	}
	show_debug_message(scattered_words);
	for(var i=0; i<array_length(random_words);i++){
		array_push(scattered_words, random_words[i]);	
	}
	
	var scattered_words_count = array_length(scattered_words);
	
	for(var i=0; i<scattered_words_count; i++){
		var rand_scattered_piece = irandom(array_length(scattered_words)-1);
		var inst = instance_create_depth(scattered_pieces_x+i*(scatter_pieces_padding), scattered_pieces_y, depth-1, obj_puzzle);
		inst.puzzle_piece_sprite = puzzle;
		var flag = false;
		for(var j=0; j<missing_words; j++){
			if scattered_words[rand_scattered_piece] == displayed_words[puzzle_answer_index_list[j]]{
				displayed_missing[puzzle_answer_index_list[j]] = true;
				inst.puzzle_index = puzzle_answer_index_list[j];
				flag = true;
				break;
			}
		}
		if !flag{
			var flag2 = false;
			while(true){
				var rand_puzzle_piece = irandom(array_length(displayed_words)-1);
				if string_length(displayed_words[rand_puzzle_piece])<1{
					for(var j=0; j<array_length(puzzle_empty_spaces); j++){
						if rand_puzzle_piece != puzzle_empty_spaces[j]{
							show_debug_message(displayed_words[rand_puzzle_piece]);
							inst.puzzle_index = rand_puzzle_piece;
							show_debug_message(rand_puzzle_piece);
							flag2 = true;
							break;
						}

					}
				}
				else{
					continue;
				}
				if flag2{
					break;
				}
			}
		}
		inst.puzzle_word = scattered_words[rand_scattered_piece];
		inst.piece_index = i;
		
		
		
		array_delete(scattered_words, rand_scattered_piece, 1);
	}
		
	
			
	
	alarm[3] = -1;
}