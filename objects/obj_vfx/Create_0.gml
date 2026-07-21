uniform_types = array_create(UniformType.DELIM);
uniform_types[UniformType.Float] = shader_set_uniform_f;
uniform_types[UniformType.FloatArr] = shader_set_uniform_f_array;
uniform_types[UniformType.Int] = shader_set_uniform_i;
uniform_types[UniformType.IntArr] = shader_set_uniform_i_array;
uniform_types[UniformType.Matrix] = shader_set_uniform_matrix;
uniform_types[UniformType.MatrixArr] = shader_set_uniform_matrix_array;

active_shader = noone;
surface_a = noone;
surface_b = noone;

global.sh_ambience = [0.1, 0.1, 0.1];
global.sh_bloom_bleed = [0.125, 0.125, 0.125];

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
		[UniformType.FloatArr, "u_camPos"],
		[UniformType.FloatArr, "u_screenSize"]
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
				u_camPos: [
					camera_get_view_x(view_camera[0]),
					camera_get_view_y(view_camera[0])
				],
				u_screenSize: [
					camera_get_view_width(view_camera[0]),
					camera_get_view_height(view_camera[0])
				]
			}
		};
	}, function(step_ret, surface, pos) {
		draw_surface(surface, pos[0], pos[1]);
	}),
	shadow: new ObjectShader(sh_shadow, [
	], function(object) {
		return {
			uniform: {
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

//effects.rain.start();
//effects.romance.start();
//effects.spinner.start();
effects.lighting.start();
//effects.lighting_spinner_test.start();

//show_debug_message(fx_get_parameters(layer_get_fx("Rooms")));