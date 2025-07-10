global.npc_list = {
	wei : {
		object: obj_wei,
		first_name : "Wei",
		title : "the Wanderer",
		intro_sprite : spr_wei_down,
		cur_room : school_1F,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : 5,
	},
	grace : {
		object: obj_grace,
		first_name : "Grace",
		title : "the Girl",
		intro_sprite : spr_grace_down,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Affection",
		relationshipPoints : 5,
	},
	drake : {
		object: obj_drake,
		first_name : "Drake",
		title : "the Drunkard",
		intro_sprite : spr_drake_down,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : 5,
	},
	guy : {
		object: obj_guy,
		first_name : "Guy",
		title : "the Guy",
		intro_sprite : spr_guy_down,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "???",
		relationshipPoints : 5,
	},
	brooklyn : {
		object : obj_brooklyn,
		first_name : "Brooklyn",
		title : "the Blonde",
		intro_sprite : spr_brooklyn_down,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Affection",
		relationshipPoints : 5,
	},
	mcronald : {
		object : obj_mcronald,
		first_name : "McRonald",
		title : "the Magician",
		intro_sprite : spr_mcronald_down,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : 5,
	},
	job : {
		object : obj_job,
		first_name : "Job",
		title : "the Jinxed",
		intro_sprite : spr_job_down,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : 5,
	},
	mrchen : {
		object : obj_mrchen,
		first_name : "Mr. Chen",
		title : "",
		intro_sprite : spr_mrchen_down,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : 5,
	},
	gambino : {
		object: obj_gambino,
		first_name : "Gambino",
		title: "the Gangster",
		intro_sprite : spr_gambino_down,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : 5,
	},
	ashley : {
		object: obj_ashley,
		first_name : "Ashley",
		title: "the All-Knowing",
		intro_sprite : spr_ashley_down,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Affection",
		relationshipPoints : 5,
	},
	mei : {
		object: obj_mei,
		first_name : "Mei",
		title: "the Maiden",
		intro_sprite : spr_mei_down,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Affection",
		relationshipPoints : 5,
	},
	jake : {
		object: obj_jake,
		first_name : "Jake",
		title: "the Jock",
		intro_sprite : spr_jake_down,
		cur_room : noone,
		initial_x : 0,
		initial_y : 0,
		initial_face : DOWN,
		initial_animation : noone,
		relationship : "Friendship",
		relationshipPoints : 5,
	},
	

}
npcs = array_create(0);
array_push(npcs, global.npc_list.wei);
array_push(npcs, global.npc_list.grace);
array_push(npcs, global.npc_list.drake);
array_push(npcs, global.npc_list.guy);
array_push(npcs, global.npc_list.brooklyn);
array_push(npcs, global.npc_list.mcronald);
array_push(npcs, global.npc_list.job);
array_push(npcs, global.npc_list.mrchen);
array_push(npcs, global.npc_list.gambino);
array_push(npcs, global.npc_list.ashley);
array_push(npcs, global.npc_list.mei);
array_push(npcs, global.npc_list.jake);
global.npc_active = false;

for(var i = 0; i < array_length(npcs); i++){
	if !instance_exists(npcs[i].object){
		show_debug_message(npcs[i].title);
		instance_create_depth(-9999, -9999, 0, npcs[i].object);
	}
}

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