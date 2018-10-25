-- GENERATED CODE
-- Node Box Editor, version 0.9.0
-- Namespace: test

minetest.register_node("test:node_1", {
	tiles = {
		"default_wood.png",
		"default_wood.png",
		"default_wood.png",
		"default_wood.png",
		"default_wood.png",
		"default_wood.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -1.375, -0.3125, 0.3125, -0.75, 0.3125}, -- NodeBox1
			{-0.375, -1.5, -0.375, 0.375, -1.375, 0.375}, -- NodeBox2
		}
	}
})

