require("__Krastorio2__/prototypes/entities/buildings/pipe-covers/steel-pipecovers")
empty_sprite = { filename = "__Krastorio2Assets__/entities/empty.png", size = 1, frame_count = 1 }
local steelpipe = data.raw["pipe"]["kr-steel-pipe"]

-- Pipe Elbow ****************************************************************************
steel_pipe_elbow = util.table.deepcopy(data.raw["storage-tank"]["storage-tank"])
steel_pipe_elbow.name = "steel-pipe-elbow"
steel_pipe_elbow.icon = "__EthryansModpack__/graphics/icons/pipes/steel-pipe-elbow.png"
steel_pipe_elbow.icon_size = 64
steel_pipe_elbow.icon_mipmaps = nil
steel_pipe_elbow.minable = steelpipe.minable
-- pipe_elbow.corpse = "small-remnants"
steel_pipe_elbow.corpse = "pipe-remnants"
steel_pipe_elbow.max_health = steelpipe.max_health
steel_pipe_elbow.resistances = steelpipe.resistances
steel_pipe_elbow.fast_replaceable_group = steelpipe.fast_replaceable_group
steel_pipe_elbow.placeable_by = {item = "pipe", count = 1}
steel_pipe_elbow.collision_box = steelpipe.collision_box
steel_pipe_elbow.selection_box = {{-0.35, -0.35}, {0.5, 0.5}}
steel_pipe_elbow.dying_explosion = steelpipe.dying_explosion
steel_pipe_elbow.friendly_map_color = {69,130,165}
steel_pipe_elbow.water_reflection = nil
steel_pipe_elbow.fluid_box =
{
  base_area = 1,
  height = 1.25,
  pipe_covers = steel_pipecoverspictures,
  pipe_connections =
  {
    { position = {1, 0} },
    { position = {0, 1} }
  },
  hide_connection_info = true,
}
steel_pipe_elbow.two_direction_only = false
steel_pipe_elbow.pictures =
{
  picture =
  {
    north = {
        filename = "__Krastorio2Assets__/entities/steel-pipe/steel-pipe-corner-down-right.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
          filename = "__Krastorio2Assets__/entities/steel-pipe/hr-steel-pipe-corner-down-right.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
      },
    east = {
        filename = "__Krastorio2Assets__/entities/steel-pipe/steel-pipe-corner-down-left.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
          filename = "__Krastorio2Assets__/entities/steel-pipe/hr-steel-pipe-corner-down-left.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
      },
    south = {
        filename = "__Krastorio2Assets__/entities/steel-pipe/steel-pipe-corner-up-left.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
          filename = "__Krastorio2Assets__/entities/steel-pipe/hr-steel-pipe-corner-up-left.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
      },
    west = {
        filename = "__Krastorio2Assets__/entities/steel-pipe/steel-pipe-corner-up-right.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
          filename = "__Krastorio2Assets__/entities/steel-pipe/hr-steel-pipe-corner-up-right.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
      }
  },
  gas_flow = empty_sprite,
  fluid_background = empty_sprite,
  window_background = empty_sprite,
  flow_sprite = empty_sprite
}
steel_pipe_elbow.circuit_wire_max_distance = 0
steel_pipe_elbow.working_sound = nil

-- Pipe Junction *************************************************************************
steel_pipe_junction = util.table.deepcopy(steel_pipe_elbow)
steel_pipe_junction.name = "steel-pipe-junction"
steel_pipe_junction.icon = "__EthryansModpack__/graphics/icons/pipes/steel-pipe-junction.png"
steel_pipe_junction.selection_box = {{-0.5, -0.35}, {0.5, 0.5}}
steel_pipe_junction.fluid_box.pipe_connections =
{
  { position = {1, 0} },
  { position = {0, 1} },
  { position = {-1, 0} }
}
steel_pipe_junction.pictures =
{
  picture =
  {
    north = {
        filename = "__Krastorio2Assets__/entities/steel-pipe/steel-pipe-t-down.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
          filename = "__Krastorio2Assets__/entities/steel-pipe/hr-steel-pipe-t-down.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
      },
    east = {
        filename = "__Krastorio2Assets__/entities/steel-pipe/steel-pipe-t-left.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
          filename = "__Krastorio2Assets__/entities/steel-pipe/hr-steel-pipe-t-left.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
      },
    south = {
        filename = "__Krastorio2Assets__/entities/steel-pipe/steel-pipe-t-up.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
          filename = "__Krastorio2Assets__/entities/steel-pipe/hr-steel-pipe-t-up.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
      },
    west = {
        filename = "__Krastorio2Assets__/entities/steel-pipe/steel-pipe-t-right.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
          filename = "__Krastorio2Assets__/entities/steel-pipe/hr-steel-pipe-t-right.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
      }
  },
  gas_flow = empty_sprite,
  fluid_background = empty_sprite,
  window_background = empty_sprite,
  flow_sprite = empty_sprite
}

-- Pipe Straight *************************************************************************
steel_pipe_straight = util.table.deepcopy(steel_pipe_elbow)
steel_pipe_straight.name = "steel-pipe-straight"
steel_pipe_straight.icon = "__EthryansModpack__/graphics/icons/pipes/steel-pipe-straight.png"
steel_pipe_straight.selection_box = {{-0.35, -0.5}, {0.35, 0.5}}
steel_pipe_straight.fluid_box.pipe_connections =
{
  { position = {0, -1} },
  { position = {0, 1} }
}
steel_pipe_straight.pictures =
{
  picture =
  {
    north = {
        filename = "__Krastorio2Assets__/entities/steel-pipe/steel-pipe-straight-vertical.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
          filename = "__Krastorio2Assets__/entities/steel-pipe/hr-steel-pipe-straight-vertical.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
      },
    east = {
        filename = "__Krastorio2Assets__/entities/steel-pipe/steel-pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
          filename = "__Krastorio2Assets__/entities/steel-pipe/hr-steel-pipe-straight-horizontal.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
      },
    south = {
        filename = "__Krastorio2Assets__/entities/steel-pipe/steel-pipe-straight-vertical.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
          filename = "__Krastorio2Assets__/entities/steel-pipe/hr-steel-pipe-straight-vertical.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
      },
    west = {
        filename = "__Krastorio2Assets__/entities/steel-pipe/steel-pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        hr_version = {
          filename = "__Krastorio2Assets__/entities/steel-pipe/hr-steel-pipe-straight-horizontal.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
      }
  },
  gas_flow = empty_sprite,
  fluid_background = empty_sprite,
  window_background = empty_sprite,
  flow_sprite = empty_sprite
}

data:extend(
{
  steel_pipe_elbow,
  steel_pipe_junction,
  steel_pipe_straight
})
