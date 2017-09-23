/// @description Make some inventory babies.
globalvar items;

enum inventory_type { bucket, valve, box };

// We have three items
for (i=0; i<3; i++) {
	items[i] = instance_create_layer(
		x + sprite_width / 3 * i + sprite_width / 16,
		y + sprite_height / 5,
		"Instances",
		o_inventory_item
	);
	items[i].index = i;
	items[i].depth = depth - 1;
	items[i].image_alpha = 0;
}