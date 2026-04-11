
function hitwall(xspeed, yspeed){
return place_meeting(x + xspeed, y, obj_wall) || place_meeting(x , y + yspeed, obj_wall);
}