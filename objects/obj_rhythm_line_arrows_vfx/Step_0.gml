if timer > vfxFrames/60{
	timer = 0;
	VFXframe++;
	 if VFXframe > image_number - 1 instance_destroy();
}
else{
	timer += delta_time/1000000;
}