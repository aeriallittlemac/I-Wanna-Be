event_inherited();
if array_length(lyrics) >=1 && beat < array_length(lyrics[0]){
	if lyrics[0][beat] == "ty"{
		OpponentTakeDamange();
	}
	if lyrics[0][beat] == "way"{
		OpponentTakeDamange();
	}
	
	
	
	if lyrics[0][beat] == "me"{
		RapperTakeDamange();
	}
	if lyrics[0][beat] == "book "{
		RapperTakeDamange();
	}
	
	//switch rapper
	if lyrics[0][2] == "Qui"{
		rappers_turn = false;
	}
	if lyrics[0][2] == "So "{
		rappers_turn = true;
	}
	if lyrics[0][2] == "ways "{
		rappers_turn = false;
	}
}
