show_debug_message("yo1")
if !global.in_dialogue{
	show_debug_message("yo")
	switch (obj_crosshair.str)
{
    case "Grace's phone":
        NewDialogue(dialogue_graces_phone);
    break;

    case "Drawer One":
        NewDialogue(dialogue_drawer_one);
    break;
	
	case "Drawer Two":
		NewDialogue(dialogue_drawer_two);
	break;
	
	case "Grace's Bed":
        NewDialogue(dialogue_graces_bed);
    break;
	
	case "Carpet Floor":
		NewDialogue(dialogue_carpet_floor);
	break;
	
	case "Wall":
		NewDialogue(dialogue_wall);
	break;

    default:
        
}
	
}