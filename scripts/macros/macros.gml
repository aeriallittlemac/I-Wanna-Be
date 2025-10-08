#macro RIGHT 0
#macro UP 1
#macro LEFT 2
#macro DOWN 3
#macro RESOLUTION_W 270
#macro RESOLUTION_H 152
#macro OBJ_MAX_DEPTH -7999
#macro LAMP_DEPTH -8000
#macro FILTER_DEPTH -8999
#macro TEXTBOX_DEPTH -9999
#macro STANDARD_Y_POS 114
#macro CLASSROOM_CHARACTER_SCALE 0.8
#macro CLASSROOM_TOP_LEFT_CORNER_SEAT_X 69
#macro CLASSROOM_TOP_LEFT_CORNER_SEAT_Y 92.5
#macro CLASSROOM_SEATS_SPACING_X 62
#macro CLASSROOM_SEATS_SPACING_Y 25
#macro QUEST_TEXT_FONT_SIZE 10
#macro QUEST_TEXT_TIMER 1.5

#macro WEI 0

//controls
#macro CONFIRM_ACTION  ord("Z")//ord("K")
#macro CANCEL_ACTION ord("X") //ord("J")
#macro MOVE_UP  vk_up// ord("W")
#macro MOVE_DOWN vk_down //ord("S")
#macro MOVE_RIGHT vk_right// ord("D")
#macro MOVE_LEFT vk_left // ord("A")
//discarded
#macro KICK_DRUM_1 keyboard_check_pressed(CONFIRM_ACTION)
#macro KICK_DRUM_2 keyboard_check_pressed(CANCEL_ACTION)
#macro SNARE_DRUM keyboard_check_pressed(MOVE_LEFT)


