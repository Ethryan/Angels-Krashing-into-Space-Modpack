local pipe_subgroup = "energy-pipe-distribution"

if settings.startup["flow-control-new-group"].value then
  data:extend({
    {
      type = "item-subgroup",
      name = "pipe-distribution",
      group = "logistics",
      order = "da"
    }
  })
  pipe_subgroup = "pipe-distribution"
  data.raw.item["pipe"].subgroup = "pipe-distribution"
  data.raw.item["pipe-to-ground"].subgroup = "pipe-distribution"
  data.raw.item["pump"].subgroup = "pipe-distribution"
end

data:extend({
  {
    type = "item",
    name = "steel-pipe-junction",
    icon = "__EthryansModpack__/graphics/icons/pipes/steel-pipe-junction.png",
    icon_size = 64,
    subgroup = pipe_subgroup,
    order = "b[pipe]-a[pipe]c",
    place_result = "steel-pipe-junction",
    stack_size = 50
  },
  {
    type = "item",
    name = "steel-pipe-elbow",
    icon = "__EthryansModpack__/graphics/icons/pipes/steel-pipe-elbow.png",
    icon_size = 64,
    subgroup = pipe_subgroup,
    order = "b[pipe]-a[pipe]d",
    place_result = "steel-pipe-elbow",
    stack_size = 50
  },
  {
    type = "item",
    name = "steel-pipe-straight",
    icon = "__EthryansModpack__/graphics/icons/pipes/steel-pipe-straight.png",
    icon_size = 64,
    subgroup = pipe_subgroup,
    order = "b[pipe]-a[pipe]e",
    place_result = "steel-pipe-straight",
    stack_size = 50
  },
})