var inst = instance_create_depth(0,0,0, obj_choice_default_QTE);
		with inst{
			choice.one.choice_text = "Unplug blender.";
			choice.one.choice_cutscene = dialogue_unplug_blender_blender;
			choice.two.choice_text = "Unplug toaster"
			choice.two.choice_cutscene = dialogue_unplug_blender_toaster;
			choice.three.choice_text = "Do nothing."
			choice.three.choice_cutscene = dialogue_unplug_blender_nothing;
		}