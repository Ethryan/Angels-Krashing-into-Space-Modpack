

data:extend( {
  {
    type = "recipe",
    name = "eth-rubber",
    icon = "__MDbobelectronics__/graphics/icons/rubber.png",
    icon_size = 32,
    subgroup = "bob-resource-chemical",
    order = "f[rubber]",
    category = "basic-chemistry",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
	  { "bismuth-plate", 1},
	  { "sulfur", 1},
      { "resin", 12},
	  {type="fluid", name="water", amount = 50}
    },
    results = 
	{
	  {"rubber", 4},
	  {type = "item", name = "bismuth-plate", amount = 1, catalyst_amount = 1, probability = 0.6}, 
	  {type = "fluid", name = "chemical-waste", amount = 20}
	},
    allow_decomposition = false
  },
  {
    type = "recipe",
    name = "eth-oxygen",
    icon = "__Krastorio2Assets__/icons/fluids/oxygen.png",
	icon_size = 64,
    subgroup = "raw-material",
    order = "f",
    category = "chemistry",
    enabled = false,
    energy_required = 20,
	emissions_multiplier = 3,
    ingredients =
    {
	  { "coke", 6},
	  {type="fluid", name="water", amount = 200}
    },
    results = 
	{
	  {type = "fluid", name = "oxygen", amount = 20}
	},
    allow_decomposition = false
  }
})
