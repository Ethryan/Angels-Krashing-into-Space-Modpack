local util = require("data-util")

--Fix Amator Research
data.raw.technology["nuclear-fuel-reprocessing"].icon = util.mod_graphics_path .. "research/nuclear-uranium-reprocessing.png"
data.raw.technology["nuclear-fuel-reprocessing"].icon_size = 128

--data.raw.recipe["MOX-fuel"].group = "apm_nuclear"
--data.raw.recipe["MOX-fuel"].subgroup = "apm_nuclear_fuel"
--data.raw.recipe["MOX-reactor"].group = "apm_nuclear"
--data.raw.recipe["MOX-reactor"].subgroup = "apm_nuclear_machines_2"
data.raw.recipe["realistic-reactor"].group = "apm_nuclear"
data.raw.recipe["realistic-reactor"].subgroup = "apm_nuclear_machines_2"
data.raw.recipe["breeder-reactor"].group = "apm_nuclear"
data.raw.recipe["breeder-reactor"].subgroup = "apm_nuclear_machines_2"
data.raw.recipe["rr-cooling-tower"].group = "apm_nuclear"
data.raw.recipe["rr-cooling-tower"].subgroup = "apm_nuclear_machines_2"
data.raw.recipe["reactor-sarcophagus"].group = "apm_nuclear"
data.raw.recipe["reactor-sarcophagus"].subgroup = "apm_nuclear_machines_2"

util.replace_or_add_ingredient("apm_nuclear_breeder", "nuclear-reactor", "realistic-reactor", 1, false)