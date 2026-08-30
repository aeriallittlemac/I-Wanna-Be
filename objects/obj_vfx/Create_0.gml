// Old anonymous wrapper dispatch method. Too slow?
//uniform_types = array_create(UniformType.DELIM);
//uniform_types[UniformType.Float] = function(uid, val) { shader_set_uniform_f(uid, val); };
//uniform_types[UniformType.FloatArr] = function(uid, val) { shader_set_uniform_f_array(uid, val); };
//uniform_types[UniformType.Int] = function(uid, val) { shader_set_uniform_i(uid, val); };
//uniform_types[UniformType.IntArr] = function(uid, val) { shader_set_uniform_i_array(uid, val); };
//uniform_types[UniformType.Matrix] = function(uid, val) { shader_set_uniform_matrix(uid); };
//uniform_types[UniformType.MatrixArr] = function(uid, val) { shader_set_uniform_matrix_array(uid, val); };

active_shader = noone;
surface_a = noone;
surface_b = noone;
_pos_ping_pong = [0, 0, 0, 0];

previous_game_time = global.game_time;
previous_night = global.night;

global.sh_ambience = [1.0, 1.0, 1.0];
global.sh_bloom_bleed = [0.125, 0.125, 0.125];
global.shadow_blur_radius = 20;
global.shadow_bleed = 0.125;
global.shadow_weight = 0.0;
global.time_based_lighting = true;

// GameMaker must evaluate the use of built-in effects before runtime.
// Only string literals can be used to create effects.
effects_assets = {
	romance: fx_create("_effect_windblown_particles"),
	rain_drop: fx_create("_effect_windblown_particles"),
	rain_colorize: fx_create("_filter_colourise"),
	lightning_contrast: fx_create("_filter_contrast"),
	lightning_edge: fx_create("_filter_edgedetect")
};

