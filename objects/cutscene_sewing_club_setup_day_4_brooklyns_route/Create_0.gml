obj_ashley.entityActivateArg = dialogue_ashleyseat_new;
obj_mei.entityActivateArg = dialogue_meiseat_new;

function brooklyn_walks_in() {
	if (
		!global.storylines.Sewing_Club.Day_Four.talked_to.ashley
		|| !global.storylines.Sewing_Club.Day_Four.talked_to.mei
	) {
		return;
	}

	obj_player.player_frozen = true;
	obj_scribble.async_page_delay_seconds = 5.0;
	obj_scribble.black_filter = false;
	
	player_pos_1 = [230, 80];
	move_to_pos(0.5, 0.5, player_pos_1[0], player_pos_1[1]);
	move_to_pos(0.5, 0.5, player_pos_1[0] - 1, player_pos_1[1]);
	
	call_later(5, time_source_units_seconds, function () {
		audio_stop_all();
		obj_player.x = player_pos_1[0];
		obj_player.y = player_pos_1[1];
		
		call_later(0.5, time_source_units_seconds, function () {
			obj_player.sprite_index = obj_player.sprite[UP];
			obj_mei.sprite_index = obj_mei.sprite[RIGHT];
		});
		call_later(3, time_source_units_seconds, function () {
			obj_player.sprite_index = obj_player.sprite[LEFT];
			obj_mei.sprite_index = obj_mei.sprite[DOWN];
		});
		
		teleport_npc(obj_brooklyn, school_sewing_club, 215, 40, DOWN);
		npc_wait(obj_brooklyn, 2);
		npc_move_to_pos(obj_brooklyn, 0.5, 0.5, 190, 80);
		npc_move_to_pos(obj_brooklyn, 0.5, 0.5, 60, 80);

		// Set to false for debugging.
		var async = false;
		
		obj_scribble.textbox("Greetings.", "Brooklyn", noone,, async);
		obj_scribble.textbox(
			@"[npc_move,obj_ashley,0.5,0.5,45,120][npc_move,obj_ashley,0.5,0.5,45,95]
W-wow, Brooklyn-chan's l-late! Guess th-there's a first for everything!",
			"Ashley", noone,, async
		);
		obj_scribble.textbox("Drop dead.", "Brooklyn", noone,, async);
		obj_scribble.textbox(
			@"[npc_move,obj_mei,0.5,0.5,50,50][npc_move,obj_mei,0.5,0.5,50,60]
Hey, Brooklyn. Now that you're here, I wanna discuss something with you...",
			"Mei", noone,, async
		);
	
		obj_scribble.textbox("What is it, Mei?", "Brooklyn", spr_brooklyn_portrait_default);
		obj_scribble.textbox("What do you guys make of Grace's disappearance?", "Mei", spr_mei_portrait_default);
		obj_scribble.textbox("Oh, what? I thought you were going to talk about something important.", "Brooklyn", spr_brooklyn_portrait_amused);
		obj_scribble.textbox(
			@"[player_move,2,2,30,80][player_move,1,1,30,81]
Yeah, like Brooklyn's boy-", "Ashley", spr_ashley_portrait_default
		);
		obj_scribble.textbox_unnamed("You reach your hand in time to cover up Ashley's mouth");
		obj_scribble.textbox(@"*Unfazed
[/page]I've never been much of a detective novel enjoyer,
[/page]So frankly, this matter is not of interest to me.",
			"Brooklyn", spr_brooklyn_portrait_default
		);
		obj_scribble.textbox(@"B-but...
[/page]She's a fellow classmate! A fellow club member-",
			"Mei", spr_mei_portrait_default
		);
		obj_scribble.textbox(@"Well, if you're so worried about her, why not try to go find her yourself?
[/page]That Frenchie kid's a moron, but he's got some guts to run after her without a second thought.
[/page]Well, perhaps that's just his primate impulsiveness coming through. Who knows?",
			"Brooklyn", spr_brooklyn_portrait_disgusted
		);
		obj_scribble.textbox(":(", "Mei", spr_mei_portrait_default);
		obj_scribble.textbox(
			"D-don't fret, Mei-chan! She was definitely transported into another world to save the universe from-[sfx_school_bell]",
			"Ashley", spr_ashley_portrait_default
		);
		obj_scribble.textbox(
			"Aw, dang it. I had the whole light novel concept written in my mind! Arghh, my left hand aches with a mysterious power...",
			"Ashley", spr_ashley_portrait_default
		);
		obj_scribble_events.exec_seconds_callbacks.cutscene_sewing_club_day_4_brooklyn_player_move_1 = function () {
			move_to_pos(0.5, 0.5, 100, 80);
			call_later(5, time_source_units_seconds, _bobby_and_brooklyn);
		};
		obj_scribble.textbox(
			@"[npc_move,obj_mei,0.5,0.5,50,120][npc_move,obj_ashley,0.5,0.5,45,125]
[npc_move,obj_mei,0.5,0.5,190,120][npc_move,obj_ashley,0.5,0.5,190,125]
[npc_move,obj_mei,0.5,0.5,215,40][npc_move,obj_ashley,0.5,0.5,215,40]
[npc_teleport,obj_mei,noone,0,0,0][npc_teleport,obj_ashley,noone,0,0,0]
[exec_seconds,3,cutscene_sewing_club_day_4_brooklyn_player_move_1]
Ashley, please...stop.",
			"Mei", spr_mei_portrait_default
		);
	});
}

function _bobby_and_brooklyn() {
	obj_brooklyn.entityActivateArg = dialogue_brooklynseat_new;
	obj_player.player_frozen = false;
}

// instance_destroy(self);
