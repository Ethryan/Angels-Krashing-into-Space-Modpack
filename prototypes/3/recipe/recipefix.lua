local util = require("data-util")

--Tantalum wire
util.replace_or_add_ingredient("tantalum-capacitor", "tantalum-plate", "tantalum-wire" , 5, false)

--Aluminium Cable
util.replace_or_add_ingredient("aluminum-cable", "aluminum-plate", "aluminum-plate" , 1, false)
data.raw.recipe["aluminum-cable"].results = {{"aluminum-cable", 2}}

--ACSR Cable
util.replace_or_add_ingredient("acsr-cable", "aluminum-cable", "aluminum-cable" , 12, false)


--Pipe Lengths
data.raw["pipe-to-ground"]["pipe-to-ground"].fluid_box = {
      base_area = 1,
      height = 1.25,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = { 0, -1 } },
        {
          position = { 0, 1 },
          max_underground_distance = 10,
        },
      },
    }
data.raw["pipe-to-ground"]["kr-steel-pipe-to-ground"].fluid_box = {
      base_area = 1,
      height = 1.25,
      pipe_covers = steel_pipecoverspictures,
      pipe_connections = {
        { position = { 0, -1 } },
        {
          position = { 0, 1 },
          max_underground_distance = 20,
        },
      },
    }

--Solar
util.replace_or_add_ingredient("solar-cell", "silicon", "silicon-wafer" , 2, false)
util.replace_or_add_ingredient("indium-solar-cell", "copper-plate", "silicon-wafer" , 2, false)

--Gas Boiler
util.replace_or_add_ingredient("gas-boiler", "pipe", "kr-steel-pipe" , 4, false)
util.replace_or_add_ingredient("gas-boiler", nil, "airtight-seal" , 4, false)
util.replace_or_add_ingredient("gas-boiler", nil, "kr-fluid-burner" , 1, false)

--Uranium
util.replace_or_add_ingredient("production-science-pack", "uranium-238", "apm_oxide_pellet_u238" , 20, false)

--Hardened Inserter
util.replace_or_add_ingredient("w93-hardened-inserter", "long-handed-inserter", "inserter" , 1, false)

--LDS Recipe fix
util.replace_or_add_ingredient("low-density-structure", "bismuth-glass", "bismuth-glass" , 8, false)
util.replace_or_add_ingredient("low-density-structure", "carbon-fiber", "carbon-fiber", 10, false)
util.replace_or_add_ingredient("low-density-structure", "cermet", "cermet", 10, false)
util.replace_or_add_ingredient("low-density-structure", "aluminum-2219", "aluminum-2219", 12, false)

--LDS Nanotubes Recipe fix
util.replace_or_add_ingredient("low-density-structure-nanotubes", "nanotubes", "nanotubes", 8, false)
--data.raw.recipe["se-low-density-structure-nanotubes"].localised_name = "2 x Low density structure"
data.raw.recipe["se-low-density-structure-beryllium"].localised_name = "2 x Low density structure"

--Adding Neodymium to some recipes
--util.replace_or_add_ingredient("se-space-hypercooler", nil, "fi_materials_neodym" , 15, false)
--util.replace_or_add_ingredient("se-space-radiator", nil, "fi_materials_neodym" , 15, false)
--util.replace_or_add_ingredient("se-space-radiator-2", nil, "fi_materials_neodym" , 15, false)

--Loaders
util.replace_or_add_ingredient("kr-loader", "iron-gear-wheel", "iron-gear-wheel", 10, false)
util.replace_or_add_ingredient("kr-loader", "electronic-circuit", "electronic-circuit", 2, false)
util.replace_or_add_ingredient("kr-loader", nil, "inserter", 1, false)
util.replace_or_add_ingredient("kr-fast-loader", "kr-loader", "kr-loader", 1, false)
util.replace_or_add_ingredient("kr-fast-loader", "electric-motor", "inserter", 2, false)
util.replace_or_add_ingredient("kr-fast-loader", "advanced-circuit", "advanced-circuit", 2, false)
util.replace_or_add_ingredient("kr-express-loader", "kr-fast-loader", "kr-fast-loader", 1, false)
util.replace_or_add_ingredient("kr-express-loader", "electric-engine-unit", "fast-inserter", 2, false)
util.replace_or_add_ingredient("kr-express-loader", "processing-unit", "processing-unit", 2, false)
util.replace_or_add_ingredient("kr-express-loader", "lubricant", "lubricant", 50, true)
util.replace_or_add_ingredient("kr-advanced-loader", "kr-express-loader", "kr-express-loader", 1, false)
util.replace_or_add_ingredient("kr-advanced-loader", "imersium-gear-wheel", "stack-inserter", 2, false)

