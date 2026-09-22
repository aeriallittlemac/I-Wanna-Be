event_inherited();
obj_vfx.effects.romance.stop();
instance_create_depth(0,0,0,obj_mcronald_lighting);
audio_stop_all()
audio_play_sound(sfx_slide_whistle, 1, false);
set_QTE_bgm(mcronald_theme)
audio_sound_gain(mcronald_theme, 0.4, 0);
game_NewDialogue(dialogue_brooklyn_dating_sim_4);