/// @description Fly my pretties
particle++;

if ( particle % 15 == 0) {
	repeat(1) {
	    var xx = 20 + random(room_width);
	    var yy = 20 + random(room_height);
	    part_particles_create(global.P_System, xx, yy, global.Particle1, 1);
	}
}
