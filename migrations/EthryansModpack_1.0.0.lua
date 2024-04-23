-- Reload recipes and technologies
for i, player in ipairs(game.players) do
  player.force.reset_recipes()
  player.force.reset_technologies()
end

for index, force in pairs(game.forces) do
  -- Generate technology and recipe tables
  local tech = force.technologies
  local recipes = force.recipes

  -- Unlock researched recipes
  if tech["kr-steel-fluid-handling"].researched then
    if recipes["steel-pipe-elbow"] then
      recipes["steel-pipe-elbow"].enabled = true
    end
    if recipes["steel-pipe-junction"] then
      recipes["steel-pipe-junction"].enabled = true
    end
    if recipes["steel-pipe-straight"] then
      recipes["steel-pipe-straight"].enabled = true
    end
  end
  if tech["sulfur-processing"].researched then
    if recipes["eth-rubber"] then
      recipes["eth-rubber"].enabled = true
    end
  end
end