effects = {
	romance: new Effect(effects_assets.romance, {
		param_sprite : spr_romance_particles,
		param_particle_mass_min : 0.00,
		param_particle_mass_max : 0.01,
		param_particle_start_sprite_scale : 1,
		param_particle_end_sprite_scale : 1, 
		param_particle_initial_velocity_range_x_min : -100, 
		param_particle_initial_velocity_range_x_max : 100, 
		param_particle_initial_velocity_range_y_min : -100, 
		param_particle_initial_velocity_range_y_max : 100, 
		param_particle_initial_rotation_min : 0, 
		param_particle_initial_rotation_max : 1, 
		param_particle_rot_speed_min : -1, 
		param_particle_rot_speed_max : 1, 
		param_trail_chance : 0, 
		param_force_grid_sizex : 8, 
		param_force_grid_sizey : 8, 
		param_wind_vector_x : 0, 
		param_wind_vector_y : 0, 
		param_num_blowers : 0, 
		param_dragcoeff : 5, 
		param_grav_accel : 300
	}, "effect_romance"),
	rain: new MultiEffect([
		{
			name: "drop",
			asset: effects_assets.rain_drop,
			defaults: {
				param_sprite : spr_rain_drop,
				param_particle_mass_min : 0.00,
				param_particle_mass_max : 0.01,
				param_particle_start_sprite_scale : 1,
				param_particle_end_sprite_scale : 1, 
				param_particle_initial_velocity_range_x_min : -100, 
				param_particle_initial_velocity_range_x_max : 0, 
				param_particle_initial_velocity_range_y_min : -100, 
				param_particle_initial_velocity_range_y_max : 100, 
				param_particle_initial_rotation_min : 0, 
				param_particle_initial_rotation_max : 0, 
				param_particle_rot_speed_min : 0, 
				param_particle_rot_speed_max : 0, 
				param_trail_chance : 0, 
				param_force_grid_sizex : 8, 
				param_force_grid_sizey : 8, 
				param_wind_vector_x : 0, 
				param_wind_vector_y : 0, 
				param_num_blowers : 0, 
				param_dragcoeff : 0, 
				param_grav_accel : 2000,
				param_num_particles: 250
			}
		},
		{
			name: "colorize",
			asset: effects_assets.rain_colorize,
			defaults: {
				g_TintCol : [ 0,0,0.39,1 ], 
				g_Intensity : 0.50 
			}
		}
	], "effect_rain"),
	lightning: new MultiEffectEphemeral([
		{
			name: "flash_1",
			asset: effects_assets.lightning_contrast,
			defaults: {
				g_ContrastIntensity: 2,
				g_ContrastBrightness: 1.5
			},
			time_units: time_source_units_frames,
			duration: 5
		},
		{
			name: "flash_2",
			asset: effects_assets.lightning_edge,
			defaults: {},
			time_units: time_source_units_frames,
			duration: 5
		},
		{
			name: "flash_3",
			asset: effects_assets.lightning_contrast,
			defaults: {
				g_ContrastIntensity: 2,
				g_ContrastBrightness: 1.5
			},
			time_units: time_source_units_frames,
			duration: 5
		},
		{
			name: "flash_4",
			asset: effects_assets.lightning_edge,
			defaults: {},
			time_units: time_source_units_frames,
			duration: 5
		}
	], function() {
		show_debug_message("Lightning flashed.");
	}, "effect_lightning"),
	spinner: new PostProcessingShader(sh_kaleidoscope, [
		[UniformType.FloatArr, "u_resolution"], 
		[UniformType.Float, "u_time"]
	], function(surface_width, surface_height) {
		return {
			uniform: {
				u_resolution: [surface_width, surface_height],
				u_time: current_time * 0.005
			}
		};
	}, function(step_ret, surface, pos) {
		draw_surface_stretched(surface, pos[0], pos[1], pos[2] - pos[0], pos[3] - pos[1]);
	}),
	grayscale: new ObjectShader(sh_grayscale, [
	], function(object) {
		return {
			uniform: {
			}
		};
	}),
	rainbow: new ObjectShader(sh_rainbow, [
		[UniformType.FloatArr, "u_uv"],
		[UniformType.Float, "u_time"],
		[UniformType.Float, "u_speed"],
		[UniformType.Float, "u_section"],
		[UniformType.Float, "u_saturation"],
		[UniformType.Float, "u_brightness"],
		[UniformType.Float, "u_mix"]
	], function(object) {
		object._shader_time += 1 / game_get_speed(gamespeed_fps);
		var uv = sprite_get_uvs(object.sprite_index, object.image_index);
		return {
			uniform: {
				u_uv: [uv[0], uv[2]],
				u_time: object._shader_time,
				u_speed: 1.0,
				u_section: 0.5,
				u_saturation: 0.7,
				u_brightness: 0.8,
				u_mix: 0.5
			}
		};
	}),
	lighting: new PostProcessingShader(sh_lighting, [
		[UniformType.FloatArr, "u_pos"], 
		[UniformType.FloatArr, "u_color"],
		[UniformType.FloatArr, "u_bloom"],
		[UniformType.FloatArr, "u_bleed"],
		[UniformType.FloatArr, "u_ambience"],
		[UniformType.FloatArr, "u_screen"]
	], function(surface_width, surface_height) {
		var pos = array_create(16 * 4);
		var color = array_create(16 * 4);
		var bloom = array_create(16 * 4);
		
		var i_pos = 0, i_color = 0, i_bloom = 0;
		with (obj_sh_light) {
			pos[i_pos++] = x;
			pos[i_pos++] = y;
			pos[i_pos++] = _radius;
			pos[i_pos++] = _illumination;
			color[i_color++] = color_get_red(image_blend);
			color[i_color++] = color_get_green(image_blend);
			color[i_color++] = color_get_blue(image_blend);
			color[i_color++] = image_alpha;
			bloom[i_bloom++] = _bloom;
			bloom[i_bloom++] = _mbright;
			bloom[i_bloom++] = _angle_lower;
			bloom[i_bloom++] = _angle_upper;
		}
		
		return {
			uniform: {
				u_pos: pos,
				u_color: color,
				u_bloom: bloom,
				u_bleed: global.sh_bloom_bleed,
				u_ambience: global.sh_ambience,
				u_screen: [
					camera_get_view_width(view_camera[0]),
					camera_get_view_height(view_camera[0]),
					camera_get_view_x(view_camera[0]),
					camera_get_view_y(view_camera[0])
				]
			}
		};
	}, function(step_ret, surface, pos) {
		draw_surface_stretched(surface, pos[0], pos[1], pos[2] - pos[0], pos[3] - pos[1]);
	}),
	shadow: new ObjectShader(sh_shadow, [
		[UniformType.FloatArr, "u_pos"], 
		[UniformType.FloatArr, "u_angles"], 
		[UniformType.Float, "u_padding"], 
		[UniformType.Float, "u_blurRadius"], 
		[UniformType.Float, "u_bleed"], 
		[UniformType.Float, "u_weight"], 
		[UniformType.FloatArr, "u_objPos"],
		[UniformType.FloatArr, "u_objSize"]
	], function(object) {
		var pos = array_create(16 * 4);
		var angles = array_create(16 * 2);
		
		var i_pos = 0, i_angles = 0;
		with (obj_sh_light) {
			pos[i_pos++] = x;
			pos[i_pos++] = y;
			pos[i_pos++] = _radius;
			pos[i_pos++] = _illumination;
			angles[i_angles++] = _angle_lower;
			angles[i_angles++] = _angle_upper;
		}
		return {
			uniform: {
				u_pos: pos,
				u_angles: angles,
				u_padding: 30.0,
				u_blurRadius: global.shadow_blur_radius,
				u_bleed: global.shadow_bleed,
				u_weight: global.shadow_weight,
				u_objPos: [
					object.x, object.y, 
					sprite_get_xoffset(object.sprite_index), 
					sprite_get_yoffset(object.sprite_index)
				],
				u_objSize: [
					sprite_get_width(object.sprite_index), 
					sprite_get_height(object.sprite_index)
				]
			}
		};
	}, 30)
};

