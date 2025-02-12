//Grace: I mean, I would totally wear a skirt, but the studio had to cut budget on the demo... 
instance_create_depth(88, 63, inst_4A221EE.depth, obj_sewing_kit);
var player_dist_to_brooklyn = abs( x - obj_brooklyn.x) +  abs( y - obj_brooklyn.y - 7);
game_wait(player_dist_to_brooklyn/room_speed);
move_to_pos(0, 1, obj_player.x, obj_brooklyn.y + 9);
move_to_pos(1, 0, obj_brooklyn.x, obj_player.y);
move_to_pos(0, 1, obj_player.x, obj_brooklyn.y + 8);
game_change_image_index(obj_sewing_kit, 1);
game_wait(1.5);
game_change_image_index(obj_sewing_kit, 2);
game_NewDialogue(dialogue_sewing_club_debut_5);