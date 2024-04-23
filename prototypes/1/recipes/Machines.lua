local util = require("data-util")

data:extend({
	--Ore Crusher
	{
		type = "recipe",
		name = "eth-burner-ore-crusher",
		energy_required = 5,
		enabled = false,
		ingredients = {
			{ type = "item", name = "iron-plate", amount = 5 },
			{ type = "item", name = "stone-furnace", amount = 1 },
			{ type = "item", name = "iron-gear-wheel", amount = 10 },
			{ type = "item", name = "stone-brick", amount = 10 },
			{ type = "item", name = "copper-cable", amount = 5 },
		},
		result = "eth-burner-ore-crusher",
	},
	{
		type = "recipe",
		name = "eth-ore-crusher",
		energy_required = 5,
		enabled = false,
		ingredients = {
			{ type = "item", name = "eth-burner-ore-crusher", amount = 1 },
			{ type = "item", name = "steel-plate", amount = 10 },
			{ type = "item", name = "steel-gear-wheel", amount = 20 },
			{ type = "item", name = "stone-brick", amount = 15 },
			{ type = "item", name = "copper-cable", amount = 5 },
		},
		result = "eth-ore-crusher",
	},
	--Ore Sorting Facility
	{
		type = "recipe",
		name = "eth-ore-sorting-facility",
		energy_required = 5,
		enabled = false,
		ingredients = {
			{ type = "item", name = "iron-plate", amount = 12 },
			{ type = "item", name = "electronic-circuit", amount = 12 },
			{ type = "item", name = "stone-brick", amount = 30 },
			{ type = "item", name = "steel-gear-wheel", amount = 8 },
		},
		result = "eth-ore-sorting-facility",
	},
})
