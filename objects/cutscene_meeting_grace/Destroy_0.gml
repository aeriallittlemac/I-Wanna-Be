show_debug_message("d-destroyed!");
audio_play_sound(sfx_surprise_fx, 1, false);
if instance_exists(PBnJ_crumbs_black){
part_emitter_destroy_all(PBnJ_crumbs_black.system);
instance_destroy(PBnJ_crumbs_black);
}
if instance_exists(PBnJ_crumbs){
part_emitter_destroy_all(PBnJ_crumbs.system);
instance_destroy(PBnJ_crumbs);
}




