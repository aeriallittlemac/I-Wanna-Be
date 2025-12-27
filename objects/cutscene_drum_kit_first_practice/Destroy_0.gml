if global.storylines.Band.First_practice.run == 1{
instance_create_depth(0, 0, 0, beatmap_band_first_practice_1);
}
else if global.storylines.Band.First_practice.run == 2{
instance_create_depth(0, 0, 0, beatmap_band_first_practice_2);
}
else if global.storylines.Band.First_practice.run == 3{
instance_create_depth(0, 0, 0, beatmap_band_first_practice_3);
}
global.storylines.Band.First_practice.run++;
npc_animate(obj_wei, spr_wei_rapping);