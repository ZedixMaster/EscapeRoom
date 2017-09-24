/// @description Fire Glow
global.fireplaceIsDead = false;
particle = 0;
global.P_System=part_system_create();
global.ParticleFireGlow=part_type_create();
part_type_shape(global.ParticleFireGlow,pt_shape_sphere);            //This defines the particles shape
part_type_size(global.ParticleFireGlow,.1,.15,0,.001);                    //This is for the size
part_type_scale(global.ParticleFireGlow,30,30);                       //This is for scaling
part_type_color1(global.ParticleFireGlow, c_orange);                  //This sets its colour. There are three different codes for this
part_type_alpha3(global.ParticleFireGlow, 0.2,0.3,0.0)
part_type_speed(global.ParticleFireGlow,0.1,0.2,0,1);            //The particles speed
part_type_direction(global.ParticleFireGlow,0,360,0,1);            //The direction
part_type_orientation(global.ParticleFireGlow,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.ParticleFireGlow,1);                         //This is the blend mode, either additive or normal
part_type_life(global.ParticleFireGlow,10,5);                       //this is its lifespan in steps