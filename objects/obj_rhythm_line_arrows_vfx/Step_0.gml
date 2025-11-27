if timer > 1/frame_rate{
	timer = 0;
	VFXframe++;
	 if VFXframe > vfxFrames - 1 instance_destroy();
}
else{
	timer += delta_time/1000000;
}