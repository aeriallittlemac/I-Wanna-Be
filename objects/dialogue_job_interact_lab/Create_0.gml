event_inherited();
if !global.storylines.Lab.Day_Three.talked_to.job{
	scr_text("Oh, hello.", spr_job_icon, 0);
	scr_text("You’re the new kid, right?", spr_job_icon, 0);
	scr_text("Some loser said he was gonna pair up with me...", spr_job_icon, 0);
	scr_text("...but he wound up simping over another girl.", spr_job_icon, 0);
	//wprobably more complex story flag elements that varies the dialogue
	scr_text("Alright.", spr_job_icon, 0);
	scr_text("Just go ask the guy in the gas mask what we’re supposed to do, I have no idea.", spr_job_icon, 0);
	if global.storylines.Lab.Day_Three.talked_to.guy{
		scr_text("Hmmm?", spr_job_icon, 0);	
		scr_text("You talked to him already?", spr_job_icon, 0);
		scr_text("Well, what are we waiting for?", spr_job_icon, 0);
		scr_text("Let's figure out what we're supposed to do here.", spr_job_icon, 0);
	}
}
else{
	if !global.storylines.Lab.Day_Three.talked_to.guy{
		scr_text("Talk to the guy in the gas mask for me, will ya?", spr_job_icon, 0);
	}
	else{
		if !global.storylines.Lab.Day_Three.potato_battery.copper_coin{
			scr_text("Ok, you got the instructions? Got everything you need?", spr_job_icon, 0);
			scr_text("You mention that you're still gathering parts.");
			scr_text("I got a copper coin here, if that helps.", spr_job_icon, 0);
		}
		else{
			scr_text("Good luck on the experiment.", spr_job_icon, 0);
			scr_text("Remember to let me copy your report!", spr_job_icon, 0);
		}
	}
}