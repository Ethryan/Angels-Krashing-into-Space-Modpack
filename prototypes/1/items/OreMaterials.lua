local util = require("data-util")

data:extend({
---------------------------------------------------------------------------
-- TIER 1 -----------------------------------------------------------------
---------------------------------------------------------------------------
	{
	type = "item",
	name = "eth-iron-ore-crushed",
	icons = {
		{
		icon = util.mod_graphics_path .. "icons/materials/crushed/crushed.png",
		tint = { r = 200 / 255, g = 200 / 255, b = 200 / 255 },
		icon_size = 32
		}
	},
	--icon_mipmaps = 8,
	pictures = {
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-1.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 200 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-2.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 200 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-3.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 200 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-4.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 200 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-5.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 200 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-6.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 200 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-7.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 200 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-8.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 200 / 255 },
		},
	},
	subgroup = "ore-processing-iron",
	order = "a",
	stack_size = 50,
	},
	{
	type = "item",
	name = "eth-copper-ore-crushed",
	icons = {
		{
		icon = util.mod_graphics_path .. "icons/materials/crushed/crushed.png",
		tint = { r = 255 / 255, g = 100 / 255, b = 0 / 255 },
		icon_size = 32
		}
	},
	--icon_mipmaps = 8,
	pictures = {
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-1.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 100 / 255, b = 0 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-2.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 100 / 255, b = 0 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-3.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 100 / 255, b = 0 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-4.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 100 / 255, b = 0 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-5.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 100 / 255, b = 0 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-6.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 100 / 255, b = 0 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-7.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 100 / 255, b = 0 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-8.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 100 / 255, b = 0 / 255 },
		},
	},
	subgroup = "ore-processing-copper",
	order = "a",
	stack_size = 50,
	},
	{
	type = "item",
	name = "eth-coal-ore-crushed",
	icons = {
		{
		icon = util.mod_graphics_path .. "icons/materials/crushed/crushed.png",
		tint = { r = 70 / 255, g = 70 / 255, b = 70 / 255 },
		icon_size = 32
		}
	},
	--icon_mipmaps = 8,
	pictures = {
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-1.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 70 / 255, g = 70 / 255, b = 70 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-2.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 70 / 255, g = 70 / 255, b = 70 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-3.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 70 / 255, g = 70 / 255, b = 70 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-4.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 70 / 255, g = 70 / 255, b = 70 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-5.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 70 / 255, g = 70 / 255, b = 70 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-6.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 70 / 255, g = 70 / 255, b = 70 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-7.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 70 / 255, g = 70 / 255, b = 70 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-8.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 70 / 255, g = 70 / 255, b = 70 / 255 },
		},
	},
	subgroup = "ore-processing-coal",
	order = "a",
	stack_size = 50,
	},
	{
	type = "item",
	name = "eth-tin-ore-crushed",
	icons = {
		{
		icon = util.mod_graphics_path .. "icons/materials/crushed/crushed.png",
		tint = { r = 220 / 255, g = 220 / 255, b = 220 / 255 },
		icon_size = 32
		}
	},
	--icon_mipmaps = 8,
	pictures = {
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-1.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 220 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-2.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 220 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-3.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 220 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-4.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 220 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-5.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 220 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-6.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 220 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-7.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 220 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-8.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 220 / 255 },
		},
	},
	subgroup = "ore-processing-tin",
	order = "a",
	stack_size = 50,
	},
	{
	type = "item",
	name = "eth-uranium-ore-crushed",
	icons = {
		{
		icon = util.mod_graphics_path .. "icons/materials/crushed/crushed.png",
		tint = { r = 50 / 255, g = 240 / 255, b = 50 / 255 },
		icon_size = 32
		}
	},
	--icon_mipmaps = 8,
	pictures = {
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-1.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 50 / 255, g = 240 / 255, b = 50 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-2.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 50 / 255, g = 240 / 255, b = 50 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-3.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 50 / 255, g = 240 / 255, b = 50 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-4.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 50 / 255, g = 240 / 255, b = 50 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-5.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 50 / 255, g = 240 / 255, b = 50 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-6.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 50 / 255, g = 240 / 255, b = 50 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-7.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 50 / 255, g = 240 / 255, b = 50 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-8.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 50 / 255, g = 240 / 255, b = 50 / 255 },
		},
	},
	subgroup = "ore-processing-uranium",
	order = "a",
	stack_size = 50,
	},
	{
	type = "item",
	name = "eth-thorium-ore-crushed",
	icons = {
		{
		icon = util.mod_graphics_path .. "icons/materials/crushed/crushed.png",
		tint = { r = 0 / 255, g = 30 / 255, b = 0 / 255 },
		icon_size = 32
		}
	},
	--icon_mipmaps = 8,
	pictures = {
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-1.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 0 / 255, g = 30 / 255, b = 0 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-2.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 0 / 255, g = 30 / 255, b = 0 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-3.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 0 / 255, g = 30 / 255, b = 0 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-4.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 0 / 255, g = 30 / 255, b = 0 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-5.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 0 / 255, g = 30 / 255, b = 0 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-6.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 0 / 255, g = 30 / 255, b = 0 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-7.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 0 / 255, g = 30 / 255, b = 0 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-8.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 0 / 255, g = 30 / 255, b = 0 / 255 },
		},
	},
	subgroup = "ore-processing-thorium",
	order = "a",
	stack_size = 50,
	},
	{
	type = "item",
	name = "eth-aluminium-ore-crushed",
	icons = {
		{
		icon = util.mod_graphics_path .. "icons/materials/crushed/crushed.png",
		tint = { r = 128 / 255, g = 200 / 255, b = 240 / 255 },
		icon_size = 32
		}
	},
	--icon_mipmaps = 8,
	pictures = {
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-1.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 128 / 255, g = 200 / 255, b = 240 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-2.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 128 / 255, g = 200 / 255, b = 240 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-3.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 128 / 255, g = 200 / 255, b = 240 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-4.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 128 / 255, g = 200 / 255, b = 240 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-5.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 128 / 255, g = 200 / 255, b = 240 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-6.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 128 / 255, g = 200 / 255, b = 240 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-7.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 128 / 255, g = 200 / 255, b = 240 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-8.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 128 / 255, g = 200 / 255, b = 240 / 255 },
		},
	},
	subgroup = "ore-processing-aluminium",
	order = "a",
	stack_size = 50,
	},
	{
	type = "item",
	name = "eth-lead-ore-crushed",
	icons = {
		{
		icon = util.mod_graphics_path .. "icons/materials/crushed/crushed.png",
		tint = { r = 140 / 255, g = 100 / 255, b = 140 / 255 },
		icon_size = 32
		}
	},
	--icon_mipmaps = 8,
	pictures = {
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-1.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 140 / 255, g = 100 / 255, b = 140 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-2.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 140 / 255, g = 100 / 255, b = 140 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-3.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 140 / 255, g = 100 / 255, b = 140 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-4.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 140 / 255, g = 100 / 255, b = 140 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-5.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 140 / 255, g = 100 / 255, b = 140 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-6.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 140 / 255, g = 100 / 255, b = 140 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-7.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 140 / 255, g = 100 / 255, b = 140 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-8.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 140 / 255, g = 100 / 255, b = 140 / 255 },
		},
	},
	subgroup = "ore-processing-lead",
	order = "a",
	stack_size = 50,
	},
	{
	type = "item",
	name = "eth-nickel-ore-crushed",
	icons = {
		{
		icon = util.mod_graphics_path .. "icons/materials/crushed/crushed.png",
		tint = { r = 200 / 255, g = 200 / 255, b = 250 / 255 },
		icon_size = 32
		}
	},
	--icon_mipmaps = 8,
	pictures = {
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-1.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 250 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-2.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 250 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-3.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 250 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-4.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 250 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-5.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 250 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-6.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 250 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-7.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 250 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-8.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 200 / 255, g = 200 / 255, b = 250 / 255 },
		},
	},
	subgroup = "ore-processing-nickel",
	order = "a",
	stack_size = 200,
	},
	{
	type = "item",
	name = "eth-manganese-ore-crushed",
	icons = {
		{
		icon = util.mod_graphics_path .. "icons/materials/crushed/crushed.png",
		tint = { r = 250 / 255, g = 250 / 255, b = 250 / 255 },
		icon_size = 32
		}
	},
	--icon_mipmaps = 8,
	pictures = {
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-1.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 250 / 255, g = 250 / 255, b = 250 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-2.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 250 / 255, g = 250 / 255, b = 250 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-3.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 250 / 255, g = 250 / 255, b = 250 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-4.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 250 / 255, g = 250 / 255, b = 250 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-5.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 250 / 255, g = 250 / 255, b = 250 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-6.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 250 / 255, g = 250 / 255, b = 250 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-7.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 250 / 255, g = 250 / 255, b = 250 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-8.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 250 / 255, g = 250 / 255, b = 250 / 255 },
		},
	},
	subgroup = "ore-processing-manganese",
	order = "a",
	stack_size = 50,
	},
	{
	type = "item",
	name = "eth-gold-ore-crushed",
	icons = {
		{
		icon = util.mod_graphics_path .. "icons/materials/crushed/crushed.png",
		tint = { r = 255 / 255, g = 255 / 255, b = 30 / 255 },
		icon_size = 32
		}
	},
	--icon_mipmaps = 8,
	pictures = {
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-1.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 255 / 255, b = 30 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-2.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 255 / 255, b = 30 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-3.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 255 / 255, b = 30 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-4.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 255 / 255, b = 30 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-5.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 255 / 255, b = 30 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-6.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 255 / 255, b = 30 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-7.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 255 / 255, b = 30 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-8.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 255 / 255, g = 255 / 255, b = 30 / 255 },
		},
	},
	subgroup = "ore-processing-gold",
	order = "a",
	stack_size = 50,
	},
	{
	type = "item",
	name = "eth-silver-ore-crushed",
	icons = {
		{
		icon = util.mod_graphics_path .. "icons/materials/crushed/crushed.png",
		tint = { r = 220 / 255, g = 220 / 255, b = 255 / 255 },
		icon_size = 32
		}
	},
	--icon_mipmaps = 8,
	pictures = {
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-1.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 255 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-2.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 255 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-3.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 255 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-4.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 255 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-5.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 255 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-6.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 255 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-7.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 255 / 255 },
		},
		{
			size = 64,
			filename = util.mod_graphics_path .. "icons/materials/crushed/crushed-8.png",
			scale = 0.25,
			mipmap_count = 1,
			tint = { r = 220 / 255, g = 220 / 255, b = 255 / 255 },
		},
	},
	subgroup = "ore-processing-silver",
	order = "a",
	stack_size = 50,
	},
	---------------------------------------------------------------------------
	-- TIER 2 -----------------------------------------------------------------
	---------------------------------------------------------------------------
	{
		type = "item",
		name = "eth-iron-ore-chunk",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/chunk/chunk.png",
			tint = { r = 200 / 255, g = 200 / 255, b = 200 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-iron",
		order = "b",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-copper-ore-chunk",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/chunk/chunk.png",
			tint = { r = 255 / 255, g = 100 / 255, b = 0 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-copper",
		order = "b",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-coal-ore-chunk",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/chunk/chunk.png",
			tint = { r = 70 / 255, g = 70 / 255, b = 70 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-coal",
		order = "b",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-tin-ore-chunk",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/chunk/chunk.png",
			tint = { r = 220 / 255, g = 220 / 220, b = 220 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-tin",
		order = "b",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-uranium-ore-chunk",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/chunk/chunk.png",
			tint = { r = 50 / 255, g = 240 / 255, b = 50 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-uranium",
		order = "b",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-thorium-ore-chunk",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/chunk/chunk.png",
			tint = { r = 0 / 255, g = 30 / 255, b = 0 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-thorium",
		order = "b",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-aluminium-ore-chunk",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/chunk/chunk.png",
			tint = { r = 128 / 255, g = 200 / 255, b = 240 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-aluminium",
		order = "b",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-lead-ore-chunk",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/chunk/chunk.png",
			tint = { r = 140 / 255, g = 100 / 255, b = 140 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-lead",
		order = "b",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-nickel-ore-chunk",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/chunk/chunk.png",
			tint = { r = 200 / 255, g = 200 / 255, b = 250 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-nickel",
		order = "b",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-manganese-ore-chunk",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/chunk/chunk.png",
			tint = { r = 250 / 255, g = 250 / 255, b = 250 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-manganese",
		order = "b",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-gold-ore-chunk",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/chunk/chunk.png",
			tint = { r = 255 / 255, g = 255 / 255, b = 30 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-gold",
		order = "b",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-silver-ore-chunk",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/chunk/chunk.png",
			tint = { r = 220 / 255, g = 220 / 255, b = 255 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-silver",
		order = "b",
		stack_size = 100,
	},
  ---------------------------------------------------------------------------
  -- TIER 3 -----------------------------------------------------------------
  ---------------------------------------------------------------------------
	{
		type = "item",
		name = "eth-iron-ore-crystal",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/crystal/crystal.png",
			tint = { r = 200 / 255, g = 200 / 255, b = 200 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-iron",
		order = "c",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-copper-ore-crystal",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/crystal/crystal.png",
			tint = { r = 255 / 255, g = 100 / 255, b = 0 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-copper",
		order = "c",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-coal-ore-crystal",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/crystal/crystal.png",
			tint = { r = 70 / 255, g = 70 / 255, b = 70 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-coal",
		order = "c",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-tin-ore-crystal",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/crystal/crystal.png",
			tint = { r = 220 / 255, g = 220 / 220, b = 220 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-tin",
		order = "c",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-uranium-ore-crystal",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/crystal/crystal.png",
			tint = { r = 50 / 255, g = 240 / 255, b = 50 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-uranium",
		order = "c",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-thorium-ore-crystal",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/crystal/crystal.png",
			tint = { r = 0 / 255, g = 30 / 255, b = 0 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-thorium",
		order = "c",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-aluminium-ore-crystal",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/crystal/crystal.png",
			tint = { r = 128 / 255, g = 200 / 255, b = 240 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-aluminium",
		order = "c",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-lead-ore-crystal",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/crystal/crystal.png",
			tint = { r = 140 / 255, g = 100 / 255, b = 140 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-lead",
		order = "c",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-nickel-ore-crystal",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/crystal/crystal.png",
			tint = { r = 200 / 255, g = 200 / 255, b = 250 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-nickel",
		order = "c",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-manganese-ore-crystal",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/crystal/crystal.png",
			tint = { r = 250 / 255, g = 250 / 255, b = 250 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-manganese",
		order = "c",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-gold-ore-crystal",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/crystal/crystal.png",
			tint = { r = 255 / 255, g = 255 / 255, b = 30 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-gold",
		order = "c",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-silver-ore-crystal",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/crystal/crystal.png",
			tint = { r = 220 / 255, g = 220 / 255, b = 255 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-silver",
		order = "c",
		stack_size = 100,
	},
  ---------------------------------------------------------------------------
  -- TIER 4 -----------------------------------------------------------------
  ---------------------------------------------------------------------------
	{
		type = "item",
		name = "eth-iron-ore-pure",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/pure/pure.png",
			tint = { r = 200 / 255, g = 200 / 255, b = 200 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-iron",
		order = "d",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-copper-ore-pure",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/pure/pure.png",
			tint = { r = 255 / 255, g = 100 / 255, b = 0 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-copper",
		order = "d",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-coal-ore-pure",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/pure/pure.png",
			tint = { r = 70 / 255, g = 70 / 255, b = 70 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-coal",
		order = "d",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-tin-ore-pure",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/pure/pure.png",
			tint = { r = 220 / 255, g = 220 / 220, b = 220 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-tin",
		order = "d",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-uranium-ore-pure",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/pure/pure.png",
			tint = { r = 50 / 255, g = 240 / 255, b = 50 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-uranium",
		order = "d",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-thorium-ore-pure",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/pure/pure.png",
			tint = { r = 0 / 255, g = 30 / 255, b = 0 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-thorium",
		order = "d",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-aluminium-ore-pure",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/pure/pure.png",
			tint = { r = 128 / 255, g = 200 / 255, b = 240 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-aluminium",
		order = "d",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-lead-ore-pure",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/pure/pure.png",
			tint = { r = 140 / 255, g = 100 / 255, b = 140 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-lead",
		order = "d",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-nickel-ore-pure",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/pure/pure.png",
			tint = { r = 200 / 255, g = 200 / 255, b = 250 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-nickel",
		order = "d",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-manganese-ore-pure",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/pure/pure.png",
			tint = { r = 250 / 255, g = 250 / 255, b = 250 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-manganese",
		order = "d",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-gold-ore-pure",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/pure/pure.png",
			tint = { r = 255 / 255, g = 255 / 255, b = 30 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-gold",
		order = "d",
		stack_size = 100,
	},
	{
		type = "item",
		name = "eth-silver-ore-pure",
		icons = {
			{
			icon = util.mod_graphics_path .. "icons/materials/pure/pure.png",
			tint = { r = 220 / 255, g = 220 / 255, b = 255 / 255 },
			icon_size = 32
			}
		},
		subgroup = "ore-processing-silver",
		order = "d",
		stack_size = 100,
	},
  ---------------------------------------------------------------------------
  -- EXTRAS -----------------------------------------------------------------
  ---------------------------------------------------------------------------
	--slag
	--stone-dust
})
