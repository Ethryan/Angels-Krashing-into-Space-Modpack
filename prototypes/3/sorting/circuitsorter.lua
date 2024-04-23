local util = require("data-util")
SubGroups = {}
Blacklist = {}
WhatToCheckCircuits = { "circuit-network-2" }

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
            if string.find(recipe.name, "circuit-network-2") and not InBlackList(recipe.name) then
                --log("PIG core Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[a]]")
            elseif recipe.name == lookatname then
                --log("PIG name Found " .. recipe.name)
                SetGroupSubOrder(recipe.name, lookatname, lookforgroup, "[[b]]")
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
        elseif recipe.name == "item-sensor" then
            --log("PIG item-sensor Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, lookatname, "circuit", "ba")
        elseif recipe.name == "ltn-provider-reader" then
            --log("PIG ltn-provider-reader Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, lookatname, "circuit", "bb")
        elseif recipe.name == "ltn-requester-reader" then
            --log("PIG ltn-requester-reader Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, lookatname, "circuit", "bc")
        elseif recipe.name == "ltn-delivery-reader" then
            --log("PIG ltn-delivery-reader Found " .. recipe.name)
            SetGroupSubOrder(recipe.name, lookatname, "circuit", "bd")
        end
    end
end

for _, value in ipairs(WhatToCheckCircuits) do
    ChangeSubgroupAndGroup(value, "circuit")
end