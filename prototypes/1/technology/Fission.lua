local util = require("data-util")

data:extend({
    {
        type = "technology",
        name = "space-fission-catalogue-1",
        effects = {
            {type = "unlock-recipe", recipe = "fission-catalogue-1"},
			{type = "unlock-recipe", recipe = "fission-basic-data"},
			{type = "unlock-recipe", recipe = "fission-energy-data"},
			{type = "unlock-recipe", recipe = "fission-isotope-data"},
			{type = "unlock-recipe", recipe = "fission-structural-data-1"}
        },
		icon = util.mod_graphics_path .. "icons/research/fission/fission-catalogue-1.png",
        icon_size = 128,
		prerequisites = {
		"kr-research-server",
		"se-space-hypercooling-1", 
		"se-space-thermodynamics-laboratory"
		},
        unit = {
            count = 100,
			time = 60,
            ingredients = {
                { "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "space-science-pack", 1 }
            }
        }
    }
  }
)