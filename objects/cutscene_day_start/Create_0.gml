global.reputation = 1;
global.female_affinity = 1;
game_change_reputation(49);
game_wait(1.2);
game_change_female_affinity(49);
instance_destroy(self);