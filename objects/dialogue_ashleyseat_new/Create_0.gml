event_inherited();

if global.day == 2{
	if !global.storylines.Sewing_Club.Day_Two.talked_to.ashley{
		
	}
	else{
		
	}
}
else if global.day == 3{
	
	if global.storylines.ashley.truth_or_dare_confession{
	
		if !global.storylines.grace.deny_rumor{
			
		}
		else{
			
		}
	
	}
	else{
		obj_scribble.textbox_unnamed(@"You notice Ashley has been writing on a bunch of individual sheets of composition paper.
		[/page]You tap on her shoulder, catching her by surprise.
		");
		obj_scribble.textbox(
		@"*Skips a concerning length in the opposite direction.
		[/page][sfx_ashley_test_1]You’re b-back, s-senpai?
		[/page][sfx_ashley_test_2]I’m so g-glad to s-see y-
		[/page][sfx_surprise_fx]Is that a l-l-l-letter... For me??!!
		[/page][sfx_ashley_test_1]*Turns around* Ah! My heart is in my throat... My chest is pounding!
		[/page][sfx_ashley_test_3]What could be in that letter...
		[/page][sfx_ashley_test_2]Could it be... A confession?! This is all too fast...
		", 
		"Ashley", spr_ashley_portrait_default);
		obj_scribble.textbox_unnamed("All of that was...very audible.");
		
		global.storylines.Sewing_Club.Day_Three.talked_to.ashley = true;
	}
}
else if global.day == 4{
	if global.storylines.grace.truth_or_dare_confession{
		if !global.storylines.grace.deny_rumor{
			
		}
		else{
			
		}
	}
	else{
		if !global.storylines.Sewing_Club.Day_Four.talked_to.ashley{
			
		}
		else{
			
		}
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
//	"ashley", spr_ashley_portrait_default, sfx_grace_speech, true
//);

//obj_scribble.textbox_unnamed(
//	"[scale,2]Lorem ipsum dolor[npc_move,obj_wei,1,1,1420,100] sit amet[/], [/page][Font1]consectetur adipiscing elit[/], [/page][c_aqua]sed do eiusmod tempor incididunt ut labore et dolore magna aliqua[/c]. [/page][spr_ashley_portrait_default]Ut enim ad minim veniam[spr_brooklyn_portrait_default], quis nostrud exercitation ullamco laboris[spr_frenchie_portrait_default] nisi ut aliquip ex ea commodo consequat[spr_mei_portrait_default]. [/page][sfx_mission_accomplished][speed,2]Duis aute irure dolor in reprehenderit in voluptate velit esse cillum[/speed] [slant]dolore eu fugiat nulla pariatur[/slant]. [/page][wave]Excepteur sint[/wave] [shake]occaecat cupidatat[/shake] [wobble]non proident[/wobble], [pulse]sunt in[/pulse] [wheel]culpa qui[/wheel] [jitter]officia deserunt[/jitter] [blink]mollit anim[/blink] [rainbow]id est laborum.[/rainbow]", 
//	sfx_noisy_speech
//);
