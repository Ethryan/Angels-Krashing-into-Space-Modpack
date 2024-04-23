local util = require("data-util")

--Recipes
--Electronic Circuit
data.raw.recipe["electronic-circuit"].normal.ingredients = {	
	{"solder", 1}, 
	{"basic-electronic-components", 4},
	{"basic-circuit-board", 2}
}

--Electronic Circuit in laser mill
data.raw.recipe["electronic-circuit-in-laser-mill"].ingredients = {	
	{"solder", 1}, 
	{"basic-electronic-components", 4},
	{"basic-circuit-board", 2},
	{type = "fluid", name = "helium", amount = 2}
}

--Adjust Automation core MK2
util.replace_or_add_ingredient("automation-core-2", "niobium-plate", "manganese-plate", 4, false)
util.replace_or_add_ingredient("automation-core-2", nil, "basic-electronic-components", 4, false)

--Adjust basic electronic components to require more ingredients
util.replace_or_add_ingredient("basic-electronic-components", "copper-cable", "copper-cable", 5, false)
util.replace_or_add_ingredient("basic-electronic-components", "graphite", "graphite", 5, false)

util.replace_or_add_ingredient("basic-electronic-components-silver", "graphite", "graphite", 5, false)
data.raw.recipe["basic-electronic-components-silver"].results = {{"basic-electronic-components", 8}}

util.replace_or_add_ingredient("low-quality-advanced-circuit", "solder", "indium-solder", 4, false)
util.replace_or_add_ingredient("advanced-circuit", "solder", "indium-solder", 4, false)

util.replace_or_add_ingredient("chemical-science-pack", "solder", "indium-solder", 5, false)

--Research
table.insert(
	data.raw.technology["tantalite-processing"].effects, { type = "unlock-recipe", recipe = "basic-electronic-components-tantalum" })
