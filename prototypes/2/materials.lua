local util = require("data-util")

data:extend( {
	{
		type = "recipe",
		name = "eth-galvanized-steel-plate",
			ingredients = {
				{ "steel-plate", 2},
				{ "zinc-plate", 1}
			},
			results = {
				{ name = "eth-galvanized-steel-plate", amount = 2}
			},
			energy_required = 3,
			icon = util.mod_graphics_path .. "icons/materials/plate/plate-galvanized-steel.png",
			icon_size = 64,
			category = "smelting",
			enabled = false,
			always_show_made_in = true,
	}
})