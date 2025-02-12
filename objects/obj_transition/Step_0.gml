if room == target_rm && image_index<1
	{
		if(start_cutscene == noone){
		}
		else{
		NewDialogue(start_cutscene);
		}
		instance_destroy();
	}