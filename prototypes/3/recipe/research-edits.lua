local util = require("data-util")

--Research Item Removal
util.remove_recipes_from_technologies({"w93-uranium-shotgun-shell"})
util.remove_recipes_from_technologies({"long-handed-inserter"})
util.remove_recipes_from_technologies({"kr-superior-long-inserter"})
util.remove_recipes_from_technologies({"kr-superior-long-filter-inserter"})
util.remove_recipes_from_technologies({"floating-long-handed-inserter"})
util.remove_recipes_from_technologies({"floating-kr-superior-long-inserter"})
util.remove_recipes_from_technologies({"floating-kr-superior-long-filter-inserter"})
util.remove_recipes_from_technologies({"overflow-valve"})
util.remove_recipes_from_technologies({"underflow-valve"})
util.remove_recipes_from_technologies({"phenolic-board"})
util.remove_recipes_from_technologies({"phenolic-board-stone"})
util.remove_recipes_from_technologies({"rubber"})
util.remove_recipes_from_technologies({"rubber-rfp-ddw"})
util.remove_recipes_from_technologies({"breeder-reactor"})
util.remove_recipes_from_technologies({"gas-boiler"})
util.remove_recipes_from_technologies({"solder"})

--Research Item Adding
--util.recipe_require_tech({"bob-rubber", "rubber"})
data.raw.recipe["bob-rubber"].enabled = false
table.insert(
	data.raw.technology["rubber"].effects, { type = "unlock-recipe", recipe = "bob-rubber" })
data.raw.recipe["bob-resin-wood"].enabled = false
table.insert(
	data.raw.technology["rubber"].effects, { type = "unlock-recipe", recipe = "bob-resin-wood" })
data.raw.recipe["rfp-krastorio2-tritium"].enabled = false
table.insert(
	data.raw.technology["rfp-tritium-breeding"].effects, { type = "unlock-recipe", recipe = "rfp-krastorio2-tritium" })
table.insert(
	data.raw.technology["advanced-underground-piping-t2"].effects, { type = "unlock-recipe", recipe = "gas-boiler" })
table.insert(
	data.raw.technology["kr-basic-fluid-handling"].effects, { type = "unlock-recipe", recipe = "solder" })

--Research Icon
data.raw.technology["rubber"].icons = { {
	icon = util.mod_graphics_path .. "research/rubber-research.png", icon_size = 128 } }

--Research Removal
data.raw.technology["flow_control_valves_tech"].enabled = false
data.raw.technology["flow_control_valves_tech"].visible_when_disabled = false
data.raw.technology["breeder-reactors"].enabled = false
data.raw.technology["breeder-reactors"].visible_when_disabled = false

--Research Correction
data.raw.technology["electricity"].unit.count = 200
data.raw.technology["carbon-fiber"].unit.time = 30
data.raw.technology["carbon-fiber"].unit.count = 100
data.raw.technology["se-adaptive-armour-1"].unit.time = 60
data.raw.technology["se-adaptive-armour-1"].unit.count = 400
data.raw.technology["se-adaptive-armour-2"].unit.time = 60
data.raw.technology["se-adaptive-armour-2"].unit.count = 600
data.raw.technology["se-adaptive-armour-3"].unit.count = 800
data.raw.technology["se-adaptive-armour-4"].unit.count = 1600
data.raw.technology["se-adaptive-armour-5"].unit.count = 3200
data.raw.technology["energy-shield-equipment"].unit.time = 60
data.raw.technology["energy-shield-equipment"].unit.count = 200
data.raw.technology["energy-shield-mk2-equipment"].unit.count = 500
data.raw.technology["se-rtg-equipment"].unit.count = 500
data.raw.technology["se-rtg-equipment-2"].unit.count = 800

--Research Names
data.raw.tool["productivity-science-pack"].localised_name = "Productivity science card"
data.raw.technology["productivity-science-pack"].localised_name = "Productivity science card"
data.raw.technology["bakelite"].localised_name = "Basic plastic: Bakelite"

--Research Ingredients
table.insert( data.raw.technology["circuit-network"].unit.ingredients, {"basic-tech-card", 1} )
table.insert( data.raw.technology["circuit-network"].unit.ingredients, {"logistic-science-pack", 1} )
table.insert( data.raw.technology["programmable-structures"].unit.ingredients, {"logistic-science-pack", 1} )
table.insert( data.raw.technology["radar-amplifier"].unit.ingredients, {"logistic-science-pack", 1} )
table.insert( data.raw.technology["radar-efficiency"].unit.ingredients, {"logistic-science-pack", 1} )
table.insert( data.raw.technology["advanced-underground-piping"].unit.ingredients, {"logistic-science-pack", 1} )
table.insert( data.raw.technology["se-rtg-equipment"].unit.ingredients, {"space-science-pack", 1} )
table.insert( data.raw.technology["se-rtg-equipment"].unit.ingredients, {"utility-science-pack", 1} )

--Research Dependencies
data.raw.technology["apm_nuclear_science_pack"].prerequisites = { "space-fission-catalogue-1" }
data.raw.technology["copper-processing"].prerequisites = { "fuel-processing" }
data.raw.technology["electricity"].prerequisites = { "eth-basic-automation", "bismanol" }
table.insert( data.raw.technology["bismanol"].prerequisites, "fuel-processing" )
table.insert( data.raw.technology["military"].prerequisites, "brass-processing" )
table.insert( data.raw.technology["military"].prerequisites, "lead-processing" )
table.insert( data.raw.technology["tinned-cable"].prerequisites, "automation-science-pack" )
table.insert( data.raw.technology["kr-automation-core"].prerequisites, "brass-processing" )
table.insert( data.raw.technology["kr-steel-fluid-handling"].prerequisites, "steel-processing" )
table.insert( data.raw.technology["kr-iron-pickaxe"].prerequisites, "logistics" )
table.insert( data.raw.technology["basic-logistics"].prerequisites, "brass-processing" )
table.insert( data.raw.technology["logistics"].prerequisites, "electricity" )
table.insert( data.raw.technology["chemical-science-pack"].prerequisites, "battery" )
table.insert( data.raw.technology["circuit-network"].prerequisites, "fiber-optics" )
data.raw.technology["circuit-network-2"].prerequisites = 
	{ "circuit-network" }
table.insert( data.raw.technology["radar-amplifier"].prerequisites, "kr-radar" )
data.raw.technology["radar-amplifier-3"].prerequisites = 
	{ "radar-amplifier-2", "circuit-network-2" }
table.insert( data.raw.technology["advanced-underground-piping-t2"].prerequisites, "kr-steel-fluid-handling" )
table.insert( data.raw.technology["advanced-underground-piping-t3"].prerequisites, "kr-reinforced-plates" )
table.insert( data.raw.technology["advanced-underground-piping-t3"].prerequisites, "carbon-fiber" )

