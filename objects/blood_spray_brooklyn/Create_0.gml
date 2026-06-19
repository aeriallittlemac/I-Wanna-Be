// Particle system
system = part_system_create();
part_system_depth(system, obj_brooklyn.depth-1);
// Particle type
particle = part_type_create();

part_type_shape(particle, pt_shape_pixel);
part_type_color1(particle, #ff0000);
dir = UP;
part_type_life(particle, 15, 40);
// Fast initial velocity
part_type_speed(particle, 3, 5, -0.15, 0);

// Fade out
//part_type_alpha2(particle, 1, 0);

// Gravity
part_type_gravity(particle, 0.10, 270);
