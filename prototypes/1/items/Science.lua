local util = require("data-util")

data:extend( {
	{
		type = "item",
		name = "fission-basic-data",
		icon = util.mod_graphics_path .. "icons/research/fission/fission-basic-data.png",
		icon_size = 64,
		subgroup = "data-fission",
		order = "a-01",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-stabilization-data",
		icon = util.mod_graphics_path .. "icons/research/fission/fission-stabilization-data.png",
		icon_size = 64,
		subgroup = "data-fission",
		order = "a-02",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-speed-data",
		icon = util.mod_graphics_path .. "icons/research/fission/fission-speed-data.png",
		icon_size = 64,
		subgroup = "data-fission",
		order = "a-03",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-containment-data",
		icon = util.mod_graphics_path .. "icons/research/fission/fission-containment-data.png",
		icon_size = 64,
		subgroup = "data-fission",
		order = "a-04",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-decay-data",
		icon = util.mod_graphics_path .. "icons/research/fission/fission-decay-data.png",
		icon_size = 64,
		subgroup = "data-fission",
		order = "a-05",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-energy-data",
		icon = util.mod_graphics_path .. "icons/research/fission/fission-energy-data.png",
		icon_size = 64,
		subgroup = "data-fission",
		order = "a-06",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-heating-data",
		icon = util.mod_graphics_path .. "icons/research/fission/fission-heating-data.png",
		icon_size = 64,
		subgroup = "data-fission",
		order = "a-07",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-isotope-data",
		icon = util.mod_graphics_path .. "icons/research/fission/fission-isotope-data.png",
		icon_size = 64,
		subgroup = "data-fission",
		order = "a-08",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-miniturization-data",
		icon = util.mod_graphics_path .. "icons/research/fission/fission-miniturization-data.png",
		icon_size = 64,
		subgroup = "data-fission",
		order = "a-09",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-rotating-data",
		icon = util.mod_graphics_path .. "icons/research/fission/fission-rotating-data.png",
		icon_size = 64,
		subgroup = "data-fission",
		order = "a-10",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-reaction-data",
		icon = util.mod_graphics_path .. "icons/research/fission/fission-reaction-data.png",
		icon_size = 64,
		subgroup = "data-fission",
		order = "a-11",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-structural-data",
		icon = util.mod_graphics_path .. "icons/research/fission/fission-structural-data.png",
		icon_size = 64,
		subgroup = "data-fission",
		order = "a-12",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-trajectory-data",
		icon = util.mod_graphics_path .. "icons/research/fission/fission-trajectory-data.png",
		icon_size = 64,
		subgroup = "data-fission",
		order = "a-13",
		stack_size = 50
	},
	{
		type = "item",
		name = "fisssion-calculation-data",
		icon = util.mod_graphics_path .. "icons/research/fission/fisssion-calculation-data.png",
		icon_size = 64,
		subgroup = "data-fission",
		order = "a-14",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-catalogue-1",
		icons = {
		{
			icon = util.mod_graphics_path .. "icons/research/fission/fission-catalogue-1.png",
			icon_size = 128
		},
		{
			icon = "__space-exploration-graphics__/graphics/icons/number/1.png",
			scale = 0.5,
			shift = { -10, -10},
			icon_size = 20
		}},
		icon_size = 128,
		subgroup = "data-catalogue-fission",
		order = "a-01",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-catalogue-2",
		icons = {
		{
			icon = util.mod_graphics_path .. "icons/research/fission/fission-catalogue-2.png",
			icon_size = 128
		},
		{
			icon = "__space-exploration-graphics__/graphics/icons/number/2.png",
			scale = 0.5,
			shift = { -10, -10},
			icon_size = 20
		}},
		icon_size = 128,
		subgroup = "data-catalogue-fission",
		order = "a-02",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-catalogue-3",
		icons = {
		{
			icon = util.mod_graphics_path .. "icons/research/fission/fission-catalogue-3.png",
			icon_size = 128
		},
		{
			icon = "__space-exploration-graphics__/graphics/icons/number/3.png",
			scale = 0.5,
			shift = { -10, -10},
			icon_size = 20
		}},
		icon_size = 128,
		subgroup = "data-catalogue-fission",
		order = "a-03",
		stack_size = 50
	},
	{
		type = "item",
		name = "fission-catalogue-4",
		icons = {
		{
			icon = util.mod_graphics_path .. "icons/research/fission/fission-catalogue-4.png",
			icon_size = 128
		},
		{
			icon = "__space-exploration-graphics__/graphics/icons/number/4.png",
			scale = 0.5,
			shift = { -10, -10},
			icon_size = 20
		}},
		icon_size = 128,
		subgroup = "data-catalogue-fission",
		order = "a-04",
		stack_size = 50
	},
	{
		type = "tool",
		name = "fission-science-pack-2",
		durability = 1,
		durability_description_key = "description.science-pack-remaining-amount-key",
		durability_description_value = "description.science-pack-remaining-amount-value",
		icons = {
		{
			icon = util.mod_graphics_path .. "icons/research/fission/all-fission-science-pack-2.png",
			icon_size = 64
		},
		{
			icon = "__space-exploration-graphics__/graphics/icons/number/2.png",
			scale = 0.5,
			shift = { -10, -10},
			icon_size = 20
		}},
		icon_size = 64,
		subgroup = "fission-science-pack",
		order = "a-02",
		stack_size = 200
	},
	{
		type = "tool",
		name = "fission-science-pack-3",
		durability = 1,
		durability_description_key = "description.science-pack-remaining-amount-key",
		durability_description_value = "description.science-pack-remaining-amount-value",
		icons = {
		{
			icon = util.mod_graphics_path .. "icons/research/fission/all-fission-science-pack-3.png",
			icon_size = 64
		},
		{
			icon = "__space-exploration-graphics__/graphics/icons/number/3.png",
			scale = 0.5,
			shift = { -10, -10},
			icon_size = 20
		}},
		icon_size = 64,
		subgroup = "fission-science-pack",
		order = "a-03",
		stack_size = 200
	},
	{
		type = "tool",
		name = "fission-science-pack-4",
		durability = 1,
		durability_description_key = "description.science-pack-remaining-amount-key",
		durability_description_value = "description.science-pack-remaining-amount-value",
		icons = {
		{
			icon = util.mod_graphics_path .. "icons/research/fission/all-fission-science-pack-2.png",
			icon_size = 64
		},
		{
			icon = "__space-exploration-graphics__/graphics/icons/number/2.png",
			scale = 0.5,
			shift = { -10, -10},
			icon_size = 20
		}},
		icon_size = 64,
		subgroup = "fission-science-pack",
		order = "a-04",
		stack_size = 200
	},
	{
		type = "item",
		name = "fusion-basic-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-basic-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-01",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-magnet-stabilization-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-magnet-stabilization-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-02",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-speed-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-speed-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-03",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-magnet-containment-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-magnet-containment-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-04",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-laser-decay-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-laser-decay-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-05",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-energy-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-energy-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-06",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-laser-heating-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-laser-heating-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-07",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-radioisotope-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-radioisotope-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-08",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-miniturization-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-miniturization-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-09",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-plasma-rotating-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-plasma-rotating-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-10",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-plasma-spinning-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-plasma-spinning-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-11",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-structural-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-structural-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-12",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-magnet-trajectory-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-magnet-trajectory-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-13",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-laser-calculation-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-laser-calculation-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-14",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-accuracy-data",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-accuracy-data.png",
		icon_size = 64,
		subgroup = "data-fusion",
		order = "a-15",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-catalogue-1",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-catalogue-1.png",
		icon_size = 128,
		subgroup = "data-catalogue-fusion",
		order = "a-01",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-catalogue-2",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-catalogue-2.png",
		icon_size = 128,
		subgroup = "data-catalogue-fusion",
		order = "a-02",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-catalogue-3",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-catalogue-3.png",
		icon_size = 128,
		subgroup = "data-catalogue-fusion",
		order = "a-03",
		stack_size = 50
	},
	{
		type = "item",
		name = "fusion-catalogue-4",
		icon = util.mod_graphics_path .. "icons/research/fusion/fusion-catalogue-4.png",
		icon_size = 128,
		subgroup = "data-catalogue-fusion",
		order = "a-04",
		stack_size = 50
	},
	{
		type = "tool",
		name = "fusion-science-pack-1",
		durability = 1,
		durability_description_key = "description.science-pack-remaining-amount-key",
		durability_description_value = "description.science-pack-remaining-amount-value",
		icon = util.mod_graphics_path .. "icons/research/fusion/all-fusion-science-pack-1.png",
		icon_size = 64,
		subgroup = "fusion-science-pack",
		order = "a-01",
		stack_size = 200
	},
	{
		type = "tool",
		name = "fusion-science-pack-2",
		durability = 1,
		durability_description_key = "description.science-pack-remaining-amount-key",
		durability_description_value = "description.science-pack-remaining-amount-value",
		icon = util.mod_graphics_path .. "icons/research/fusion/all-fusion-science-pack-2.png",
		icon_size = 64,
		subgroup = "fusion-science-pack",
		order = "a-02",
		stack_size = 200
	},
	{
		type = "tool",
		name = "fusion-science-pack-3",
		durability = 1,
		durability_description_key = "description.science-pack-remaining-amount-key",
		durability_description_value = "description.science-pack-remaining-amount-value",
		icon = util.mod_graphics_path .. "icons/research/fusion/all-fusion-science-pack-3.png",
		icon_size = 64,
		subgroup = "fusion-science-pack",
		order = "a-03",
		stack_size = 200
	},
	{
		type = "tool",
		name = "fusion-science-pack-4",
		durability = 1,
		durability_description_key = "description.science-pack-remaining-amount-key",
		durability_description_value = "description.science-pack-remaining-amount-value",
		icon = util.mod_graphics_path .. "icons/research/fusion/all-fusion-science-pack-4.png",
		icon_size = 64,
		subgroup = "fusion-science-pack",
		order = "a-04",
		stack_size = 200
	}
  }
)