--util.replace_or_add_ingredient("kr-advanced-loader", "titanium-plate", "nitinol-mesh", 4, false)

util.replace_or_add_ingredient("kr-advanced-loader", "imersium-plate", "advanced-processing-unit", 1, false)
util.replace_or_add_ingredient("kr-advanced-loader", nil, "lubricant", 250, true)
data.raw.recipe["kr-advanced-loader"].category = "crafting-with-fluid"
util.replace_or_add_ingredient("kr-superior-loader", "kr-advanced-loader", "kr-advanced-loader", 1, false)
util.replace_or_add_ingredient("kr-superior-loader", "imersium-gear-wheel", "kr-superior-inserter", 2, false)
util.replace_or_add_ingredient("kr-superior-loader", "se-heavy-bearing", "se-heavy-bearing", 4, false)
util.replace_or_add_ingredient("kr-superior-loader", "imersium-plate", "advanced-processing-unit", 4, false)
util.replace_or_add_ingredient("kr-superior-loader", nil, "lubricant", 1000, true)
data.raw.recipe["kr-superior-loader"].category = "crafting-with-fluid"
util.replace_or_add_ingredient("kr-se-loader", "kr-express-loader", "kr-express-loader", 1, false)
util.replace_or_add_ingredient("kr-se-loader", "electric-engine-unit", "stack-inserter", 2, false)
util.replace_or_add_ingredient("kr-se-loader", "low-density-structure", "low-density-structure", 10, false)
util.replace_or_add_ingredient("kr-se-loader", "processing-unit", "processing-unit", 4, false)
util.replace_or_add_ingredient("kr-se-deep-space-loader-black", "kr-se-loader", "kr-se-loader", 1, false)
util.replace_or_add_ingredient("kr-se-deep-space-loader-black", "se-naquium-cube", "kr-superior-inserter", 2, false)
util.replace_or_add_ingredient("kr-se-deep-space-loader-black", "se-heavy-assembly", "se-heavy-assembly", 4, false)
util.replace_or_add_ingredient("kr-se-deep-space-loader-black", "se-nanomaterial", "se-nanomaterial", 4, false)
util.replace_or_add_ingredient("kr-se-deep-space-loader-black", "se-quantum-processor", "se-quantum-processor", 2, false)

--fix Roboport

--Change pcb solder(Bismuth) ingredients to solder(BZTIN) and adjust recipe and remove PCB-Solder
util.find_and_replace_ingredients({["pcb-solder"] = "solder"})
util.replace_or_add_ingredient("pcb-solder", "tin-plate", "tin-plate", 7, false)
util.replace_or_add_ingredient("pcb-solder", "bismuth-plate", "bismuth-plate", 1, false)
data.raw.recipe["pcb-solder"].results = {{"solder", 8}, {type = "item", name = "silver-ore", amount = 1, catalyst_amount = 1, probability = 0.95}}
data.raw.recipe["pcb-solder"].main_product = "solder"
data.raw.recipe["pcb-solder"].category = "smelting"
data.raw.recipe["solder"].category = "smelting"
data.raw.recipe["solder"].enabled = false
data.raw.technology["pcb-solder"].localised_name = "Lead Free Solder"
util.replace_or_add_ingredient("indium-pcb-solder", "tin-plate", "tin-plate", 2, false)
data.raw.recipe["indium-pcb-solder"].results = {{"solder", 6}}
--data.raw.item["pcb-solder"] = nil
data.raw.recipe["bronze-plate"].category = "smelting"
--data.raw.recipe["galvanized-steel-plate"].category = "smelting"
data.raw.recipe["galvanized-steel-plate"].normal.ingredients = {{"eth-galvanized-steel-plate", 2}}

