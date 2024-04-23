require("prototypes/3/recipe/recipefix")
require("prototypes/3/recipe/research-edits")
require("prototypes/3/equipment/fixes")
require("prototypes/3/sorting/materialsorter")
require("prototypes/3/sorting/fluidsorter")
require("prototypes/3/sorting/circuitsorter")
require("prototypes/3/sorting/ammosorter")
require("prototypes/3/sorting/logisticssorter")
require("prototypes/3/sorting/bobscircuits")
require("prototypes/3/sorting/science")
require("prototypes/3/sorting/reactors")
require("prototypes/3/sorting/equipment")
require("prototypes/compat")

if settings.startup["rfp-antimatter"].value then
	data.raw.item["rfp-antimatter-research-data"].stack_size = 200
end

--APM Mods
data.raw["item-group"]["apm_nuclear"].order = "c-z"
data.raw.item["apm_radioactive_waste"].stack_size = 200
data.raw.item["apm_nuclear_ash"].stack_size = 200