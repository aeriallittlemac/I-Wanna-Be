var angle;

switch (dir)
{
    case 0: angle =   0; break; // Right
    case 1: angle =  90; break; // Up
    case 2: angle = 180; break; // Left
    case 3: angle = 270; break; // Down
    default: angle = 0;
}

// Update spray direction
part_type_direction(
    particle,
    angle - 20,
    angle + 20,
    0,
    0
);

// Random bursts
if (random(1) < 0.7)
{
    part_particles_create(
        system,
        x,
        y,
        particle,
        irandom_range(2, 5)
    );
}