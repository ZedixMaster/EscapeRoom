/// @description Insert description here
switch(index) {
	case inventory_type.bucket:
		if (active)
			draw_sprite_ext(s_inv_bucket_filled, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		else
			draw_sprite_ext(s_inv_bucket, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		break;
	case inventory_type.valve:
		draw_sprite_ext(s_inv_valve, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		break;
	case inventory_type.box:
		if (active)
			draw_sprite_ext(s_inv_key, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		else
			draw_sprite_ext(s_inv_box, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		break;
}