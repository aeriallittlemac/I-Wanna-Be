var not_on_a_floor = room != school_1F && room != school_2F && room != school_3F && room != school_B1
var not_going_to_a_floor = target_rm != school_1F && target_rm != school_2F && target_rm != school_3F && target_rm != school_B1
if image_speed>0{
	if (not_on_a_floor||not_going_to_a_floor){
	audio_master_gain(audio_get_master_gain(0)- 2*delta_time/1000000);
		if audio_get_master_gain(0) <= 0{
			audio_stop_all();
		}
	}
}
if room == target_rm && image_index<1
	{
		if(start_cutscene == noone){
		}
		else{
		NewDialogue(start_cutscene);
		}
		instance_destroy();
	}