util.replace_or_add_ingredient("big-electric-pole", "rubber", "zirconium-plate", 2, false)

data.raw.recipe["concrete"].normal.ingredients = {
	{"stone-brick", 5},
	{"silica", 15},
	{"quicklime", 10},
	{type = "fluid", name = "water", amount = 100}}

util.replace_or_add_ingredient("electric-motor-silver", "silver-wire", "silver-wire", 3, false)
data.raw.recipe["geothermal-well"].normal.enabled = false
data.raw.recipe["geothermal-heat-exchanger"].normal.enabled = false
data.raw.recipe["geothermal-well"].expensive.enabled = false
data.raw.recipe["geothermal-heat-exchanger"].expensive.enabled = false

--Crushed Manganese
data.raw.recipe["crushed-manganese"].energy_required = 5
data.raw.recipe["crushed-manganese"].results = {{"crushed-manganese", 5}}

--Pumpjacks
--util.replace_or_add_ingredient("pumpjack", "salt", "gas-extractor", 1, false)
util.replace_or_add_ingredient("kr-mineral-water-pumpjack", "salt", "gas-extractor", 1, false)

--Chemical Plant
--util.replace_or_add_ingredient("chemical-plant", "stone-brick", "basic-chemical-plant", 1, false)
util.replace_or_add_ingredient("kr-advanced-chemical-plant", nil, "chemical-plant", 1, false)

--Oil Refinery
util.replace_or_add_ingredient("oil-refinery", "stone-brick", "chemical-plant", 1, false)

--Fuel Refinery
util.replace_or_add_ingredient("kr-fuel-refinery", nil, "chemical-plant", 1, false)
util.replace_or_add_ingredient("kr-fuel-refinery", nil, "fuel-processor", 1, false)
util.replace_or_add_ingredient("se-fuel-refinery", nil, "kr-fuel-refinery", 1, false)

--Pulverizer
util.replace_or_add_ingredient("se-pulveriser", nil, "kr-crusher", 1, false)

--Recycling
util.replace_or_add_ingredient("se-recycling-facility", nil, "kr-crusher", 1, false)

--Power Station
util.replace_or_add_ingredient("kr-gas-power-station", nil, "burner-turbine", 1, false)
util.replace_or_add_ingredient("kr-gas-power-station", nil, "steam-engine", 2, false)

--Airtight Seal
--util.replace_or_add_ingredient("airtight-seal", "graphite", "rubber", 4, false)
data.raw.recipe["airtight-seal"].ingredients = {
	{"bolted-flange", 1},
	{"silver-brazing-alloy", 2},
	{"rubber", 4}}
util.replace_or_add_ingredient("indium-airtight-seal", "graphite", "rubber", 2, false)

--Copper Tungsten
data.raw.recipe["cuw"].category = "smelting"

--Bismuth Glass
data.raw.recipe["bismuth-glass"].category = "smelting"
data.raw.recipe["se-bismuth-glass"].category = "smelting"
--util.replace_or_add_ingredient("se-bismuth-glass", nil, "se-pyroflux", 10, false)

--Empty Magazines
--util.replace_or_add_ingredient("empty-recipe", "iron-plate", "brass-plate", 2, false)
--util.replace_or_add_ingredient("empty-high-capacity-recipe", "iron-plate", "brass-plate", 5, false)
--util.replace_or_add_ingredient("advanced-recipe", "iron-plate", "brass-plate", 5, false)
--util.replace_or_add_ingredient("advanced-high-capacity-recipe", "iron-plate", "brass-plate", 13, false)

--Pistol Ammo
--util.replace_or_add_ingredient("high-capacity-firearm-magazine", nil, "firearm-magazine", 1, false)
--util.replace_or_add_ingredient("high-capacity-firearm-magazine", "lead-plate", "lead-plate", 1, false)
--util.replace_or_add_ingredient("high-capacity-firearm-magazine", "brass-plate", "brass-plate", 1, false)
--util.replace_or_add_ingredient("high-capacity-firearm-magazine", "coal", "coal", 1, false)

