event_inherited();

function _day_4_truth_dare_n_deny() {
	obj_player.player_frozen = true;
	
	obj_scribble.textbox(
		"What? What are you here for? The day is over. Aren't you gonna go back to your... dirty, unkempt room?",
		"Brooklyn", spr_brooklyn_portrait_disgusted
	);
	obj_scribble.textbox_unnamed(
		"You mention that you've heard about the news...the rumors of Gambino cheating on her.",
	);
	obj_scribble.textbox(
		@"...[/page]And?", "Brooklyn", spr_brooklyn_portrait_default
	);
	obj_scribble.textbox_unnamed(
		"You feel like you want to stay beside her. Even if just for a little longer."
	);
	obj_scribble.textbox(
		@"*annoyed
[/page]What are you doing? Your shallow pity isn't going to get to me...",
		"Brooklyn", spr_brooklyn_portrait_default
	);
	obj_scribble.textbox(
		@"BROOKLYN ANGRILY TRYING HER BEST TO HOLD BACK TEARS, BUT FAILING
[/page]*tears slowly drip down her face
[/page][play_music,bobbys_room]...idiot...",
		"Brooklyn", spr_brooklyn_portrait_default
	);
	obj_scribble.textbox_unnamed("You ask her if she needs anything.");
	obj_scribble.textbox(
		@"*points at her phone
[/page]I don't want to ruin my phone with the disgusting residue of my unseemly tears...
[/page]Go to spotify, and search up (parody name of MCR)",
		"Brooklyn", spr_brooklyn_portrait_default
	);
	obj_scribble.textbox_unnamed("[audio_stop_all][play_music,grace_battle_theme]*cries some more");
	
	call_later(5, time_source_units_seconds, function () {
		obj_scribble.textbox_unnamed("You gently ask if you can show her a song.");
		obj_scribble.textbox(
			@"[audio_stop_all]...
[/page]Sure, I guess why not, at this point?",
			"Brooklyn", spr_brooklyn_portrait_default
		);
		obj_scribble.textbox(
			@"[play_music,date_with_grace]Hey, this...
[/page]This is actually pretty good.",
			"Brooklyn", spr_brooklyn_portrait_amused
		);
		obj_scribble.textbox_unnamed("You nod.");
		obj_scribble.textbox(
			@"You know what's funny?
[/page]I'm pretty ugly on the inside, while you're pretty ugly on the outside.",
			"Brooklyn", spr_brooklyn_portrait_proud
		);
		obj_scribble.textbox_unnamed("Ouch.");
		obj_scribble_events.exec_seconds_callbacks.cutscene_sewing_club_day_4_brooklyn_sleep_2 = function () {
			obj_brooklyn.sprite_index = spr_brooklyn_dead;
			obj_brooklyn.x += 100 - 72;
			obj_brooklyn.y += 62 - 77;
			obj_brooklyn.freeze_depth = true;
			obj_brooklyn.depth = obj_sewing_club_row_2.depth - 1; // Appear on top of table.
			call_later(3, time_source_units_seconds, _day_4_truth_dare_n_deny_conclusion);
		};
		obj_scribble.textbox(
			@"Perhaps, if us two were to be together...
[/page][exec_seconds,5,cutscene_sewing_club_day_4_brooklyn_sleep_2]We might not look half bad.",
			"Brooklyn", spr_brooklyn_portrait_default
		);
		
		// Cleanup! Do this when transitioning to the next scene.
		// obj_player.player_frozen = false;
		// obj_brooklyn.freeze_depth = false;
	});
}

