local util = require("data-util")

--Recipes
--Phenol
data.raw.item["phenol"].fuel_value = "500KJ"
data.raw.item["phenol"].fuel_category = "chemical"

--Coke
data.raw.recipe["coke"].results = {
	{"coke", 6},
	{type = "item", name = "phenol", amount = 3, probability = 0.5},
	{type = "item", name = "toluene", amount = 1, probability = 0.6}}
	
--Hydrogen Chloride
data.raw.recipe["hydrogen-chloride"].results = {
	{type = "fluid", name = "hydrogen-chloride", amount = 35},
	{type = "fluid", name = "chemical-waste", amount = 15}}
data.raw.recipe["hydrogen-chloride"].main_product = "hydrogen-chloride"

--Oil
data.raw.recipe["basic-oil-processing"].results = {
	{type = "item", name = "sulfur", amount = 1, probability = 0.5},
	{type = "item", name = "phenol", amount = 1, probability = 0.4},
	{type = "item", name = "toluene", amount = 1, probability = 0.15},
	{type = "fluid", name = "petroleum-gas", amount = 90}}
data.raw.recipe["basic-oil-processing-rfp-ddw"].results = {
	{type = "item", name = "sulfur", amount = 1, probability = 0.5},
	{type = "item", name = "phenol", amount = 1, probability = 0.4},
	{type = "item", name = "toluene", amount = 1, probability = 0.15},
	{type = "fluid", name = "petroleum-gas", amount = 90}}

data.raw.recipe["oil-processing-heavy"].normal.results = {
	{type = "item", name = "sulfur", amount = 1, probability = 0.5},
	{type = "item", name = "phenol", amount = 1, probability = 0.4},
	{type = "item", name = "toluene", amount = 1, probability = 0.15},
	{type = "fluid", name = "heavy-oil", amount = 70},
	{type = "fluid", name = "light-oil", amount = 30},
	{type = "fluid", name = "petroleum-gas", amount = 20}}
data.raw.recipe["oil-processing-heavy-rfp-ddw"].normal.results = {
	{type = "item", name = "sulfur", amount = 1, probability = 0.5},
	{type = "item", name = "phenol", amount = 1, probability = 0.4},
	{type = "item", name = "toluene", amount = 1, probability = 0.15},
	{type = "fluid", name = "heavy-oil", amount = 70},
	{type = "fluid", name = "light-oil", amount = 30},
	{type = "fluid", name = "petroleum-gas", amount = 20}}

data.raw.recipe["advanced-oil-processing"].normal.results = {
	{type = "item", name = "sulfur", amount = 1, probability = 0.5},
	{type = "item", name = "phenol", amount = 1, probability = 0.4},
	{type = "item", name = "toluene", amount = 1, probability = 0.15},
	{type = "fluid", name = "heavy-oil", amount = 20},
	{type = "fluid", name = "light-oil", amount = 50},
	{type = "fluid", name = "petroleum-gas", amount = 30}}
data.raw.recipe["advanced-oil-processing-rfp-ddw"].normal.results = {
	{type = "item", name = "sulfur", amount = 1, probability = 0.5},
	{type = "item", name = "phenol", amount = 1, probability = 0.4},
	{type = "item", name = "toluene", amount = 1, probability = 0.15},
	{type = "fluid", name = "heavy-oil", amount = 20},
	{type = "fluid", name = "light-oil", amount = 50},
	{type = "fluid", name = "petroleum-gas", amount = 30}}

data.raw.recipe["heavy-oil-cracking"].results = {
	{type = "item", name = "phenol", amount = 1, probability = 0.05},
	{type = "item", name = "toluene", amount = 1, probability = 0.1},
	{type = "fluid", name = "light-oil", amount = 30}}
data.raw.recipe["heavy-oil-cracking-rfp-ddw"].results = {
	{type = "item", name = "phenol", amount = 1, probability = 0.05},
	{type = "item", name = "toluene", amount = 1, probability = 0.1},
	{type = "fluid", name = "light-oil", amount = 30}}

data.raw.recipe["light-oil-cracking"].results = {
	{type = "item", name = "phenol", amount = 1, probability = 0.05},
	{type = "item", name = "toluene", amount = 1, probability = 0.1},
	{type = "fluid", name = "petroleum-gas", amount = 20}}
data.raw.recipe["light-oil-cracking-rfp-ddw"].results = {
	{type = "item", name = "phenol", amount = 1, probability = 0.05},
	{type = "item", name = "toluene", amount = 1, probability = 0.1},
	{type = "fluid", name = "petroleum-gas", amount = 20}}

--Research
util.remove_recipes_from_technologies({"phenol"})