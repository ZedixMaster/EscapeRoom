/// @description Fireh
particle++;

if ( particle % 5 == 0) {
	repeat(1) {
		var xx = x + random(20);
		var yy = y + random(20);
		part_particles_create(global.P_System, xx, yy, global.ParticleFireGlow, 1);
	}
}