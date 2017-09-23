/// @description Insert description here
switch(index) {
	case inventory_type.bucket:
		if (active)
			draw_sprite_ext(s_inv_buck1, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		else
			draw_sprite_ext(s_inv_buck, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		break;
	case inventory_type.valve:
		draw_sprite_ext(s_inv_vas, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		break;
	case inventory_type.box:
		if (active)
			draw_sprite_ext(s_inv_ky, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		else
			draw_sprite_ext(s_box, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		break;
}