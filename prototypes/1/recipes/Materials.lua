local util = require("data-util")

data:extend( {
	{
		type = "item",
		name = "ethryans-void",
		icon = util.mod_graphics_path .. "icons/void.png",
		icon_size = 32,
		flags = { "hidden" },
		subgroup = "processing-crafting",
		stack_size = 200,
	},
	{
		type = "recipe",
		category = "smelting",
		group = "resources",
		order = "c",
		subgroup = "rare-metals",
		name = "rare-metals-fix",
		energy_required = 32,
		enabled = false,
		icons = {
		  { icon = "__Krastorio2Assets__/icons/items-with-variations/rare-metals/rare-metals.png", icon_size = 64 },
		  { icon = "__Krastorio2Assets__/icons/items-with-variations/raw-rare-metals/raw-rare-metals.png",
			icon_size = 64,
			scale = 0.22,
			shift = { -8, -8 }}
		},
		ingredients = {{"raw-rare-metals", 24 }},
		result = "rare-metals",
		result_count = 6,
	},
	{
		type = "recipe",
		category = "smelting",
		group = "resources",
		order = "a-a-g",
		subgroup = "iron",
		name = "steel-plate-graphite",
		energy_required = 16,
		enabled = false,
		icons = {
		  { icon = "__Krastorio2Assets__/icons/items/steel-plate.png", icon_size = 64 },
		  { icon = "__Krastorio2Assets__/icons/fluids/oxygen.png",
			icon_size = 64,
			scale = 0.22,
			shift = { -8, -8 }}
		},
		ingredients = {{"iron-plate", 12 }},
		result = "steel-plate",
		result_count = 6,
	},
	{
		type = "recipe",
		name = "tantalum-wire",
			ingredients = {{ "tantalum-plate", 1}},
			results = {{ name = "tantalum-wire", amount = 2}},
			energy_required = 2,
			category = "crafting",
			enabled = false,
			always_show_made_in = true,
	},
	{
		type = "recipe",
		name = "basic-electronic-components-tantalum",
			ingredients = {
				{ "tantalum-wire", 1},
				{ "graphite", 5}
			},
			results = {
				{ name = "basic-electronic-components", amount = 12}
			},
			energy_required = 2,
			main_product = "basic-electronic-components",
			icons = {
			{
				icon = "__MDbobelectronics__/graphics/icons/basic-electronic-components.png",
				icon_size = 128
			},
			{
				icon = util.mod_graphics_path .. "icons/materials/wire/wire-tantalum.png",
				icon_size = 64,
				scale = 0.25,
				shift = { -10, -10},
			}},
			category = "crafting",
			enabled = false,
			always_show_made_in = true,
	}
})