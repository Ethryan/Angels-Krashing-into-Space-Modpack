local util = require("data-util")

data:extend( {
	--Fission Data Cards
	{
		type = "recipe",
		name = "fission-basic-data",
			ingredients = {
				{ "uranium-ore", 1},
				{ "thorium-ore", 1},
				{ "se-empty-data", 1},
				{ type = "fluid", name = "se-space-coolant-cold", amount=10},
			},
			results = {
				{ name = "fission-basic-data", amount = 1},
				{ name = "se-contaminated-scrap", amount = 2},
				{ type = "fluid", name = "se-space-coolant-hot", amount=10}
			},
			energy_required = 2,
			main_product = "fission-basic-data",
			category = "space-supercomputing-1",
			enabled = false,
			always_show_made_in = true,
	},
	{
		type = "recipe",
		name = "fission-energy-data",
			ingredients = {
				{ "fission-basic-data", 1},
				{ "cpu", 2},
				{ "battery", 2},
				{ type = "fluid", name = "se-space-coolant-cold", amount=10},
			},
			results = {
				{ name = "fission-energy-data", amount = 1},
				{ name = "se-contaminated-scrap", amount = 2},
				{ type = "fluid", name = "se-space-coolant-hot", amount=10}
			},
			energy_required = 2,
			main_product = "fission-energy-data",
			category = "space-thermodynamics",
			enabled = false,
			always_show_made_in = true,
	},
	{
		type = "recipe",
		name = "fission-isotope-data",
			ingredients = {
				{ "fission-basic-data", 1},
				{ "laboratory-gear", 4},
				{ "uranium-ore", 1},
				{ type = "fluid", name = "se-space-coolant-cold", amount=10},
			},
			results = {
				{ name = "fission-isotope-data", amount = 1},
				{ name = "se-contaminated-scrap", amount = 2},
				{ type = "fluid", name = "se-space-coolant-hot", amount=10}
			},
			energy_required = 2,
			main_product = "fission-isotope-data",
			category = "space-thermodynamics",
			enabled = false,
			always_show_made_in = true,
	},
	{
		type = "recipe",
		name = "fission-structural-data-1",
			ingredients = {
				{ "fission-basic-data", 1},
				{ "laboratory-gear", 4},
				{ "lead-plate", 20},
				{ type = "fluid", name = "se-space-coolant-cold", amount=10},
			},
			results = {
				{ name = "fission-structural-data", amount = 1},
				{ name = "se-contaminated-scrap", amount = 20},
				{ type = "fluid", name = "se-space-coolant-hot", amount=10}
			},
			energy_required = 2,
			main_product = "fission-structural-data",
			category = "space-thermodynamics",
			enabled = false,
			always_show_made_in = true,
	},
	{
		type = "recipe",
		name = "fission-structural-data-2",
			ingredients = {
				{ "fission-basic-data", 1},
				{ "laboratory-gear", 4},
				{ "lead-plate", 4},
				{ "apm_fuel_rod_container", 1},
				{ type = "fluid", name = "se-space-coolant-cold", amount=10},
			},
			results = {
				{ name = "fission-structural-data", amount = 1},
				{ name = "se-contaminated-scrap", amount = 5},
				{ type = "fluid", name = "se-space-coolant-hot", amount=10}
			},
			energy_required = 2,
			main_product = "fission-structural-data",
			category = "space-thermodynamics",
			enabled = false,
			always_show_made_in = true,
	},
	{
		type = "recipe",
		name = "fission-catalogue-1",
		allow_productivity = true,
		ingredients = {
			{ "fission-basic-data", 1 },
			{ "fission-energy-data", 1 },
			{ "fission-isotope-data", 1 },
			{ "fission-structural-data", 1 },
			{ type = "fluid", name = "se-space-coolant-cold", amount=10},
		},
		results = {
			{ name = "fission-catalogue-1", amount = 1},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
		energy_required = 20,
		main_product = "fission-catalogue-1",
		category = "catalogue-creation-1",
		enabled = false,
		always_show_made_in = true,
	}
} )