show_debug_message("Cutscene: ");
show_debug_message(global.cutscene);

show_debug_message("Dialogue: ");
show_debug_message(global.in_dialogue);

show_debug_message("Classroom mode: ");
show_debug_message(classroom_mode);
if !global.in_inventory && room != tutorial{
		show_debug_message("movable "+ room_get_name(room));
}