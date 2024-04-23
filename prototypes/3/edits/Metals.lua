local util = require("data-util")

--Iron Plate
data.raw.recipe["iron-plate"].results = {	
	{"iron-plate", 15}, 
	{type = "item", name = "manganese-ore", amount = 1, probability = 0.15}
}

--Copper Plate
data.raw.recipe["copper-plate"].results = {
	{"copper-plate", 14}, 
	{type = "item", name = "silver-ore", amount = 1, probability = 0.2},
	{type = "item", name = "bismuth-ore", amount = 1, probability = 0.25}
}

--Tin Plate
data.raw.recipe["tin-plate"].normal.enabled = false
data.raw.recipe["tin-plate"].normal.results = {
	{"tin-plate", 5}, 
	{type = "item", name = "bismuth-ore", amount = 1, probability = 0.1}
}

--Brass Plate
data.raw.recipe["brass-plate"].normal.enabled = false

--Brass Gear Wheel
data.raw.recipe["iron-gear-wheel"].normal.enabled = false

--Single Cylinder Engine
data.raw.recipe["motor"].normal.enabled = false

--Burner Assembling Machine
data.raw.recipe["burner-assembling-machine"].normal.enabled = false

--Burner Mining Drill
data.raw.recipe["burner-mining-drill"].normal.enabled = false

--Burner Lab
--data.raw.recipe["burner-lab"].normal.enabled = false
data.raw.recipe["burner-lab"].normal.ingredients = {
	{"aluminum-plate", 10 },
	{"iron-plate", 10 },
	{"stone-brick", 10 }}

--Burner Inserter
data.raw.recipe["burner-inserter"].normal.enabled = false

--Flywheel
data.raw.recipe["flywheel"].normal.enabled = false

--Articulated Mechanism
data.raw.recipe["articulated-mechanism"].normal.enabled = false

--Inserter Parts
data.raw.recipe["inserter-parts"].enabled = false


--Zinc Plate
data.raw.recipe["zinc-plate"].enabled = false
data.raw.recipe["zinc-plate"].results = {
	{"zinc-plate", 15}, 
	{type = "item", name = "silver-ore", amount = 1, probability = 0.06},
	{type = "item", name = "bismuth-ore", amount = 1, probability = 0.04},
	{type = "item", name = "indite-ore", amount = 1, probability = 0.02}
}

--Lead Plate
data.raw.recipe["lead-plate"].normal.enabled = false
data.raw.recipe["lead-plate"].normal.results = {
	{"lead-plate", 5}, 
	{type = "item", name = "silver-ore", amount = 1, probability = 0.15},
	{type = "item", name = "bismuth-ore", amount = 1, probability = 0.1}
}
data.raw.recipe["enriched-lead"].results = {
	{"enriched-lead", 6}, 
	{type = "item", name = "silver-ore", amount = 1, probability = 0.3},
	{type = "item", name = "bismuth-ore", amount = 1, probability = 0.2},
	{type = "fluid", name = "dirty-water", amount = 25 }
}

--Nickel Plate
data.raw.recipe["nickel-plate"].enabled = false
data.raw.recipe["nickel-plate"].results = {
	{"nickel-plate", 15}, 
	{type = "item", name = "cobaltite-ore", amount = 1, probability = 0.2}
}

--Invar Plate
util.replace_or_add_ingredient("invar-plate", "nickel-plate", "nickel-plate" , 1, false)
data.raw.recipe["invar-plate"].normal.results = {{"invar-plate", 3}}

util.replace_or_add_ingredient("invar-ingot", "nickel-ingot", "nickel-ingot" , 1, false)
data.raw.recipe["invar-ingot"].results = {{"invar-ingot", 3}}

--Glass
util.replace_or_add_ingredient("glass", "tin-plate", "lead-plate" , 1, false)
data.raw.recipe["glass"].results = {{"glass", 8}}

util.replace_or_add_ingredient("se-glass-vulcanite", "tin-plate", "lead-plate" , 1, false)
data.raw.recipe["se-glass-vulcanite"].results = {{"glass", 24}}

--Manganese Plate
util.replace_or_add_ingredient("manganese-plate", "manganese-ore", "manganese-ore" , 12, false)
data.raw.recipe["manganese-plate"].results = {
	{"manganese-plate", 5}, 
	{type = "item", name = "iron-ore", amount = 1, probability = 0.25},
	{type = "item", name = "bismuth-ore", amount = 1, probability = 0.1}
}

--Tantalum Plate
data.raw.recipe["tantalite-smelting"].enabled = false
data.raw.recipe["tantalite-smelting"].results = {
	{"tantalum-plate", 5}, 
	{type = "item", name = "niobium-plate", amount = 1, probability = 0.1}}
data.raw.recipe["tantalite-ingot"].results = {
	{"tantalum-ingot", 5}, 
	{type = "item", name = "niobium-ingot", amount = 1, probability = 0.15}}
data.raw.recipe["enriched-tantalite"].results = {
	{"enriched-tantalite", 6}, 
	{type = "item", name = "niobium-plate", amount = 1, probability = 0.1}}

--silver-plate
data.raw.recipe["silver-plate"].results = {
	{"silver-plate", 5}, 
	{type = "item", name = "bismuth-ore", amount = 1, probability = 0.08}}

--Steel Plate
data.raw.recipe["steel-plate"].normal.ingredients = {
	{"iron-plate", 12 },
	{"nickel-plate", 1 },
	{"coke", 3 },
	{"quicklime", 1 }}
data.raw.recipe["steel-plate-graphite"].ingredients = {
	{"iron-plate", 12 },
	{"nickel-plate", 1 },
	{"graphite", 4 },
	{"quicklime", 1 },
	{type="fluid", name="oxygen", amount=60}}

