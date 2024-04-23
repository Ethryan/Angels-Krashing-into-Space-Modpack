local util = require("data-util")

data:extend(
	{
		{
			type = "item-group",
			name = "resource-refining",
			order = "la[ethryans]-a[refining]-a",
			icons = {
				{
					icon = util.mod_graphics_path .. "research/ore-sorting.png",
					icon_size = 256,
					icon_mipmaps = 4,
					scale = 0.25,
				},
				{
					icon = util.mod_graphics_path .. "icons/void.png",
					icon_size = 32,
					scale = 64 / 32 * 0.35,
					shift = { 20, -20 },
				},
			},
		},
		--Recipe Categories
		{ 
			type = "recipe-category", 
			name = "ore-crushing"
		},
		{ 
			type = "recipe-category", 
			name = "ore-sorting" 
		},
		{ 
			type = "recipe-category", 
			name = "ore-sorting-2" },
		{ 
			type = "recipe-category", 
			name = "ore-sorting-3" 
		},
		{ 
			type = "recipe-category", 
			name = "ore-sorting-4" 
		},
		{
			type = "item-subgroup",
			name = "processing-crafting",
			group = "resource-refining",
			order = "a[init]-a[crafting]",
		},
		--Machine Categories
		{
			type = "item-subgroup",
			name = "ore-crusher",
			group = "resource-refining",
			order = "z[building]-b[crusher]",
		},
		{
			type = "item-subgroup",
			name = "ore-sorter",
			group = "resource-refining",
			order = "z[building]-a[sorter]",
		},
		--Ore Processing
		{
			type = "item-subgroup",
			name = "ore-processing-iron",
			group = "resource-refining",
			order = "b[processing]-a",
		},
		{
			type = "item-subgroup",
			name = "ore-processing-copper",
			group = "resource-refining",
			order = "b[processing]-b",
		},
		{
			type = "item-subgroup",
			name = "ore-processing-coal",
			group = "resource-refining",
			order = "b[processing]-c",
		},
		{
			type = "item-subgroup",
			name = "ore-processing-uranium",
			group = "resource-refining",
			order = "b[processing]-d",
		},
		{
			type = "item-subgroup",
			name = "ore-processing-thorium",
			group = "resource-refining",
			order = "b[processing]-e",
		},
		{
			type = "item-subgroup",
			name = "ore-processing-tin",
			group = "resource-refining",
			order = "b[processing]-f",
		},
		{
			type = "item-subgroup",
			name = "ore-processing-aluminium",
			group = "resource-refining",
			order = "b[processing]-g",
		},
		{
			type = "item-subgroup",
			name = "ore-processing-lead",
			group = "resource-refining",
			order = "b[processing]-h",
		},
		{
			type = "item-subgroup",
			name = "ore-processing-nickel",
			group = "resource-refining",
			order = "b[processing]-i",
		},
		{
			type = "item-subgroup",
			name = "ore-processing-manganese",
			group = "resource-refining",
			order = "b[processing]-j",
		},
		{
			type = "item-subgroup",
			name = "ore-processing-gold",
			group = "resource-refining",
			order = "b[processing]-k",
		},
		{
			type = "item-subgroup",
			name = "ore-processing-silver",
			group = "resource-refining",
			order = "b[processing]-l",
		},
		--Others
		{
			type = "item-subgroup",
			name = "inserter-2",
			group = "logistics",
			order = "ca",
		},
		{
			type = "item-subgroup",
			name = "belt-2",
			group = "logistics",
			order = "b[belt]-1",
		},
		{
			type = "item-subgroup",
			name = "transport-belt-2",
			group = "logistics",
			order = "b[belt]-aa",
		},
		{
			type = "item-subgroup",
			name = "underground-belt-2",
			group = "logistics",
			order = "b[belt]-ba",
		},
		{
			type = "item-subgroup",
			name = "splitter-2",
			group = "logistics",
			order = "b[belt]-ca",
		},
		{
			type = "item-subgroup",
			name = "lighted-poles",
			group = "logistics",
			order = "da",
		},
		{
			type = "item-subgroup",
			name = "data-catalogue-fission",
			group = "science",
			order = "o-d",
		},
		{
			type = "item-subgroup",
			name = "data-fission",
			group = "science",
			order = "o-e",
		},
		{
			type = "item-subgroup",
			name = "fission-science-pack",
			group = "science",
			order = "o-f",
		},
		{
			type = "item-subgroup",
			name = "data-catalogue-fusion",
			group = "science",
			order = "o-g",
		},
		{
			type = "item-subgroup",
			name = "data-fusion",
			group = "science",
			order = "o-h",
		},
		{
			type = "item-subgroup",
			name = "fusion-science-pack",
			group = "science",
			order = "o-i",
		},
		{
			type = "item-subgroup",
			name = "ammo-pistol",
			group = "ammo",
			order = "a",
		},
		{
			type = "item-subgroup",
			name = "ammo-rifle",
			group = "ammo",
			order = "b",
		},
		{
			type = "item-subgroup",
			name = "ammo-antimaterielrifle",
			group = "ammo",
			order = "c",
		},
		{
			type = "item-subgroup",
			name = "ammo-shotgun",
			group = "ammo",
			order = "d",
		},
		{
			type = "item-subgroup",
			name = "ammo-impulse",
			group = "ammo",
			order = "e",
		},
		{
			type = "item-subgroup",
			name = "ammo-railgun",
			group = "ammo",
			order = "f",
		},
		{
			type = "item-subgroup",
			name = "ammo-shell",
			group = "ammo",
			order = "g",
		},
		{
			type = "item-subgroup",
			name = "ammo-artillery",
			group = "ammo",
			order = "h",
		},
		{
			type = "item-subgroup",
			name = "ammo-rocket",
			group = "ammo",
			order = "i",
		},
		{
			type = "item-subgroup",
			name = "ammo-aai",
			group = "ammo",
			order = "j",
		},
		{
			type = "item-subgroup",
			name = "ammo-grappling",
			group = "ammo",
			order = "k",
		},
		{
			type = "item-subgroup",
			name = "ammo-se",
			group = "ammo",
			order = "l",
		},
	}
)