if room == target_rm && image_index<1
	{
		if(start_cutscene == noone){
		global.cutscene = false;
		}
		else{
		NewDialogue(start_cutscene);
		}
		instance_destroy();
	}