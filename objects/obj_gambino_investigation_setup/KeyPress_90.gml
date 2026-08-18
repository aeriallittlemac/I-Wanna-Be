
if !global.in_dialogue{
	switch (obj_crosshair.str)
{
    case "Office Table":
        NewDialogue(dialogue_gambino_office_table);
    break;

    case "Poker Card":
        NewDialogue(dialogue_gambino_office_poker_card);
    break;
	
	case "Cigarettes":
		NewDialogue(dialogue_gambino_office_cigarette);
	break;
	
	case "Gambino's Couch":
        NewDialogue(dialogue_gambino_office_couch);
    break;
	
	case "Stacks of Cash":
		NewDialogue(dialogue_gambino_office_cash);
	break;
	case "Office Painting":
		NewDialogue(dialogue_gambino_office_painting);
	break;
	case "Carpet Floor":
		NewDialogue(dialogue_gambino_office_floor);
	break;
	case "Wall":
		NewDialogue(dialogue_gambino_office_wall);
	break;

    default:
        
}
	
}