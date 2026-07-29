xspeed = (keyboard_check(MOVE_RIGHT) - keyboard_check(MOVE_LEFT))*player_speed;
yspeed = (keyboard_check(MOVE_DOWN) - keyboard_check(MOVE_UP))*player_speed;
x += xspeed
y += yspeed
if place_meeting(x + xspeed, y, obj_wall_vent){
	x -= xspeed;
}


if place_meeting(x , y + yspeed, obj_wall_vent){
	y -= yspeed;

}
destination_reached =  place_meeting(x,y, obj_destination_vents)
var other_inst = instance_place(x, y, room_field);

if (other_inst != noone) {
    str = other_inst.field;
}
