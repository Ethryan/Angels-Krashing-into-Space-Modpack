local util = require("data-util")

--recipes
--Cybersyn Combinator
data.raw.recipe["cybersyn-combinator"].category = "advanced-crafting"
util.replace_or_add_ingredient("cybersyn-combinator", nil, "decider-combinator" , 1, false)
util.replace_or_add_ingredient("cybersyn-combinator", nil, "solder" , 1, false)
util.replace_or_add_ingredient("cybersyn-combinator", "copper-cable", "optical-fiber" , 5, false)
util.replace_or_add_ingredient("cybersyn-combinator", "electronic-circuit", "advanced-circuit" , 10, false)

--Cybersyn Combinator
data.raw.recipe["cybersyn-constant-combinator"].category = "advanced-crafting"
util.replace_or_add_ingredient("cybersyn-constant-combinator", nil, "solder" , 1, false)
util.replace_or_add_ingredient("cybersyn-constant-combinator", nil, "optical-fiber" , 5, false)
util.replace_or_add_ingredient("cybersyn-constant-combinator", "electronic-circuit", "advanced-circuit" , 10, false)

--research
table.insert( data.raw.technology["cybersyn-train-network"].prerequisites, "advanced-electronics" )
table.insert( data.raw.technology["cybersyn-train-network"].prerequisites, "fiber-optics" )

