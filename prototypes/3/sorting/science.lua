local util = require("data-util")

--Fix the new research itema
local lab_names_to_not_remove_packs_from = {
  --"lab",
  "space",
  "singularity",
  "biusart" -- K2 Advanced Lab that is in space thanks to compat work.
}

for _, lab in pairs(data.raw.lab) do
  lab.inputs = lab.inputs or {}
  local remove_packs = true
  for _, string in pairs(lab_names_to_not_remove_packs_from) do
    if string.find(lab.name, string, 1, true) then
      remove_packs = false
    end
  end
  if remove_packs then
    util.remove_from_table(lab.inputs, "apm_nuclear_science_pack")
  end
  table.sort(lab.inputs, function(a,b) return data.raw.tool[a].order < data.raw.tool[b].order end)
end


