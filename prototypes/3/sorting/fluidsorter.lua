local util = require("data-util")
SubGroups = {}
Blacklist = { "kr-shelter" }
WhatToCheckPipes = { "intermediates", "underground-buildings", 
"multi-pipes", "pipes-to-ground", "underground-pipes", "pipes-to-ground-t2", "underground-pipes-t2", 
"pipes-to-ground-t3", "underground-pipes-t3", "space-intermediates", "underground-buildings-space", 
"pipes-to-ground-space", "underground-pipes-space" }

--CheckNames("plate")

---Returns true if item is in blacklist
---@param name string # item to check
---@return boolean # true means it was found
local function InBlackList(name)
    for _, value in ipairs(Blacklist) do
        if (string.find(name, value)) then
            return true
        end
    end
    return false
end

---Checks if there is subgroup, if none make one and set its parent to group
---@param name string # what to check for
---@param group string # what group to add if there is none
local function CreateSubGroupIfNone(name, group)
    if not util.table_contains(data.raw["item-subgroup"], name) then
        data:extend({
            {
                type = "item-subgroup",
                name = name,
                group = group,
                order = name
            }
        })
    end
end

---Sets the recipe subgroup name and then group as parent. optional: sets order
---@param name string #recipe name
---@param subgroup string #subgroup name
---@param group string #group name
---@param order any #order
local function SetGroupSubOrder(name, subgroup, group, order)
    CreateSubGroupIfNone(subgroup, group)
    data.raw.recipe[name].subgroup = subgroup
    data.raw.recipe[name].group = group
    data.raw["item-subgroup"][subgroup].order = "[a]"
    if order then
        data.raw.recipe[name].order = order
    end
end

--PrintAllSubGroupsToLog()
--PrintAllRecipesToLog()

