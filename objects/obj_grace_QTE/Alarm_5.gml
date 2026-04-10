character_shake_offset = character_shake_margins*(character_shake_count%2);
character_shake_count--;
if character_shake_count <=0{
	alarm[2] = 1;
}
else{
alarm[5] = character_damage_anim_frames;
}

//switch(irandom(3))
//{
//	case 0:
//	choices[0].choice_text = "You're a virgin.";
//	break;
//	case 1:
//	choices[0].choice_text = "Your eyes are way too small";
//	break;
//	case 2:
//	choices[0].choice_text = "You look like a zombie on meth.";
//	break;
//}

//alarm[4] = 1;