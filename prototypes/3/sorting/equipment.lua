local util = require("data-util")

data:extend(
	{
		{
		type = "item-subgroup",
		name = "repair-packs",
		group = "combat",
		order = "a-b",
		},
	}
)

--Repair Packs
data.raw.recipe["repair-pack"].order = "ba"
data.raw.recipe["repair-pack"].subgroup = "repair-packs"
data.raw.recipe["copper-repair-recipe"].order = "bb"
data.raw.recipe["copper-repair-recipe"].subgroup = "repair-packs"
data.raw.recipe["steel-repair-recipe"].order = "bc"
data.raw.recipe["steel-repair-recipe"].subgroup = "repair-packs"
data.raw.recipe["field-repair-recipe"].order = "bd"
data.raw.recipe["field-repair-recipe"].subgroup = "repair-packs"
data.raw.recipe["multitool-repair-recipe"].order = "be"
data.raw.recipe["multitool-repair-recipe"].subgroup = "repair-packs"
data.raw.recipe["multitool-repair-recipe"].category = "advanced-crafting"
data.raw["repair-tool"]["multitool-repair-pack"].stack_size = 200

--Weapons
data.raw.recipe["w93-modular-gun-hmg"].category = "advanced-crafting"
data.raw.recipe["w93-modular-gun-hmg"].subgroup = "gun"
data.raw.recipe["w93-modular-gun-tlaser"].category = "advanced-crafting"
data.raw.recipe["w93-modular-gun-tlaser"].subgroup = "equipment"