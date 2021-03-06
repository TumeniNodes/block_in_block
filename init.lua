-- block_in_block | October 2018 TumeniNodes

--a node which can be set inside default nodes. you must point at the
--top of the other node to place it.

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
	drop = "default:apple",
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
	light_source = 6,
	groups = {cracky = 3},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -1.3125, -0.3125, 0.3125, -0.6875, 0.3125},
		}
	}
})

-- Let's add a mesh version, just for giggles plus silly drops
-- First tile = inner node Second tile = outer node

minetest.register_node("block_in_block:block_3", {
	description = "Block 3",
	drawtype = "mesh",
	mesh = "block_in_block.obj",
	tiles = {"default_gold_block.png", "default_obsidian_glass.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {cracky = 3},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	}
})

minetest.register_node("block_in_block:block_4", {
	description = "Block 4",
	drawtype = "mesh",
	mesh = "block_in_block.obj",
	tiles = {"default_diamond_block.png", "default_glass.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {cracky = 3},
	drop = "default:aspen_sapling",
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	}
})

minetest.register_node("block_in_block:green_slime_mossycobble", {
	description = "Green Slime Mossy Cobble",
	drawtype = "mesh",
	mesh = "block_in_block.obj",
	tiles = {"default_mossycobble.png", "green_slime.png"},
	inventory_image = minetest.inventorycube("block_side_inv.png", "block_side_inv.png", "block_side_inv.png"),
	paramtype = "light",
	sunlight_propagates = true,
	use_texture_alpha = true,
	is_ground_content = false,
	groups = {cracky = 3},
	drop = "default:mese_post_light",
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	}
})

minetest.register_node("block_in_block:green_liquid_light", {
	description = "Green Liquid Light",
	drawtype = "mesh",
	mesh = "block_in_block.obj",
	tiles = { "default_mese_block.png",
			{name = "green_liquid.png",
			animation = {
					type = "vertical_frames",
					aspect_w = 16,
					aspect_h = 16,
					length = 1,
			}
		}
	},
	inventory_image = minetest.inventorycube("green_liquid_invcube.png", "green_liquid_invcube.png", "green_liquid_invcube.png"),
	paramtype = "light",
	sunlight_propagates = true,
	use_texture_alpha = true,
	is_ground_content = false,
	light_source = 9,
	groups = {cracky = 3},
	drop = "default:dirt_with_grass",
	sounds = default.node_sound_water_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	}
})

-- Cool but can we switch the animated texture around?
-- Sure

minetest.register_node("block_in_block:green_liquid_inner", {
	description = "Green Liquid Inner",
	drawtype = "mesh",
	mesh = "block_in_block.obj",
	tiles = {
			{name = "green_liquid.png",
			animation = {
					type = "vertical_frames",
					aspect_w = 16,
					aspect_h = 16,
					length = 1,
			}
		}, "default_glass.png",
	},
	inventory_image = minetest.inventorycube("green_liquid_innercube.png", "green_liquid_innercube.png", "green_liquid_innercube.png"),
	paramtype = "light",
	sunlight_propagates = true,
	use_texture_alpha = true,
	is_ground_content = false,
	groups = {cracky = 3},
	drop = "default:dirt_with_dry_grass",
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	}
})
