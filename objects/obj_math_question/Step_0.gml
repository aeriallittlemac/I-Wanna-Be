collision_length = string_width_ext(qtext, qtext_sep, qtest_width)*text_scale;
collision_height = string_height_ext(qtext, qtext_sep, qtest_width)*text_scale;

if (instance_exists(obj_math_quiz)){
if obj_player.x >= x && obj_player.x <= x + collision_length
&& ((y >= obj_player.y - obj_math_quiz.player_y_offset - obj_math_quiz.player_height/2 && y <= obj_player.y - obj_math_quiz.player_y_offset + obj_math_quiz.player_height/2)
|| (y+collision_height >= obj_player.y - obj_math_quiz.player_y_offset - obj_math_quiz.player_height/2 && y+collision_height <= obj_player.y - obj_math_quiz.player_y_offset + obj_math_quiz.player_height/2))
{

instance_destroy(self);
}
x -= qspeed;
}