--Rifle Ammo
--util.replace_or_add_ingredient("rifle-magazine", "brass-plate", "empty-magazine", 1, false)
util.replace_or_add_ingredient("rifle-magazine-bismuth", "gunpowder", "gunpowder", 2, false)
util.replace_or_add_ingredient("armor-piercing-rifle-magazine", "tungsten-plate", "tungsten-plate", 1, false)
--util.replace_or_add_ingredient("rifle-magazine-bismuth", "brass-plate", "empty-magazine", 1, false)
util.replace_or_add_ingredient("uranium-rifle-magazine", "rifle-magazine", "explosive-rounds-rifle-magazine", 1, false)
util.replace_or_add_ingredient("imersite-rifle-magazine", "rifle-magazine", "armor-piercing-rifle-magazine", 1, false)
util.replace_or_add_ingredient("rfw-fusion-rounds-magazine", "rifle-magazine", "uranium-rifle-magazine", 1, false)

--Anti Materiel Rifle Ammo
util.replace_or_add_ingredient("armor-piercing-anti-material-rifle-magazine", "tungsten-plate", "tungsten-plate", 2, false)
util.replace_or_add_ingredient("uranium-anti-material-rifle-magazine", "anti-material-rifle-magazine", "explosive-rounds-anti-material-rifle-magazine", 1, false)
util.replace_or_add_ingredient("imersite-anti-material-rifle-magazine", "anti-material-rifle-magazine", "armor-piercing-anti-material-rifle-magazine", 1, false)
util.replace_or_add_ingredient("rfw-fusion-anti-material-rifle-magazine", "anti-material-rifle-magazine", "uranium-anti-material-rifle-magazine", 1, false)

--Plutonium Ammo
--data.raw.ammo["plutonium-rounds-magazine"].icon = "__EthryansModpack__/graphics/icons/ammo/plutonium-rifle-ammo.png"
--data.raw.ammo["plutonium-rounds-magazine"].icon_size = 64
--data.raw.recipe["plutonium-rounds-magazine"].icon = "__EthryansModpack__/graphics/icons/ammo/plutonium-rifle-ammo.png"
--data.raw.recipe["plutonium-rounds-magazine"].icon_size = 64
--data.raw.recipe["plutonium-rounds-magazine"].order = "a[basic-clips]-a06[rifle-magazine]c"

--Meteor Point Defence Ammo
util.replace_or_add_ingredient("se-meteor-point-defence-ammo", nil, "tungsten-plate", 2, false)

--Meteor Defence Installation Ammo
util.replace_or_add_ingredient("se-meteor-defence-ammo", nil, "tungsten-plate", 10, false)

--Pipes
util.replace_or_add_ingredient("kr-steel-pipe", "bolted-flange", "airtight-seal", 1, false)

--Pipe to Ground
util.replace_or_add_ingredient("pipe-to-ground", "tin-plate", "bolted-flange", 2, false)
util.replace_or_add_ingredient("se-space-pipe-to-ground", "tin-plate", "airtight-seal", 2, false)
util.replace_or_add_ingredient("kr-steel-pipe-to-ground", "tin-plate", "airtight-seal", 2, false)

--Mini-Pumps
util.replace_or_add_ingredient("underground-mini-pump", "underground-pipe-segment-t1", "underground-pipe-segment-t1", 1, false)
util.replace_or_add_ingredient("underground-mini-pump", "engine-unit", "kr-steel-pump", 1, false)
util.replace_or_add_ingredient("underground-mini-pump", "steel-plate", "airtight-seal", 2, false)
util.replace_or_add_ingredient("underground-space-pump", "engine-unit", "underground-mini-pump", 1, false)
util.replace_or_add_ingredient("underground-space-pump", "underground-pipe-segment-space", "underground-pipe-segment-space", 2, false)
util.replace_or_add_ingredient("underground-space-pump", nil, "airtight-seal", 2, false)

--Storage Tanks
util.replace_or_add_ingredient("kr-fluid-storage-1", nil, "storage-tank", 1, false)
util.replace_or_add_ingredient("kr-fluid-storage-2", nil, "kr-fluid-storage-1", 1, false)

--Underground Pipes Materials
util.replace_or_add_ingredient("swivel-joint", "iron-gear-wheel", "articulated-mechanism", 1, false)

