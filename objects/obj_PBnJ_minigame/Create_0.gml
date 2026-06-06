continue_scene = dialogue_QTE_one;
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
PBnJ_scale = 2*minimap_scale;
jars_x = 17;
PB_y = 18;
grape_jam_y = 46;

knife_index = 0;
plate_x = 60;
plate_y = 45;
toast_one_x = 112;
toast_one_y = 46;
toast_two_x = 112;
toast_two_y = 46;
knife_x = 118;
knife_y = 10;
hand_x = 110;
hand_y = 20;
hand_index = 0;
hand_speed = 0.8;
global.QTE = true;

snap_to_toast_range = 20;

snap_to_toast_one = false;
toast_one_snap_to_plate_range = 20;
toast_one_snap_to_plate = false;
toast_one_snapped = false;

snap_to_toast_two = false;
toast_two_snap_to_plate_range = 20;
toast_two_snap_to_plate = false;
toast_two_snapped = false;

snap_to_knife = false;
snap_to_knife_range = 10;

max_jar_x = 45;
min_jar_x = 36;


grabbing = "none";

smearing = false;
smear = 0;
max_smear = 150;
smear_x = plate_x+20;
smear_range = 30;

smear_stack = array_create(0);

function pb_knife_collision(k_x, k_y){
return k_x < max_jar_x && k_x > min_jar_x && k_y > 15 && k_y < 21;
}

function jam_knife_collision(k_x, k_y){
return k_x < max_jar_x && k_x > min_jar_x && k_y > 43 && k_y < 49;
}