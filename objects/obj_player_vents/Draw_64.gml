// Draw GUI event

// --- camera/viewport conversion setup ---
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);   // 540
var cam_h = camera_get_view_height(cam);  // 304

var gui_w = display_get_gui_width();   // 810 (unless overridden)
var gui_h = display_get_gui_height();  // 456 (unless overridden)

var scale_x = gui_w / cam_w; // 1.5
var scale_y = gui_h / cam_h; // 1.5

// convert player's room position into GUI space
var player_gui_x = (obj_player_vents.x - cam_x) * scale_x;
var player_gui_y = (obj_player_vents.y - cam_y) * scale_y;

// scale light radius to match
var light_radius_gui = obj_player_vents.light_radius * scale_x;

// --- text setup ---
draw_set_font(location_text);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var len = string_length(str);
var total_width = string_width(str);

var center_x = 680; // desired horizontal center point
var draw_x = center_x - (total_width / 2);
var draw_y = 40;

var outline_size = 1;

// --- per-character draw loop ---
for (var i = 1; i <= len; i++) {
    var ch = string_char_at(str, i);
    
    var dist = point_distance(draw_x, draw_y, player_gui_x, player_gui_y);
	var lit_amount = clamp(1 - (dist / light_radius_gui), 0, 1);
lit_amount = power(lit_amount, 0.2); // exponent < 1 makes it ramp up faster
    var col = merge_color(c_white, c_black, lit_amount);
    
    // cheap 4-direction white outline
	if lit_amount > 0.2{
    draw_text_transformed_color(draw_x - outline_size, draw_y, ch, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_color(draw_x + outline_size, draw_y, ch, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_color(draw_x, draw_y - outline_size, ch, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_color(draw_x, draw_y + outline_size, ch, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	}
    // actual lit/unlit fill on top
    draw_text_transformed_color(draw_x, draw_y, ch, 1, 1, 0, col, col, col, col, 1);
    
    draw_x += string_width(ch);
}