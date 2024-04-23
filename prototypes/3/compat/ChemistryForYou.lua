local util = require("data-util")

--recipes
util.replace_or_add_ingredient("sulfuric-acid", "lead-plate", "lead-plate", 1, false)
data.raw.recipe["sulfuric-acid"].results = {
	{type = "fluid", name = "sulfur-dioxide", amount = 100}, 
	{type = "item", name = "lead-plate", amount = 1, catalyst_amount = 1, probability = 0.6}}
data.raw.recipe["sulfuric-acid"].main_product = "sulfur-dioxide"
util.replace_or_add_ingredient("sulfuric-acid-rfp-ddw", "lead-plate", "lead-plate", 1, false)
data.raw.recipe["sulfuric-acid-rfp-ddw"].results = {
	{type = "fluid", name = "sulfur-dioxide", amount = 100}, 
	{type = "item", name = "lead-plate", amount = 1, catalyst_amount = 1, probability = 0.6}}
data.raw.recipe["sulfuric-acid-rfp-ddw"].main_product = "sulfur-dioxide"
util.replace_or_add_ingredient("sulfur-smelting", nil, "lead-plate", 1, false)
data.raw.recipe["sulfur-smelting"].results = {
	{type = "fluid", name = "sulfur-trioxide", amount = 100}, 
	{type = "item", name = "lead-plate", amount = 1, catalyst_amount = 1, probability = 0.8}}
data.raw.recipe["sulfur-smelting"].main_product = "sulfur-trioxide"

--Silver Concentrate
data.raw.recipe["silver-pyrometallurgi"].category = "chemistry"
util.replace_or_add_ingredient("silver-pyrometallurgi", nil, "aqua-regia" , 100, true)

--research
data.raw.technology["apm_nuclear_science_pack"].icons = { {
	icon = util.mod_graphics_path .. "icons/research/fission/fission-science-pack-1.png", icon_size = 128 } }

table.insert( data.raw.technology["battery"].prerequisites, "sulfur-gas-processing" )
table.insert( data.raw.technology["explosives"].prerequisites, "sulfur-gas-processing" )
table.insert( data.raw.technology["chemical-waste-disposal"].prerequisites, "sulfur-gas-processing" )
table.insert( data.raw.technology["silver-pyrometallurgi"].prerequisites, "se-processing-vulcanite" )
