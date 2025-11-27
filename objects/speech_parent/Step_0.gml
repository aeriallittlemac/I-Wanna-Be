if (npc_speaker != noone) {
	x = npc_speaker.x + offset_x;
	y = npc_speaker.y + offset_y;
} else {
	instance_destroy(self)
}
