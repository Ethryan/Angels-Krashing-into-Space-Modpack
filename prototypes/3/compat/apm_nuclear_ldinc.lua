local util = require("data-util")

-- Change the autoplace control for Thorium to show it has no effect on Nauvis
local thorium_control = data.raw["autoplace-control"]["thorium-ore"]
thorium_control.localised_name = {"autoplace-control-names.no-effect"}
thorium_control.localised_description = {"autoplace-control-names.no-effect-description"}

data.raw["map-gen-presets"].default["space-exploration"].basic_settings.autoplace_controls["thorium-ore"] = {size = 0}

--research
table.insert( data.raw.technology["nuclear-power"].unit.ingredients, {"space-science-pack", 1} )
table.insert( data.raw.technology["nuclear-power"].unit.ingredients, {"apm_nuclear_science_pack", 1} )
table.insert( data.raw.technology["se-rtg-equipment"].prerequisites, "apm_nuclear_rtg" )
table.insert( data.raw.technology["se-rtg-equipment"].unit.ingredients, {"apm_nuclear_science_pack", 1} )
table.insert( data.raw.technology["se-rtg-equipment-2"].unit.ingredients, {"fission-science-pack-2", 1} )
table.insert( data.raw.technology["apm_nuclear_science_pack"].unit.ingredients, {"se-rocket-science-pack", 1} )
table.insert( data.raw.technology["apm_nuclear_science_pack"].unit.ingredients, {"space-science-pack", 1} )
table.insert( data.raw.technology["uranium-processing"].prerequisites, "apm_nuclear_science_pack" )
table.insert( data.raw.technology["uranium-processing"].unit.ingredients, {"space-science-pack", 1} )
table.insert( data.raw.technology["uranium-processing"].unit.ingredients, {"apm_nuclear_science_pack", 1} )

--Items
--Nuclear Physics Science Pack
data.raw.recipe["apm_nuclear_science_pack"].group = "science"
data.raw.recipe["apm_nuclear_science_pack"].subgroup = "fission-science-pack"
data.raw.recipe["apm_nuclear_science_pack"].category = "science-pack-creation-1"
data.raw.recipe["apm_nuclear_science_pack"].normal.ingredients = {
	{ "tungsten-plate", 20 },
	{ "fission-catalogue-1", 1 },
	{ "se-significant-data", 1 },
	{ type = "fluid", name = "se-space-coolant-cold", amount = 20}
	}
data.raw.recipe["apm_nuclear_science_pack"].normal.results = {
	{ name = "apm_nuclear_science_pack", amount = 2},
	{ name = "se-junk-data", amount = 6},
	{ type = "fluid", name = "se-space-coolant-hot", amount = 20}
    }
data.raw.recipe["apm_nuclear_science_pack"].normal.main_product = "apm_nuclear_science_pack"
data.raw.recipe["apm_nuclear_science_pack"].expensive.ingredients = {
	{ "tungsten-plate", 20 },
	{ "fission-catalogue-1", 1 },
	{ "se-significant-data", 1 },
	{ type = "fluid", name = "se-space-coolant-cold", amount = 20}
	}
data.raw.recipe["apm_nuclear_science_pack"].expensive.results = {
	{ name = "apm_nuclear_science_pack", amount = 2},
	{ name = "se-junk-data", amount = 6},
	{ type = "fluid", name = "se-space-coolant-hot", amount = 20}
    }
data.raw.recipe["apm_nuclear_science_pack"].expensive.main_product = "apm_nuclear_science_pack"
data.raw.tool["apm_nuclear_science_pack"].icons = {
	{
		icon = util.mod_graphics_path .. "icons/research/fission/all-fission-science-pack-1.png",
		icon_size = 64
	},
	{
		icon = "__space-exploration-graphics__/graphics/icons/number/1.png",
		scale = 0.5,
		shift = { -10, -10},
		icon_size = 20
	}
}
data.raw.tool["apm_nuclear_science_pack"].icon_size = 64
data.raw.tool["apm_nuclear_science_pack"].order = "a-01"
data.raw.tool["apm_nuclear_science_pack"].group = "science"
data.raw.tool["apm_nuclear_science_pack"].subgroup = "fission-science-pack"