effects.lighting_spinner_test = new CompositePostProcessingShader([
	effects.spinner, effects.lighting
]);
effects.shadow_rainbow_test = new CompositeObjectShader([
	effects.shadow, effects.rainbow
]);

T = 86400;

function parse_time(time_string) {
	var parts = string_split_ext(global.game_time, [":", " "], true);

	var hour = real(parts[0]);
	var minute = real(parts[1]);
	var pm = string_lower(parts[2]) == "pm";

	var t = 0; // Seconds since midnight.

	if (hour == 12 && !pm) { // 12:00 AM
		t = minute * 60;
	} else if (hour == 12 && pm) {  // 12:00 PM
		t = 12 * 60 * 60 + minute * 60;
	} else if (pm) { // PM
		t = (12 + hour) * 60 * 60 + minute * 60;
	} else { // AM
		t = hour * 60 * 60 + minute * 60;
	}
	
	return t;
}

function parse_time_normalized(time_string) {
	return parse_time(time_string) / T;
}

function update_time_based_lighting() {
	var t_norm = global.night ? 0 : parse_time_normalized(global.game_time);

	var r_channel = animcurve_get_channel(ac_daylight, "r");
	var g_channel = animcurve_get_channel(ac_daylight, "g");
	var b_channel = animcurve_get_channel(ac_daylight, "b");
	var r = animcurve_channel_evaluate(r_channel, t_norm);
	var g = animcurve_channel_evaluate(g_channel, t_norm);
	var b = animcurve_channel_evaluate(b_channel, t_norm);

	show_debug_message(string("Time-based lighting update: {0} {1} {2} {3}", t_norm, r, g, b));
	with (obj_sh_light) {
		if (!_dynamic) {
			continue;
		}
		// Multiplying by 255 since the original intention was 
		// to apply the colors to the ambience, but now it's for the window light.
		image_blend = make_color_rgb(r * 255, g * 255, b * 255);
	}

	with (obj_npc) {
		obj_vfx.effects.shadow.start(self);
	}
}

effects.lighting.start();
obj_vfx.effects.shadow.start(obj_player);

//effects.rain.start();
//effects.romance.start();
//effects.spinner.start();
//effects.lighting_spinner_test.start();

//show_debug_message(fx_get_parameters(layer_get_fx("Rooms")));