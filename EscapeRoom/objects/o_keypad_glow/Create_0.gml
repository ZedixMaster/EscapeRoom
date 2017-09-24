/// @description Init glow
particle = 0;
global.P_System=part_system_create();
global.ParticleKeypadGlow=part_type_create();
part_type_shape(global.ParticleKeypadGlow,pt_shape_sphere);            //This defines the particles shape
part_type_size(global.ParticleKeypadGlow,1.1,1.3,0,.001);                    //This is for the size
part_type_scale(global.ParticleKeypadGlow,2,2);                       //This is for scaling
part_type_color1(global.ParticleKeypadGlow, c_green);                  //This sets its colour. There are three different codes for this
part_type_alpha3(global.ParticleKeypadGlow, 0.2,0.3,0.0)
part_type_speed(global.ParticleKeypadGlow,0.1,0.0,0,0);            //The particles speed
part_type_direction(global.ParticleKeypadGlow,0,360,0,1);            //The direction
part_type_orientation(global.ParticleKeypadGlow,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.ParticleKeypadGlow,1);                         //This is the blend mode, either additive or normal
part_type_life(global.ParticleKeypadGlow,10,5);                       //this is its lifespan in steps