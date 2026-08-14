global.npc_list = {
	wei : {
		object: obj_wei,
		first_name : "Wei",
		title : "F*cking Torres",
		intro_sprite : spr_wei_portrait_default,
		cur_room : school_1F,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : 0,
		introduced : false,
		current_obersavation : "Crude bastard. Former drug addict in his preteens. Devout Christian. Wants to be friends."
 	},
	grace : {
		object: obj_grace,
		first_name : "Grace",
		title : "the Girl",
		intro_sprite : spr_grace_portrait_default,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Affection",
		relationshipPoints : 0,
		introduced : false,
		current_obersavation : "Most popular girl in school(self proclaimed). Closeted glutton."
	},
	drake : {
		object: obj_drake,
		first_name : "Drake",
		title : "the Drunkard",
		intro_sprite : spr_drake_portrait_default,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : 0,
		introduced : false,
		current_obersavation : "Alcoholic",
	},
	guy : {
		object: obj_guy,
		first_name : "Guy",
		title : "the Guy",
		intro_sprite : spr_guy_portrait_default,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "???",
		relationshipPoints : 0,
		introduced : false,
		current_obersavation : "???",
	},
	brooklyn : {
		object : obj_brooklyn,
		first_name : "Brooklyn",
		title : "the Blonde",
		intro_sprite : spr_brooklyn_portrait_default,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Affection",
		relationshipPoints : 0,
		introduced : false,
		current_obersavation : "Snarky goth bitch. Doesn't seem to care for most things.",
	},
	mcronald : {
		object : obj_mcronald,
		first_name : "McRonald",
		title : "the Magician",
		intro_sprite : spr_mcronald_portrait_default,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : 60,
		introduced : false,
		current_obersavation : "Funny magic man. Apparently talks to everyone. Seems friendly enough.",
	},
	job : {
		object : obj_job,
		first_name : "Job",
		title : "the Jinxed",
		intro_sprite : spr_job_portrait_default,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : 0,
		introduced : false,
		current_obersavation : "???",
	},
	mrchen : {
		object : obj_mrchen,
		first_name : "Mr.Chen",
		title : "the Employee",
		intro_sprite : spr_mr_chen_portrait_default,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : -9999,
		introduced : false,
		current_obersavation : "This man is tired of living and possibly needs help.",
	},
	gambino : {
		object: obj_gambino,
		first_name : "Gambino",
		title: "the Gangster",
		intro_sprite : spr_gambino_portrait_default,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : 0,
		introduced : false,
		current_obersavation : "Sicilian mafia boss living in a teenage boy's body.",
	},
	ashley : {
		object: obj_ashley,
		first_name : "Ashley",
		title: "the Anime Fan",
		intro_sprite : spr_ashley_portrait_default,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Affection",
		relationshipPoints : 0,
		introduced : false,
		current_obersavation : "Timid, scared of the opposite sex.",
	},
	mei : {
		object: obj_mei,
		first_name : "Mei",
		title: "the Maiden",
		intro_sprite : spr_mei_portrait_default,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Affection",
		relationshipPoints : 0,
		introduced : false,
		current_obersavation : "Loud normie.",
	},
	jake : {
		object: obj_jake,
		first_name : "Jake",
		title: "the Jock",
		intro_sprite : spr_jake_portrait_default,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : 0,
		introduced : false,
		current_obersavation : "Dumb jock.",
	},
	frenchie : {
		object: obj_frenchie,
		first_name : "Frenchie",
		title: "le French",
		intro_sprite : spr_frenchie_portrait_default,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : 0,
		introduced : false,
		current_obersavation : "Kind of pathetic.",
	},
}
npcs = array_create(0);
#macro WEI 0
array_push(npcs, global.npc_list.wei);
#macro GRACE 1
array_push(npcs, global.npc_list.grace);
#macro DRAKE 2
array_push(npcs, global.npc_list.drake);
#macro GUY 3
array_push(npcs, global.npc_list.guy);
#macro BROOKLYN 4
array_push(npcs, global.npc_list.brooklyn);
#macro MCRONALD 5
array_push(npcs, global.npc_list.mcronald);
#macro JOB 6
array_push(npcs, global.npc_list.job);
#macro MRCHEN 7
array_push(npcs, global.npc_list.mrchen);
#macro GAMBINO 8
array_push(npcs, global.npc_list.gambino);
#macro ASHLEY 9
array_push(npcs, global.npc_list.ashley);
#macro MEI 10
array_push(npcs, global.npc_list.mei);
#macro JAKE 11
array_push(npcs, global.npc_list.jake);
#macro FRENCHIE 12
array_push(npcs, global.npc_list.frenchie);
global.npc_active = false;

function teleport(npc){
	if npc != noone{
	for(var i=0; i < array_length(npcs); i++){
		if npc == npcs[i].object{
			npc.x = npcs[i].initial_x;
			npc.y = npcs[i].initial_y;
			if npcs[i].initial_animation == noone{
				npc.sprite_index = npc.sprite[npcs[i].initial_face];
			}
			else{
				npc.sprite_index =npcs[i].initial_animation;
			}
			if npcs[i].cur_room != room{
				instance_deactivate_object(npc);
			}
		}
	}
	}
}

function check_npc_activity(){
	for(var i=0; i < array_length(npcs); i++){
		if instance_exists(npcs[i].object){
			if array_length(npcs[i].object.sequences) > 0{
				return true;
			}
		}	
	}
	return false;
}