local util = require("data-util")

data.raw["generator-equipment"]["apm_rtg_radioisotope_thermoelectric_generator"].power = "125kW"
util.replace_or_add_ingredient("se-rtg-equipment", nil, "apm_rtg_radioisotope_thermoelectric_generator" , 4, false)