util.replace_or_add_ingredient("swivel-joint", "iron-plate", "pipe", 2, false)
util.replace_or_add_ingredient("small-pipe-coupler", "iron-plate", "bolted-flange", 1, false)
util.replace_or_add_ingredient("medium-pipe-coupler", "iron-plate", "airtight-seal", 2, false)
util.replace_or_add_ingredient("large-pipe-coupler", "steel-plate", "carbon-fiber", 2, false)
util.replace_or_add_ingredient("large-pipe-coupler", nil, "airtight-seal", 2, false)
util.replace_or_add_ingredient("underground-pipe-segment-t1", "iron-plate", "pipe", 1, false)
util.replace_or_add_ingredient("underground-pipe-segment-t2", "iron-plate", "kr-steel-pipe", 2, false)
util.replace_or_add_ingredient("underground-pipe-segment-t3", "steel-plate", "kr-steel-pipe", 2, false)
util.replace_or_add_ingredient("underground-pipe-segment-t3", nil, "kr-black-reinforced-plate", 2, false)

--Pipe Valves
util.replace_or_add_ingredient("80-overflow-valve", "iron-plate", "airtight-seal", 1, false)
util.replace_or_add_ingredient("80-top-up-valve", "iron-plate", "airtight-seal", 1, false)
util.replace_or_add_ingredient("check-valve", "iron-plate", "airtight-seal", 1, false)
util.replace_or_add_ingredient("80-overflow-space-valve", "iron-plate", "airtight-seal", 2, false)
util.replace_or_add_ingredient("80-top-up-space-valve", "iron-plate", "airtight-seal", 2, false)
util.replace_or_add_ingredient("check-space-valve", "iron-plate", "airtight-seal", 2, false)


util.replace_or_add_ingredient("80-overflow-valve", "iron-gear-wheel", "flow-controller", 1, false)
util.replace_or_add_ingredient("80-top-up-valve", "iron-gear-wheel", "flow-controller", 1, false)
util.replace_or_add_ingredient("80-overflow-space-valve", "iron-gear-wheel", "advanced-flow-controller", 1, false)
util.replace_or_add_ingredient("80-top-up-space-valve", "iron-gear-wheel", "advanced-flow-controller", 1, false)
util.replace_or_add_ingredient("check-space-valve", "iron-gear-wheel", "self-regulating-valve", 1, false)

--Pipes
util.replace_or_add_ingredient("one-to-one-forward-pipe", nil, "articulated-mechanism", 1, false)
util.replace_or_add_ingredient("one-to-two-perpendicular-pipe", nil, "articulated-mechanism", 2, false)
util.replace_or_add_ingredient("one-to-three-forward-pipe", nil, "articulated-mechanism", 3, false)
util.replace_or_add_ingredient("one-to-four-pipe", nil, "articulated-mechanism", 4, false)
util.replace_or_add_ingredient("underground-L-pipe", nil, "articulated-mechanism", 2, false)
util.replace_or_add_ingredient("underground-t-pipe", nil, "articulated-mechanism", 3, false)
util.replace_or_add_ingredient("underground-cross-pipe", nil, "articulated-mechanism", 4, false)


util.replace_or_add_ingredient("one-to-one-forward-t2-pipe", "pipe", "kr-steel-pipe", 1, false)
util.replace_or_add_ingredient("one-to-two-perpendicular-t2-pipe", "pipe", "kr-steel-pipe", 1, false)
util.replace_or_add_ingredient("one-to-three-forward-t2-pipe", "pipe", "kr-steel-pipe", 1, false)
util.replace_or_add_ingredient("one-to-four-t2-pipe", "pipe", "kr-steel-pipe", 1, false)

util.replace_or_add_ingredient("one-to-one-forward-t2-pipe", nil, "motorized-articulator", 1, false)
util.replace_or_add_ingredient("one-to-two-perpendicular-t2-pipe", nil, "motorized-articulator", 2, false)
util.replace_or_add_ingredient("one-to-three-forward-t2-pipe", nil, "motorized-articulator", 3, false)
util.replace_or_add_ingredient("one-to-four-t2-pipe", nil, "motorized-articulator", 4, false)
util.replace_or_add_ingredient("underground-L-t2-pipe", nil, "motorized-articulator", 2, false)
util.replace_or_add_ingredient("underground-t-t2-pipe", nil, "motorized-articulator", 3, false)
util.replace_or_add_ingredient("underground-cross-t2-pipe", nil, "motorized-articulator", 4, false)

