local util = require("data-util")

data:extend({
	{
		type = "item",
		name = "tantalum-wire",
		icon = util.mod_graphics_path .. "icons/materials/wire/wire-tantalum.png",
		icon_size = 64,
		subgroup = "cable",
		order = "e",
		stack_size = 100
	},
	{
		type = "item",
		name = "tin-wire",
		icon = util.mod_graphics_path .. "icons/materials/wire/wire-tin.png",
		icon_size = 64,
		subgroup = "cable",
		order = "e",
		stack_size = 100
	},
	{
		type = "item",
		name = "eth-galvanized-steel-plate",
		icon = util.mod_graphics_path .. "icons/materials/plate/plate-galvanized-steel.png",
		icon_size = 64,
		subgroup = "frame-components",
		order = "c1",
		stack_size = 100
	}
})