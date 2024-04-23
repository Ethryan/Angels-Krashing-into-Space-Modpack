local util = require("data-util")

data:extend({
-------------------------------------------------------------------------------
-- ORE CRUSHER ----------------------------------------------------------------
-------------------------------------------------------------------------------
	{
		type = "recipe",
		name = "eth-iron-ore-crushed",
		category = "ore-crushing",
		energy_required = 5,
		enabled = false,
		ingredients = {
			{ type = "item", name = "iron-ore", amount = 2 },
		},
		results = { 
			{type = "item", name = "eth-iron-ore-crushed", amount = 2}, 
			--{type = "item", name = "eth-stone-dust", amount = 1}, 
		},
		main_product = "eth-iron-ore-crushed",
	},
	
-------------------------------------------------------------------------------
-- CRUSHED SMELTING -----------------------------------------------------------
-------------------------------------------------------------------------------
	{
		type = "recipe",
		name = "eth-iron-ore-crushed-smelting",
		category = "smelting",
		energy_required = 5,
		enabled = false,
		ingredients = {
			{ type = "item", name = "eth-iron-ore-crushed", amount = 5 },
		},
		results = { 
			{type = "item", name = "iron-plate", amount = 2}, 
		},
		main_product = "iron-plate",
	},
})
