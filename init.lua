-- block_in_block | October 2018 TumeniNodes

--a node which can be set inside default nodes

minetest.register_node("block_in_block:block_1", {
	description = "Block 1",
	drawtype = "nodebox",
	tiles = {"block_1_top.png", "block_1_bottom.png", "block_1_side.png"},
	inventory_image = "block_1_side.png",
	wield_image = "block_1_side.png",
	visual_scale = 2.0,
	paramtype = "light",
	is_ground_content = false,
	groups = {cracky = 3},
	drop = 'default:apple',
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -1.375, -0.3125, 0.3125, -0.75, 0.3125},
			{-0.375, -1.5, -0.375, 0.375, -1.375, 0.375},
		}
	}
})

minetest.register_node("block_in_block:block_2", {
	description = "Block 2",
	drawtype = "nodebox",
	tiles = {"block_2.png"},
	inventory_image = "block_2.png",
	wield_image = "block_2.png",
	visual_scale = 0.5,
	paramtype = "light",
	is_ground_content = false,
	groups = {cracky = 3},
	drop = 'default:gold_lump',
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -1.3125, -0.3125, 0.3125, -0.6875, 0.3125},
		}
	}
})