--Steel Ingot
data.raw.recipe["se-steel-ingot"].ingredients = {
	{"graphite", 2 },
	{"quicklime", 1 },
	{type="fluid", name="oxygen", amount=100 },
	{type="fluid", name="molten-nickel", amount=50 },
	{type="fluid", name="se-molten-iron", amount=700 }}

--Stainless Steel Plate
util.replace_or_add_ingredient("stainless-steel-plate", nil, "crushed-manganese", 1, false)

--Rare Metals
data.raw.recipe["rare-metals"].enabled = false
data.raw.recipe["rare-metals-vulcanite"].results = {{"rare-metals", 36}, {type = "item", name = "platinum-powder", amount = 8}, {type = "item", name = "palladium-powder", amount = 8}}
data.raw.recipe["rare-metals-vulcanite"].main_product = "rare-metals"
data.raw.recipe["rare-metals-1"].enabled = false
data.raw.recipe["rare-metals-1"].results = {
	{"rare-metals", 8}, 
	{type = "item", name = "platinum-powder", amount = 1, probability = 0.05},
	{type = "item", name = "palladium-powder", amount = 1, probability = 0.05}}
data.raw.recipe["rare-metals-2"].results = {
	{"rare-metals", 6}, 
	{type = "item", name = "platinum-powder", amount = 1, probability = 0.08},
	{type = "item", name = "palladium-powder", amount = 1, probability = 0.08}}
data.raw.recipe["rare-metals-vulcanite"].results = {
	{"rare-metals", 36}, 
	{type = "item", name = "platinum-powder", amount = 1, probability = 0.8},
	{type = "item", name = "palladium-powder", amount = 1, probability = 0.8}}

--Tungsten Carbide
util.replace_or_add_ingredient("tungsten-carbide-casting", "coke", "graphite", 10, false)
data.raw.recipe["tungsten-carbide"].normal.ingredients = {
	{"tungsten-plate", 10 },
	{"coke", 10 }}

--Salt
data.raw.recipe["salt"].enabled = false
data.raw.recipe["salt-rfp-ddw"].enabled = false
data.raw.recipe["salt-rfp-ddw"].category = "basic-chemistry"

--Ammo
data.raw.recipe["rifle-magazine-bismuth"].results = { { "rifle-magazine", 1} }
data.raw.recipe["rifle-magazine-bismuth"].main_product = "rifle-magazine"
data.raw.recipe["firearm-magazine"].enabled = false
data.raw.recipe["pistol-magazine-bismuth"].enabled = false
data.raw.recipe["pistol-magazine-bismuth"].results = { { "firearm-magazine", 1} }
data.raw.recipe["pistol-magazine-bismuth"].main_product = "firearm-magazine"


--Research
util.remove_recipes_from_technologies({"rare-metal-electric-motor"})
table.insert( data.raw.technology["basic-alloys"].effects, { type = "unlock-recipe", recipe = "rare-metal-electric-motor" })
table.insert( data.raw.technology["military"].effects, { type = "unlock-recipe", recipe = "firearm-magazine" })
table.insert( data.raw.technology["military"].effects, { type = "unlock-recipe", recipe = "pistol-magazine-bismuth" })
table.insert( data.raw.technology["basic-chemistry"].effects, { type = "unlock-recipe", recipe = "salt-rfp-ddw" })
--util.remove_recipes_from_technologies({"steel-plate"})
table.insert( data.raw.technology["kr-fluids-chemistry"].effects, { type = "unlock-recipe", recipe = "eth-oxygen" })
table.insert( data.raw.technology["industrial-furnace"].effects, { type = "unlock-recipe", recipe = "steel-plate-graphite" })
table.insert( data.raw.technology["tin-processing"].effects, { type = "unlock-recipe", recipe = "tin-plate" })
util.remove_recipes_from_technologies({"brass-plate-foundry"})
table.insert( data.raw.technology["brass-processing"].effects, { type = "unlock-recipe", recipe = "brass-plate-foundry" })
table.insert( data.raw.technology["zinc-processing"].effects, { type = "unlock-recipe", recipe = "zinc-plate" })
table.insert( data.raw.technology["lead-processing"].effects, { type = "unlock-recipe", recipe = "lead-plate" })
table.insert( data.raw.technology["nickel-processing"].effects, { type = "unlock-recipe", recipe = "nickel-plate" })
table.insert( data.raw.technology["eth-basic-automation"].effects, { type = "unlock-recipe", recipe = "iron-gear-wheel" })
table.insert( data.raw.technology["eth-basic-automation"].effects, { type = "unlock-recipe", recipe = "flywheel" })
table.insert( data.raw.technology["eth-basic-automation"].effects, { type = "unlock-recipe", recipe = "inserter-parts" })
table.insert( data.raw.technology["eth-basic-automation"].effects, { type = "unlock-recipe", recipe = "articulated-mechanism" })
table.insert( data.raw.technology["eth-basic-automation"].effects, { type = "unlock-recipe", recipe = "motor" })
table.insert( data.raw.technology["eth-basic-automation"].effects, { type = "unlock-recipe", recipe = "burner-assembling-machine" })
table.insert( data.raw.technology["eth-basic-automation"].effects, { type = "unlock-recipe", recipe = "burner-mining-drill" })
table.insert( data.raw.technology["eth-basic-automation"].effects, { type = "unlock-recipe", recipe = "burner-lab" })
table.insert( data.raw.technology["eth-basic-automation"].effects, { type = "unlock-recipe", recipe = "burner-inserter" })
table.insert( data.raw.technology["tantalite-processing"].effects, { type = "unlock-recipe", recipe = "tantalite-smelting" })