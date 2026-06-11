event_inherited();
original_bgm_gain = audio_sound_get_gain(global.bgm);
audio_sound_gain(global.bgm, 0, 0);
if !audio_is_playing(sewing_club_ashley){
audio_play_sound(sewing_club_ashley, 1, true);
}
audio_sound_gain(sewing_club_ashley, 0.4, 0);
if global.day == 2 && global.game_time == "3:30 pm"{
	if !global.storylines.Sewing_Club.Day_Two.talked_to.ashley{
		scr_text("*blushes", spr_ashley_portrait_default, 0);
		scr_text("N-n-nice to m-meet you, sempaai!", spr_ashley_portrait_default, 0);
		scr_text("I come from a lineage of \"Carpenter\"s, that's my family name,", spr_ashley_portrait_default, 0);
		scr_text("but if you want, you can call me Ah–", spr_ashley_portrait_default, 0);
		scr_text("ah- ", spr_ashley_portrait_default, 0);
		scr_text("*blushes some more", spr_ashley_portrait_default, 0);
		scr_text("Ashley-chan...", spr_ashley_portrait_default, 0);
		scr_text("Methinks there is something wrong with her brain.");
	}
	else{
		scr_text("Sempaai!", spr_ashley_portrait_default, 0);
	}
}
else if global.day == 3 && global.game_time == "3:30 pm"{
	obj_player.face = LEFT;
	obj_player.sprite_index = obj_player.sprite[LEFT];
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			if !global.storylines.Sewing_Club.Day_Three.talked_to.ashley{
				scr_text("*scribbling away", spr_ashley_portrait_default, 0);
				scr_text("S-sempai, I'm sorta busy right now.", spr_ashley_portrait_default, 0);
				scr_text("If-if you want, we could go on a da-agh!", spr_ashley_portrait_default, 0);
				scr_text("No, I mean...", spr_ashley_portrait_default, 0);
				scr_text("Please, stop it. I'm begging you.");
			}
			else{
				scr_text("*mumbling away", spr_ashley_portrait_default, 0);
			}
			
		}
		else{
			scr_text("...", spr_ashley_portrait_default, 0);
			scr_text("*She feels bad for you, but doesn't know what to say.", spr_ashley_portrait_default, 0);
		}
	
	}
	else{
		if !global.storylines.Sewing_Club.Day_Three.talked_to.ashley{
			scr_text("You notice Ashley has been writing on a bunch of individual sheets of composition paper.");
			scr_text("You tap on her shoulder, catching her by surprise.");
			scr_text("*Skips a concerning length in the opposite direction.", spr_ashley_portrait_default, 0);
			scr_text("*Unnecessarily surprised", spr_ashley_portrait_default, 0);
			scr_text("You're b-back, s-senpai?", spr_ashley_portrait_default, 0);
			scr_text("I'm so g-glad to s-see y-", spr_ashley_portrait_default, 0);
			scr_text("*Gasp* Is that a l-l-l-letter... For me??!!", spr_ashley_portrait_default, 0);
			scr_text("*Turns around* Ah! My heart is in my throat… My chest is pounding!", spr_ashley_portrait_default, 0);
			scr_text("*Gasp* Is that a l-l-l-letter... For me??!!", spr_ashley_portrait_default, 0);
			scr_text("What could be in that letter... Could it be... A confession?!", spr_ashley_portrait_default, 0);
			scr_text("This is all too fast...", spr_ashley_portrait_default, 0);
			scr_text("All of that was... very audible.");
		}
		else{
			scr_text("*Breathing heavily", spr_ashley_portrait_default, 0);
		}
		
		
	}
}
else if global.day == 4 && global.game_time == "3:30 pm"{
	scr_text("Someone seems to not be here...")
	scr_text("You can still smell the faint fragrance of books...")
}
else{
	scr_text("*Too nervous to look at you", spr_ashley_portrait_default, 0);
}