local util = require("data-util")

--Rubber
data.raw.item["rubber"].icon = "__MDbobelectronics__/graphics/icons/rubber.png"
data.raw.item["rubber"].icon_size = 32
data.raw.item["rubber"].group = "bob-intermediate-products"
data.raw.item["rubber"].subgroup = "bob-resource-chemical"
data.raw.recipe["rubber"].group = "bob-intermediate-products"
data.raw.recipe["rubber"].subgroup = "bob-resource-chemical"
data.raw.recipe["rubber-rfp-ddw"].group = "bob-intermediate-products"
data.raw.recipe["rubber-rfp-ddw"].subgroup = "bob-resource-chemical"
data.raw.recipe["synthetic-rubber"].group = "bob-intermediate-products"
data.raw.recipe["synthetic-rubber"].subgroup = "bob-resource-chemical"
data.raw.recipe["synthetic-rubber"].icons = {
  {
	icon = "__MDbobelectronics__/graphics/icons/rubber.png",
	icon_size = 32
  },
  {
    icon = "__BrimStuff__/graphics/icons/toluene.png",
    icon_size = 64,
    scale = 0.25,
    shift = {-8, -8}
  }
}

util.replace_or_add_ingredient("bob-rubber", "resin", "resin" , 6, false)
util.replace_or_add_ingredient("bob-rubber", nil, "water" , 50, true)
data.raw.recipe["bob-rubber"].category = "basic-chemistry"
data.raw.recipe["bob-rubber"].results = 
	{
	  {"rubber", 2},
	  {type = "item", name = "bismuth-plate", amount = 1, catalyst_amount = 1, probability = 0.4}, 
	  {type = "fluid", name = "chemical-waste", amount = 20}
	}
data.raw.recipe["bob-rubber"].energy_required = 1
data.raw.recipe["bob-resin-wood"].category = "basic-chemistry"

--Circuit Parts
data.raw.item["pcb-substrate"].group = "bob-intermediate-products"
data.raw.item["pcb-substrate"].subgroup = "bob-electronic-components"
data.raw.recipe["pcb-substrate"].group = "bob-intermediate-products"
data.raw.recipe["pcb-substrate"].subgroup = "bob-electronic-components"

--Circuits
data.raw.item["electronic-circuit"].group = "bob-intermediate-products"
data.raw.item["electronic-circuit"].subgroup = "bob-electronic-boards"
data.raw.recipe["electronic-circuit"].group = "bob-intermediate-products"
data.raw.recipe["electronic-circuit"].subgroup = "bob-electronic-boards"
data.raw.item["advanced-circuit"].group = "bob-intermediate-products"
data.raw.item["advanced-circuit"].subgroup = "bob-electronic-boards"
data.raw.recipe["advanced-circuit"].group = "bob-intermediate-products"
data.raw.recipe["advanced-circuit"].subgroup = "bob-electronic-boards"
data.raw.recipe["low-quality-advanced-circuit"].group = "bob-intermediate-products"
data.raw.recipe["low-quality-advanced-circuit"].subgroup = "bob-electronic-boards"
data.raw.recipe["low-quality-advanced-circuit"].order = "e"
data.raw.recipe["advanced-processing-unit"].order = "g"
data.raw.item["integrated-circuit"].group = "bob-intermediate-products"
data.raw.item["integrated-circuit"].subgroup = "bob-electronic-boards"
data.raw.recipe["integrated-circuit"].group = "bob-intermediate-products"
data.raw.recipe["integrated-circuit"].subgroup = "bob-electronic-boards"
data.raw.item["se-quantum-processor"].group = "bob-intermediate-products"
data.raw.item["se-quantum-processor"].subgroup = "bob-electronic-boards"
data.raw.recipe["se-quantum-processor"].group = "bob-intermediate-products"
data.raw.recipe["se-quantum-processor"].subgroup = "bob-electronic-boards"
data.raw.item["ai-core"].group = "bob-intermediate-products"
data.raw.item["ai-core"].subgroup = "bob-electronic-boards"
data.raw.recipe["ai-core"].group = "bob-intermediate-products"
data.raw.recipe["ai-core"].subgroup = "bob-electronic-boards"
data.raw.item["se-naquium-processor"].group = "bob-intermediate-products"
data.raw.item["se-naquium-processor"].subgroup = "bob-electronic-boards"
data.raw.recipe["se-naquium-processor"].group = "bob-intermediate-products"
data.raw.recipe["se-naquium-processor"].subgroup = "bob-electronic-boards"
data.raw.recipe["se-naquium-processor-alt"].group = "bob-intermediate-products"
data.raw.recipe["se-naquium-processor-alt"].subgroup = "bob-electronic-boards"