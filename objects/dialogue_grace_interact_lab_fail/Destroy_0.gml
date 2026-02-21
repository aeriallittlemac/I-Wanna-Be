global.text_box_top = false;
if global.storylines.Grace.truth_or_dare_confession{
	instance_create_depth(0,0,0, beatmap_grace_lab_tuesday);
}
global.reputation -= 10;
global.female_affinity -= 15;