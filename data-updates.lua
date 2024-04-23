require("prototypes.2.materials")
require("prototypes.2.research")

if settings.startup["flow-control-revert-to-normal-pipe"].value == false then
  data.raw["storage-tank"]["steel-pipe-elbow"].minable.result = "steel-pipe-elbow"
  data.raw["storage-tank"]["steel-pipe-junction"].minable.result = "steel-pipe-junction"
  data.raw["storage-tank"]["steel-pipe-straight"].minable.result = "steel-pipe-straight"
end
