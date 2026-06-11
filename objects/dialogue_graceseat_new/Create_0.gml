event_inherited();

if global.day == 2{
	if !global.storylines.Sewing_Club.Day_Two.talked_to.grace{
		
	}
	else{
		
	}
}
else if global.day == 3{
	obj_player.face = LEFT;
	obj_player.sprite_index = obj_player.sprite[LEFT];
	obj_grace.face = RIGHT;
	obj_grace.sprite_index = obj_grace.sprite[RIGHT];
	
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			
		}
		else{
			
		}
	
	}
	else{
		
		global.storylines.Sewing_Club.Day_Three.talked_to.grace = true;
	}
}
else if global.day == 4{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
			obj_scribble.textbox(
			"[vl_grace_default_1]Ah, it feels so good to know that I finally have a boyfriend...", 
			"Grace", spr_grace_portrait_cocky_2);
			
			obj_scribble.textbox(
			"...", 
			"Grace", spr_grace_portrait_default);
			
			obj_scribble.textbox(
			"[vl_grace_annoyed_1]Why the hell is Brooklyn sitting there like she doesn't care?", 
			"Grace", spr_grace_portrait_confused);
			
			obj_scribble.textbox(
			"[vl_grace_angry_1]Goddamnit, after shitting on me for being single all this time...", 
			"Grace", spr_grace_portrait_angry);
			
			obj_scribble.textbox(
			"[vl_grace_angry_2]She can't keep getting away with this!", 
			"Grace", spr_grace_portrait_angry);
		}
		else{
			
		}
	}
	else{
		if !global.storylines.Sewing_Club.Day_Four.talked_to.grace{
			
		}
		else{
			
		}
	}
}
else{
	obj_grace.sprite_index = obj_grace.sprite[RIGHT];
	obj_grace.face = RIGHT;
	
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