function _day_4_truth_dare_n_deny_conclusion() {
	obj_player.x = 95;
	obj_player.y = 80;
	obj_scribble.textbox_unnamed(
		@"[audio_stop_all][exec_seconds,3,cutscene_sewing_club_day_4_brooklyn_sleep_3]
You stop the song on her phone and cover her up with blanket"
	);
	obj_scribble_events.exec_seconds_callbacks.cutscene_sewing_club_day_4_brooklyn_sleep_3 = function () {
		move_to_pos(0.5, 0.5, 165, 80);
		move_to_pos(0.5, 0.5, 180, 45); // Carpet preventing move from concluding.
		call_later(5, time_source_units_seconds, function () {
			obj_player.visible = false;
		});
		
		call_later(10, time_source_units_seconds, function () {
			// SINGLE SHOT OF BROOKLYN UNDER THE BLANKET
			obj_scribble.textbox(
				@"I can't believe that shabby act convinced him.
[/page][play_music,date_with_grace]He shall prove to be quite the useful tool...",
				"Brooklyn", spr_brooklyn_portrait_amused
			);
			
			obj_play_ac.start(ac_brooklyn_fin, 10, function (values) {
				global.sh_ambience = [values.ambience_r, values.ambience_g, values.ambience_b];
				with (obj_sh_light) {
					_illumination = values.illumination;
					image_blend = make_color_rgb(values.light_red, values.light_green, values.light_blue);
				}
			});
		});
	};
}

if global.day == 2{
	if !global.storylines.Sewing_Club.Day_Two.talked_to.brooklyn{
		
	}
	else{
		
	}
}
else if global.day == 3{
	
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			
		}
		else{
			
		}
	
	}
	else{
		
		global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn = true;
	}
}
else if global.day == 4{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
			_day_4_truth_dare_n_deny();
		}
		else{
			
		}
	}
	else{
		//if !global.storylines.Sewing_Club.Day_Four.talked_to.brooklyn{
			
		//}
		//else{
			
		//}
	}
}
else{
	
	
}


//obj_scribble.textbox_unnamed("[sfx_open_door]I'm opening a door. It's now open. I can do anything I want!![sfx_school_bell] School just started. I better go. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.");

//obj_scribble.textbox(
//	"[sfx_bang_door]Hello, brotha. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
//	"Wei", spr_wei_portrait_default, sfx_wei_speech
//);

//obj_scribble.textbox(
//	scribble_markdown_format(@"# Markdown
//also works, but the font needs to natively have italics and bolds for full benefit."), 
//	"Wei", spr_wei_portrait_default, sfx_wei_speech, true
//);

//obj_scribble.textbox(
//	"Lorem[red_flash] ipsum dolor sit amet[in_dialogue_force_set,false][player_move,1,1,1610,100], consectetur adipiscing elit[red_flash], sed do eiusmod tempor incididunt ut [red_flash]labore et dolore magna aliqua. [camera_shake]Ut enim ad minim veniam, quis [red_flash]nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in [red_flash]reprehenderit in voluptate velit [camera_shake]esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non [red_flash]proident, sunt in culpa qui officia deserunt mollit anim id est [in_dialogue_force_set,true]laborum.", 
//	"brooklyn", spr_brooklyn_portrait_default, sfx_grace_speech, true
//);

//obj_scribble.textbox_unnamed(
//	"[scale,2]Lorem ipsum dolor[npc_move,obj_wei,1,1,1420,100] sit amet[/], [/page][Font1]consectetur adipiscing elit[/], [/page][c_aqua]sed do eiusmod tempor incididunt ut labore et dolore magna aliqua[/c]. [/page][spr_brooklyn_portrait_default]Ut enim ad minim veniam[spr_brooklyn_portrait_default], quis nostrud exercitation ullamco laboris[spr_frenchie_portrait_default] nisi ut aliquip ex ea commodo consequat[spr_mei_portrait_default]. [/page][sfx_mission_accomplished][speed,2]Duis aute irure dolor in reprehenderit in voluptate velit esse cillum[/speed] [slant]dolore eu fugiat nulla pariatur[/slant]. [/page][wave]Excepteur sint[/wave] [shake]occaecat cupidatat[/shake] [wobble]non proident[/wobble], [pulse]sunt in[/pulse] [wheel]culpa qui[/wheel] [jitter]officia deserunt[/jitter] [blink]mollit anim[/blink] [rainbow]id est laborum.[/rainbow]", 
//	sfx_noisy_speech
//);
