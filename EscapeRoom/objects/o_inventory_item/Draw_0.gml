/// @description Insert description here
switch(index) {
	case 0:
		draw_sprite_ext(s_inv_1, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		break;
	case 1:
		draw_sprite_ext(s_inv_2, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		break;
	case 2:
		draw_sprite_ext(s_inv_3, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		break;
}

scr_activate_inventory_item(0);