local util = require("data-util")

data:extend({
	{
        type = "technology",
        name = "tin-processing",
        effects = {
        },
		icon = util.mod_graphics_path .. "research/smelting-tin-tech.png",
        icon_size = 256,
		prerequisites = {"fuel-processing"},
        unit = {
            count = 10,
			time = 15,
            ingredients = {
				{ "basic-tech-card", 1 }
			}
        }
    },
	{
        type = "technology",
        name = "lead-processing",
        effects = {
        },
		icon = util.mod_graphics_path .. "research/smelting-lead-tech.png",
        icon_size = 256,
		prerequisites = {"fuel-processing"},
        unit = {
            count = 10,
			time = 15,
            ingredients = {
				{ "basic-tech-card", 1 }
			}
        }
    },
	{
        type = "technology",
        name = "zinc-processing",
        effects = {
        },
		icon = util.mod_graphics_path .. "research/smelting-zinc-tech.png",
        icon_size = 256,
		prerequisites = {"fuel-processing"},
        unit = {
            count = 10,
			time = 15,
            ingredients = {
				{ "basic-tech-card", 1 }
			}
        }
    },
	{
        type = "technology",
        name = "nickel-processing",
        effects = {
        },
		icon = util.mod_graphics_path .. "research/smelting-nickel-tech.png",
        icon_size = 256,
		prerequisites = {"fuel-processing"},
        unit = {
            count = 10,
			time = 15,
            ingredients = {
				{ "basic-tech-card", 1 }
			}
        }
    },
	{
        type = "technology",
        name = "brass-processing",
        effects = {
        },
		icon = "__BrassTacks__/graphics/galdoc/icons/brass-plate.png",
        icon_size = 64,
		prerequisites = {"zinc-processing", "copper-processing" },
        unit = {
            count = 10,
			time = 15,
            ingredients = {
				{ "basic-tech-card", 1 }
			}
        }
    },
    {
        type = "technology",
        name = "tantalite-processing",
        effects = {
			{type = "unlock-recipe", recipe = "tantalum-wire"},
            {type = "unlock-recipe", recipe = "basic-electronic-components-tantalum"}
        },
		icon = "__Tantalite__/graphics/icons/tantalite-ore.png",
        icon_size = 64,
		prerequisites = {"logistic-science-pack"},
        unit = {
            count = 100,
			time = 60,
            ingredients = {
				{ "basic-tech-card", 1 },
                { "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 }
			}
        }
    },
	{
        type = "technology",
        name = "eth-basic-automation",
        effects = {
        },
		icon = "__aai-industry__/graphics/entity/burner-assembling-machine/hr-burner-assembling-machine.png",
        icon_size = 226,
		prerequisites = {"brass-processing"},
        unit = {
            count = 10,
			time = 15,
            ingredients = {
				{ "basic-tech-card", 1 }
			}
        }
    }
})