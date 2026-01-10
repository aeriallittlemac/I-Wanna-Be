teleport_npc(obj_frenchie, school_1F_run_minigame, 20, 120, RIGHT);

obstacle_sprites = [
	spr_PBnJ_plate, 
	spr_burger_on_a_plate, 
	spr_crack_bag, 
	spr_hot_pocket, 
	spr_pork_bun, 
	spr_blender, 
	spr_toaster, 
];

obstacle_count = 30;

obstacle_width = 20;
obstacle_height = 20;

obstacle_start_x = 285;
obstacle_start_y = 105;
obstacle_spacing_x = (2400 - obstacle_start_x) / obstacle_count;
obstacle_spacing_y = 15;

player_speed = 1;
player_slowed = 0.25;
player_slowed_duration = 0.5;

frenchie_speed = 100;
stab_error = 10;

timer = -1;
countdown = ["3", "2", "1", "Run!"];
countdown_length = array_length(countdown);

show_debug_message("Creating obstacles...");

var initial_seed = random_get_seed();
randomize();

for (var i = 0; i < obstacle_count; ++i) {
	var obstacle = instance_create_depth(
		obstacle_start_x + obstacle_spacing_x * i, 
		obstacle_start_y + irandom(2) * obstacle_spacing_y, 
		0, 
		obj_obstacle, 
		{
			obstacle_sprite: obstacle_sprites[irandom(array_length(obstacle_sprites) - 1)], 
			obstacle_width: obstacle_width, 
			obstacle_height: obstacle_height
		}
	);
	obstacle.on_collision = function() {
		if (obj_player.x_lock < player_speed) {
			return;
		}
		obj_player.x_lock = player_slowed;
		call_later(player_slowed_duration, time_source_units_seconds, function() {
			obj_player.x_lock = player_speed;
		});
	};
}

random_set_seed(initial_seed)

default_pixel_font = font_add("joystix monospace.otf", 32, false, false, 32, 128);

obj_player.player_frozen = true;

call_later(countdown_length, time_source_units_seconds, function() {
	obj_player.player_frozen = false;
	obj_player.x_lock = player_speed;
	npc_animate(obj_frenchie, spr_frenchie_right);
});
