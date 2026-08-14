xspeed = (keyboard_check(MOVE_RIGHT) - keyboard_check(MOVE_LEFT))*player_speed;
yspeed = (keyboard_check(MOVE_DOWN) - keyboard_check(MOVE_UP))*player_speed;
if !global.in_dialogue{
x += xspeed
y += yspeed
}
if place_meeting(x + xspeed, y, obj_wall_vent){
	x -= xspeed;
}


if place_meeting(x , y + yspeed, obj_wall_vent){
	y -= yspeed;

}
destination_reached =  place_meeting(x,y, obj_destination_vents)
var top_layer = 999;
var top_layer_field = noone;
var _list = ds_list_create();
var _num = instance_place_list(x, y, hmmm_field, _list, false);

if (_num > 0)
{
    for (var i = 0; i < _num; ++i)
    {
		if _list[| i].layer < top_layer{
			top_layer_field = _list[| i];
			top_layer = _list[| i].layer;
		}
    }
}

ds_list_destroy(_list);


if (top_layer_field != noone) {
    str = top_layer_field.field;
}
else{
	str = "";
}
