-- block_in_block | October 2018 TumeniNodes

--a node which can be set inside default nodes

minetest.register_node("block_in_block:block_1", {
	description = "Block 1",
	drawtype = "nodebox",
	tiles = {"default_stone.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {cracky = 3},
	drop = {},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -1.375, -0.3125, 0.3125, -0.75, 0.3125},
			{-0.375, -1.5, -0.375, 0.375, -1.375, 0.375},
		}
	}
})
