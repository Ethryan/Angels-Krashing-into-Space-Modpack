local util = require("data-util")

--Recipes
--Radar Station
util.replace_or_add_ingredient("radar", nil, "kr-sentinel" , 1, false)

--Tech Cards
util.replace_or_add_ingredient("blank-tech-card-silver", "silver-wire", "silver-wire", 1, false)
data.raw.recipe["blank-tech-card-silver"].results = {{"blank-tech-card", 10}}