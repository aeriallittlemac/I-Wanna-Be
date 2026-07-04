enum UniformType {
	Float, FloatArr, Int, IntArr, Matrix, MatrixArr, DELIM
}

uniform_types = array_create(UniformType.DELIM);
uniform_types[UniformType.Float] = shader_set_uniform_f;
uniform_types[UniformType.FloatArr] = shader_set_uniform_f_array;
uniform_types[UniformType.Int] = shader_set_uniform_i;
uniform_types[UniformType.IntArr] = shader_set_uniform_i_array;
uniform_types[UniformType.Matrix] = shader_set_uniform_matrix;
uniform_types[UniformType.MatrixArr] = shader_set_uniform_matrix_array;

active_shader = noone;

function PostProcessingShader(_shader_asset, _schema, _step, _draw) constructor {
	asset = _shader_asset;
	schema = _schema;
	schema_size = array_length(schema);
	step = _step;
	draw = _draw;
	
	static step_eval = function() {
		var ret = step();
		for (var i = 0; i < schema_size; ++i) {
			var key = schema[i][1];
			var res = shader_get_uniform(asset, key);
			script_execute(
				obj_vfx.uniform_types[schema[i][0]],
				res, ret.uniform[$key]
			);
		}
		return ret;
	};
	static draw_eval = function(step_ret) {
		draw(step_ret);
	}
	
	static start = function() {
		application_surface_draw_enable(false);
		obj_vfx.active_shader = self;
	};
	static stop = function() {
		application_surface_draw_enable(true);
		obj_vfx.active_shader = noone;
	};
}

function Effect(
	_effect_asset, _param_defaults, 
	_effect_layer_id="Effects", _effect_layer_depth=-600
) constructor {
	asset = _effect_asset;
	params = fx_get_parameters(asset);
	layer_id = _effect_layer_id;
	effect_depth = _effect_layer_depth;
	
	//show_debug_message(params);
	
	var param_names = variable_struct_get_names(_param_defaults);
	var param_count = variable_struct_names_count(_param_defaults);
	for (var i = 0; i < param_count; ++i) {
		var name = param_names[i];
		params[$name] = _param_defaults[$name];
	}
	
	static start = function() {
		fx_set_parameters(asset, params);
		if (!layer_exists(layer_id)) {
			layer_create(effect_depth, layer_id);
		}
		layer_set_fx(layer_id, asset);
	};
	static stop = function() {
		if (layer_exists(layer_id)) {
			layer_destroy(layer_id);
		}
	};
}

function EffectEphemeral(
	_effect_asset, _param_defaults, 
	_time_units, _duration, _on_finish, 
	_effect_layer_id="Effects", _effect_layer_depth=-600
) constructor {
	asset = _effect_asset;
	params = fx_get_parameters(asset);
	layer_id = _effect_layer_id;
	effect_depth = _effect_layer_depth;
	
	time_units = _time_units;
	duration = _duration;
	on_finish = _on_finish;
	
	var param_names = variable_struct_get_names(_param_defaults);
	var param_count = variable_struct_names_count(_param_defaults);
	for (var i = 0; i < param_count; ++i) {
		var name = param_names[i];
		params[$name] = _param_defaults[$name];
	}
	
	// Must be non-static.
	start = function() {
		fx_set_parameters(asset, params);
		if (!layer_exists(layer_id)) {
			layer_create(effect_depth, layer_id);
		}
		layer_set_fx(layer_id, asset);
		call_later(duration, time_units, function() {stop(layer_id, on_finish);}
		);
	};
	static stop = function(layer_id, on_finish) {
		if (layer_exists(layer_id)) {
			layer_destroy(layer_id);
		}
		on_finish();
	};
}

function MultiEffect(
	_effect_asset_params_list, 
	_effect_layer_id="Effects", _effect_layer_depth=-600
) constructor {
	effects = {};
	size = array_length(_effect_asset_params_list);
	names = [];
	for (var i = 0; i < size; ++i) {
		var asset_params = _effect_asset_params_list[i];
		effects[$asset_params.name] = new obj_vfx.Effect(
			asset_params.asset, asset_params.defaults,
			_effect_layer_id + "_" + asset_params.name, 
			_effect_layer_depth
		);
		array_push(names, asset_params.name);
	}
	
	static start = function() {
		for (var i = 0; i < size; ++i) {
			effects[$names[i]].start();
		}
	};
	static stop = function() {
		for (var i = 0; i < size; ++i) {
			effects[$names[i]].stop();
		}
	};
}

function MultiEffectEphemeral(
	_effect_asset_params_list, _on_finish,
	_effect_layer_id="Effects", _effect_layer_depth=-600
) constructor {
	effects = {};
	size = array_length(_effect_asset_params_list);
	names = [];
	for (var i = 0; i < size; ++i) {
		var asset_params = _effect_asset_params_list[i];
		effects[$asset_params.name] = new obj_vfx.EffectEphemeral(
			asset_params.asset, asset_params.defaults,
			asset_params.time_units, asset_params.duration, function() {},
			_effect_layer_id + "_" + asset_params.name, 
			_effect_layer_depth
		);
		if (i > 0) {
			effects[$names[i - 1]].on_finish = effects[$asset_params.name].start;
		}
		array_push(names, asset_params.name);
	}
	effects[$names[size - 1]].on_finish = _on_finish;
	
	static start = function() {
		effects[$names[0]].start();
	};
	static stop = function() {
		for (var i = 0; i < size; ++i) {
			effects[$names[i]].stop();
		}
	};
}

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
	], function() {
		return {
			uniform: {
				u_resolution: [surface_get_width(application_surface), surface_get_height(application_surface)],
				u_time: current_time * 0.005
			}
		};
	}, function(step_ret) {
		var _pos = application_get_position();
		draw_surface_stretched(application_surface, _pos[0], _pos[1], _pos[2] - _pos[0], _pos[3] - _pos[1]);
	})
};

//effects.rain.start();
//effects.romance.start();
effects.spinner.start();

//show_debug_message(fx_get_parameters(layer_get_fx("Rooms")));
