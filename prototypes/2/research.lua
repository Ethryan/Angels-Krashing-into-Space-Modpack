--Space Science Fix
data.raw.technology["space-science-pack"].unit.ingredients = {
	{"automation-science-pack", 1},	{"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"se-rocket-science-pack", 1}, {"productivity-science-pack", 1} }
data.raw.technology["space-science-pack"].prerequisites = { "se-rocket-landing-pad" }
data.raw.technology["apm_nuclear_science_pack"].prerequisites = { "space-science-pack" }

table.insert(
	data.raw.technology["steel-processing"].effects, { type = "unlock-recipe", recipe = "eth-galvanized-steel-plate" })