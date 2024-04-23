local util = require("data-util")

data.raw.recipe["copper-repair-recipe"].enabled = false

--Research
data:extend({
    {
        type = "technology",
        name = "copper-repair-tech",
        effects = {{type = "unlock-recipe", recipe = "copper-repair-recipe"}},
		icon = "__More_Repair_Packs__/graphics/items/copper-repair-pack.png",
        icon_size = 64,
		prerequisites = {"copper-processing", "electronics"},
        unit = {
            count = 100,
			time = 60,
            ingredients = {
				{ "basic-tech-card", 1 },
                { "automation-science-pack", 1 }
            }
        }
    }
})