util.replace_or_add_ingredient("one-to-one-forward-t3-pipe", "pipe", "kr-steel-pipe", 1, false)
util.replace_or_add_ingredient("one-to-one-forward-t3-pipe", nil, "carbon-fiber", 1, false)
util.replace_or_add_ingredient("one-to-two-perpendicular-t3-pipe", "pipe", "kr-steel-pipe", 1, false)
util.replace_or_add_ingredient("one-to-two-perpendicular-t3-pipe", nil, "carbon-fiber", 2, false)
util.replace_or_add_ingredient("one-to-three-forward-t3-pipe", "pipe", "kr-steel-pipe", 1, false)
util.replace_or_add_ingredient("one-to-three-forward-t3-pipe", nil, "carbon-fiber", 3, false)
util.replace_or_add_ingredient("one-to-four-t3-pipe", "pipe", "kr-steel-pipe", 1, false)
util.replace_or_add_ingredient("one-to-four-t3-pipe", nil, "carbon-fiber", 4, false)

util.replace_or_add_ingredient("one-to-one-forward-t3-pipe", nil, "complex-joint", 1, false)
util.replace_or_add_ingredient("one-to-two-perpendicular-t3-pipe", nil, "complex-joint", 2, false)
util.replace_or_add_ingredient("one-to-three-forward-t3-pipe", nil, "complex-joint", 3, false)
util.replace_or_add_ingredient("one-to-four-t3-pipe", nil, "complex-joint", 4, false)
util.replace_or_add_ingredient("underground-L-t3-pipe", nil, "complex-joint", 2, false)
util.replace_or_add_ingredient("underground-t-t3-pipe", nil, "complex-joint", 3, false)
util.replace_or_add_ingredient("underground-cross-t3-pipe", nil, "complex-joint", 4, false)

--Space Pipes
util.replace_or_add_ingredient("underground-pipe-segment-space", "copper-cable", "se-space-pipe", 1, false)
util.replace_or_add_ingredient("underground-pipe-segment-space", "underground-pipe-segment-t1", "underground-pipe-segment-t3", 1, false)
util.replace_or_add_ingredient("underground-pipe-segment-space", "plastic-bar", "titanium-palladium-flange", 2, false)
util.replace_or_add_ingredient("underground-pipe-segment-space", "glass", "airtight-seal", 2, false)
util.replace_or_add_ingredient("underground-pipe-segment-space.expensive", "copper-cable", "se-space-pipe", 1, false)
util.replace_or_add_ingredient("underground-pipe-segment-space.expensive", "underground-pipe-segment-t1", "underground-pipe-segment-t3", 1, false)
util.replace_or_add_ingredient("underground-pipe-segment-space.expensive", "plastic-bar", nil, 0, false)
util.replace_or_add_ingredient("underground-pipe-segment-space.expensive", "glass", nil, 0, false)
util.replace_or_add_ingredient("space-pipe-coupler", "copper-cable", "carbon-fiber", 4, false)
util.replace_or_add_ingredient("space-pipe-coupler", "small-pipe-coupler", "large-pipe-coupler", 1, false)
util.replace_or_add_ingredient("space-pipe-coupler", "plastic-bar", "titanium-palladium-flange", 2, false)
util.replace_or_add_ingredient("space-pipe-coupler", nil, "airtight-seal", 2, false)

util.replace_or_add_ingredient("one-to-one-forward-space-pipe", nil, "complex-joint", 1, false)
util.replace_or_add_ingredient("one-to-two-perpendicular-space-pipe", nil, "complex-joint", 2, false)
util.replace_or_add_ingredient("one-to-three-forward-space-pipe", nil, "complex-joint", 3, false)
util.replace_or_add_ingredient("one-to-four-space-pipe", nil, "complex-joint", 4, false)
util.replace_or_add_ingredient("underground-L-space-pipe", nil, "complex-joint", 2, false)
util.replace_or_add_ingredient("underground-t-space-pipe", nil, "complex-joint", 3, false)
util.replace_or_add_ingredient("underground-cross-space-pipe", nil, "complex-joint", 4, false)