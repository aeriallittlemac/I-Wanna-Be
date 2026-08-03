obj_player.x = 600;
obj_player.y = 100;
destroy_if_in_scene(inst_1D43132F);
teleport_npc(obj_grace, school_3F, 396, 109, DOWN);
game_camera_change_settings(obj_player, -1);
global.game_time = "12:30 am"
global.night = true;
inst_3D85AE7E.triggered = false;
inst_10061687.triggered = false;
instance_destroy(self);