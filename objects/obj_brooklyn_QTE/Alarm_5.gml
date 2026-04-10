shake_delay = original_shake_delay;
switch(irandom(3))
{
	case 0:
	choices[0].choice_text = "You're a virgin.";
	break;
	case 1:
	choices[0].choice_text = "Your eyes are way too small";
	break;
	case 2:
	choices[0].choice_text = "You look like a zombie on meth.";
	break;
}

alarm[4] = 1;