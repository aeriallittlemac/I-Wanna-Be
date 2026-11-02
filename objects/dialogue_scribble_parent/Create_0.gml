global.in_dialogue = true;
global.scribbling = true;

obj_scribble.active_dialogue = self;

// Set by `NewDialogue`:
qte_choice_idx = -1;
qte_selected_text = "";
original_delay_seconds = obj_scribble.async_page_delay_seconds;
