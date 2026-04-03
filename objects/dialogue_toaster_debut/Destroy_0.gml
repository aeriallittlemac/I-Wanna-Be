obj_toaster.debut = true;
if moldy_shit{
	if !obj_toaster.side_quest_finished{
		change_reputation(10);
		item_remove(global.item_list.moldy_toast);
		obj_toaster.side_quest_finished = true;
	}
}