---Checks to see if recipe with string in name is in group and subgroup and sets if not
---@param lookatname string #What to look at
---@param lookforgroup string #What group it should be in
---@param lookatname2 any #What to look at extra
local function ChangeSubgroupAndGroup(lookatname, lookforgroup, lookatname2)
    for _, recipe in pairs(data.raw.recipe) do
        --if recipe name matches what we are looking for
        if string.find(string.lower(recipe.name), lookatname) then
            --if there is no group give it one and assign its subgroup
            if string.find(recipe.name, "intermediates") and not InBlackList(recipe.name) then
                --log("PIG intermediates Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[c]]")
            elseif string.find(recipe.name, "underground-buildings") and not InBlackList(recipe.name) then
                --log("PIG underground-buildings Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[d]]")
            elseif string.find(recipe.name, "multi-pipes") and not InBlackList(recipe.name) then
                --log("PIG advanced-underground-piping Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[e]]")
            elseif string.find(recipe.name, "pipes-to-ground") and not InBlackList(recipe.name) then
                --log("PIG pipes-to-ground Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[f]]")
            elseif string.find(recipe.name, "underground-pipes") and not InBlackList(recipe.name) then
                --log("PIG underground-pipes Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[g]]")
            elseif string.find(recipe.name, "pipes-to-ground-t2") and not InBlackList(recipe.name) then
                --log("PIG pipes-to-ground-t2 Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[f]]")
            elseif string.find(recipe.name, "underground-pipes-t2") and not InBlackList(recipe.name) then
                --log("PIG underground-pipes-t2 Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[g]]")
            elseif string.find(recipe.name, "pipes-to-ground-t3") and not InBlackList(recipe.name) then
                --log("PIG pipes-to-ground-t3 Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[f]]")
            elseif string.find(recipe.name, "underground-pipes-t3") and not InBlackList(recipe.name) then
                --log("PIG underground-pipes-t3 Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[g]]")
            elseif string.find(recipe.name, "space-intermediates") and not InBlackList(recipe.name) then
                --log("PIG space-intermediates Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[h]]")
            elseif string.find(recipe.name, "underground-buildings-space") and not InBlackList(recipe.name) then
                --log("PIG underground-buildings-space Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[i]]")
            elseif string.find(recipe.name, "pipes-to-ground-space") and not InBlackList(recipe.name) then
                --log("PIG pipes-to-ground-space Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[j]]")
            elseif string.find(recipe.name, "underground-pipes-space") and not InBlackList(recipe.name) then
                --log("PIG underground-pipes-space Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[k]]")
            else
                --log("PIG unassigned Found " .. recipe.name)
            end
        elseif lookatname2 then
            if string.find(recipe.name, lookatname) and string.find(recipe.name, lookatname2) then
                --if there is no group give it one and assign its subgroup
                if recipe.name == lookatname .. "-" .. lookatname2 then
                    --log("PIG name Found " .. recipe.name)
                    SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[b]]")
                else
                    --log("PIG unassigned Found " .. recipe.name)
                end
            end
        elseif recipe.name == "pipe" then
            --log("PIG pipe Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "iron-pipes", "advanced-underground-piping", "[[a]]")
        elseif recipe.name == "pipe-to-ground" then
            --log("PIG pipe-to-ground Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "iron-pipes", "advanced-underground-piping", "[[b]]")
        elseif recipe.name == "pipe-junction" then
            --log("PIG pipe-junction Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "iron-pipes", "advanced-underground-piping", "[[c]]")
        elseif recipe.name == "pipe-elbow" then
            --log("PIG pipe-elbow Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "iron-pipes", "advanced-underground-piping", "[[d]]")
        elseif recipe.name == "pipe-straight" then
            --log("PIG pipe-straight Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "iron-pipes", "advanced-underground-piping", "[[e]]")
        elseif recipe.name == "overflow-valve" then
            --log("PIG overflow-valve Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "iron-pipes", "advanced-underground-piping", "[[f]]")
        elseif recipe.name == "underflow-valve" then
            --log("PIG underflow-valve Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "iron-pipes", "advanced-underground-piping", "[[g]]")
        elseif recipe.name == "kr-steel-pipe" then
            --log("PIG kr-steel-pipe Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "steel-pipes", "advanced-underground-piping", "[[a]]")
        elseif recipe.name == "kr-steel-pipe-to-ground" then
            --log("PIG kr-steel-pipe-to-ground Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "steel-pipes", "advanced-underground-piping", "[[b]]")
        elseif recipe.name == "steel-pipe-junction" then
            --log("PIG steel-pipe-junction Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "steel-pipes", "advanced-underground-piping", "[[c]]")
        elseif recipe.name == "steel-pipe-elbow" then
            --log("PIG steel-pipe-elbow Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "steel-pipes", "advanced-underground-piping", "[[d]]")
        elseif recipe.name == "steel-pipe-straight" then
            --log("PIG steel-pipe-straight Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "steel-pipes", "advanced-underground-piping", "[[e]]")
        elseif recipe.name == "duct-small" then
            --log("PIG duct-small Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "ducts", "advanced-underground-piping", "[[a]]")
        elseif recipe.name == "duct-underground" then
            --log("PIG duct-underground Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "ducts", "advanced-underground-piping", "[[b]]")
        elseif recipe.name == "duct-t-junction" then
            --log("PIG duct-t-junction Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "ducts", "advanced-underground-piping", "[[c]]")
        elseif recipe.name == "duct-curve" then
            --log("PIG duct-curve Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "ducts", "advanced-underground-piping", "[[d]]")
        elseif recipe.name == "duct-cross" then
            --log("PIG duct-cross Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "ducts", "advanced-underground-piping", "[[f]]")
        elseif recipe.name == "duct-end-point-intake" then
            --log("PIG duct-end-point-intake Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "ducts", "advanced-underground-piping", "[[g]]")
        elseif recipe.name == "duct-end-point-outtake" then
            --log("PIG duct-end-point-outtake Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "ducts", "advanced-underground-piping", "[[h]]")
        elseif recipe.name == "non-return-duct" then
            --log("PIG non-return-duct Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "ducts", "advanced-underground-piping", "[[i]]")
        elseif recipe.name == "se-space-pipe" then
            --log("PIG se-space-pipe Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "space-pipes", "advanced-underground-piping", "[[a]]")
        elseif recipe.name == "se-space-pipe-to-ground" then
            --log("PIG se-space-pipe-to-ground Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "space-pipes", "advanced-underground-piping", "[[b]]")
        elseif recipe.name == "space-pipe-t-junction" then
            --log("PIG space-pipe-t-junction Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "space-pipes", "advanced-underground-piping", "[[c]]")
        elseif recipe.name == "space-pipe-elbow" then
            --log("PIG space-pipe-elbow Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "space-pipes", "advanced-underground-piping", "[[d]]")
        elseif recipe.name == "space-pipe-straight" then
            --log("PIG space-pipe-straight Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "space-pipes", "advanced-underground-piping", "[[e]]")
        elseif recipe.name == "se-space-pipe-long-j-3" then
            --log("PIG se-space-pipe-long-junction-3 Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "space-pipes", "advanced-underground-piping", "[[f]]")
        elseif recipe.name == "se-space-pipe-long-j-5" then
            --log("PIG se-space-pipe-long-junction-5 Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "space-pipes", "advanced-underground-piping", "[[g]]")
        elseif recipe.name == "se-space-pipe-long-j-7" then
            --log("PIG se-space-pipe-long-junction-7 Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "space-pipes", "advanced-underground-piping", "[[h]]")
        elseif recipe.name == "se-space-pipe-long-s-9" then
            --log("PIG se-space-pipe-long-straight-9 Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "space-pipes", "advanced-underground-piping", "[[i]]")
        elseif recipe.name == "se-space-pipe-long-s-15" then
            --log("PIG se-space-pipe-long-straight-15 Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "space-pipes", "advanced-underground-piping", "[[j]]")
        elseif recipe.name == "rfp-pipe" then
            --log("PIG rfp-pipe Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "fusion-pipes", "advanced-underground-piping", "[[a]]")
        elseif recipe.name == "rfp-pipe-to-ground" then
            --log("PIG rfp-pipe-to-ground Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "fusion-pipes", "advanced-underground-piping", "[[b]]")
        elseif recipe.name == "rfp-pipe-junction" then
            --log("PIG rfp-pipe-junction Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "fusion-pipes", "advanced-underground-piping", "[[c]]")
        elseif recipe.name == "rfp-pipe-elbow" then
            --log("PIG rfp-pipe-elbow Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "fusion-pipes", "advanced-underground-piping", "[[d]]")
        elseif recipe.name == "rfp-pipe-straight" then
            --log("PIG rfp-pipe-straight Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "fusion-pipes", "advanced-underground-piping", "[[e]]")
        elseif recipe.name == "rfp-pump" then
            --log("PIG rfp-pump Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "fusion-pipes", "advanced-underground-piping", "[[f]]")
        elseif recipe.name == "pump" then
            --log("PIG pump Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "fluid-pumps", "advanced-underground-piping", "[[a]]")
        elseif recipe.name == "kr-steel-pump" then
            --log("PIG kr-steel-pump Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "fluid-pumps", "advanced-underground-piping", "[[b]]")
        elseif recipe.name == "offshore-pump" then
            --log("PIG offshore-pump Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "fluid-pumps", "advanced-underground-piping", "[[c]]")
        elseif recipe.name == "rfp-discharge-pump" then
            --log("PIG rfp-discharge-pump Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "fluid-pumps", "advanced-underground-piping", "[[d]]")
        elseif recipe.name == "storage-tank" then
            --log("PIG storage-tank Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "fluid-storage-tank", "advanced-underground-piping", "[[a]]")
        elseif recipe.name == "kr-fluid-storage-1" then
            --log("PIG kr-fluid-storage-1 Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "fluid-storage-tank", "advanced-underground-piping", "[[b]]")
        elseif recipe.name == "kr-fluid-storage-2" then
            --log("PIG kr-fluid-storage-2 Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, "fluid-storage-tank", "advanced-underground-piping", "[[c]]")
        end
    end
end

for _, value in ipairs(WhatToCheckPipes) do
    ChangeSubgroupAndGroup(value, "advanced-underground-piping")
end