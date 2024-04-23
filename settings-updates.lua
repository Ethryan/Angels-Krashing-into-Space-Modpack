local setting_types = { "bool-setting", "int-setting", "double-setting", "string-setting" }
local function change_setting(setting_name, value, hide)
  for _, setting_type in pairs(setting_types) do
    local setting = data.raw[setting_type][setting_name]
    if setting then

      if setting_type == "bool-setting" then
        setting.forced_value = value
      end

      if setting_type == "int-setting" then
        if hide == nil or hide == true then
          if setting.maximum_value ~= nil then
            setting.maximum_value = value + 1
            setting.minimum = value
            setting.allowed_values = { value }
          else
            setting.allowed_values = { value }
          end
        end
      end

      if setting_type == "double-setting" then
        if hide == nil or hide == true then
          if setting.maximum_value ~= nil then
            setting.maximum_value = value
            setting.minimum = value
            setting.allowed_values = { value }
          else
            setting.allowed_values = { value }
          end
        end
      end

      if setting_type == "string-setting" then
        if hide == nil or hide == true then
          setting.allowed_values = { value }
        end
      end

      setting.default_value = value

      if hide ~= nil then
        setting.hidden = hide
      else
        setting.hidden = true
      end
    end
  end
end

--if settings.startup["ethryan-modpack-settings-lock-tech"].value == true then
	--Modpack Research Display
	if mods["discovery_tree"] then
		--change_setting("discovery-tree-mode", "All")
	end
--end

--Modpack Settings
--if settings.startup["ethryan-modpack-settings"].value == true then
	--AAI Containers
	if mods["aai-containers"] then
		change_setting("aai-containers-resize-1x1", true)
		change_setting("aai-containers-progression", "Vanilla")
	end

	--AAI Industry
	if mods["aai-industry"] then
		change_setting("aai-fast-motor-crafting", false)
		change_setting("aai-burner-turbine-efficiency", 85)
		change_setting("aai-fuel-processor", true)
		change_setting("aai-fuel-processor-efficiency", 10)
		change_setting("aai-stone-path", true)
		change_setting("tint-ghosts", true)
		change_setting("wide-flashlight", true)
		change_setting("enhanced-nightvision", true)
		change_setting("night-lut-set", "Dark")
		change_setting("crash-sequence", true)
		change_setting("start-with-basic-logistics", false)
		change_setting("quick-start-science", 0)
	end

	--AAI Loaders
	if mods["aai-loaders"] then
		change_setting("aai-loaders-mode", "graphics-only")
		change_setting("aai-loaders-lubricant-recipe", "disabled")
		change_setting("aai-loaders-fit-assemblers", true)
	end

	--Aluminium
	if mods["bzaluminum"] then
		change_setting("bzaluminum-byproduct", true)
		change_setting("bzaluminum-list", false)
		change_setting("bzaluminum-recipe-bypass", "")
		change_setting("bzaluminum-starting-items", false)
	end

	--Amator Phasma's Library
	if mods["apm_lib_ldinc"] then
		change_setting("apm_lib_player_items", "")
	end

	--Amator Phasma's Nuclear
	if mods["apm_nuclear_ldinc"] then
		change_setting("apm_nuclear_always_show_made_in", true)
		change_setting("apm_nuclear_fission_reactor_overhaul", true)
		change_setting("apm_nuclear_inherit_nuclear_science_to_infinite_tech", false)
		change_setting("apm_nuclear_compat_bob", false)
		change_setting("apm_nuclear_compat_angel", false)
		change_setting("apm_nuclear_compat_earendel", false)
		change_setting("apm_nuclear_compat_bio_industries", false)
		change_setting("apm_nuclear_compat_sctm", false)
		change_setting("apm_nuclear_compat_mferrari", false)
		change_setting("apm_nuclear_compat_realistic_reactors", false)
		change_setting("apm_nuclear_compat_realistic_reactors_cooling_tower", true)
		change_setting("apm_nuclear_compat_reverse_factory", false)
	end

	--Ammo Group
	if mods["AmmoGroup"] then
		change_setting("ammogroup-order", "dv")
	end

	--Bismuth
	if mods["bismuth"] then
		change_setting("bismuth-reduce-pcb-solder", "Default (reccomended)")
		change_setting("bismuth-disable-bismuthinite-ore", false)
		change_setting("bismuth-disable-bismuth-as-smelting-byproduct", false)
		change_setting("bismuth-contain-bismuth", 8129)
		change_setting("bismuth-contain-sulfur", 1871)
	end

	--Bob Inserters
	if mods["bobinserters"] then
		change_setting("bobmods-inserters-long1", true)
		change_setting("bobmods-inserters-long2", false)
		change_setting("bobmods-inserters-more2", true)
	end

	--Bob Electronics
	if mods["MDbobelectronics"] then
		change_setting("bobmods-recursive-circuitred", true)
	end

	--Bob Library
	if mods["boblibrary"] then
		change_setting("bobmods-library-recipe-cleanup", true)
		change_setting("bobmods-library-technology-cleanup", false)
	end

	--BrassTacks
	if mods["BrassTacks"] then
		change_setting("brasstacks-experimental-intermediates", true)
		change_setting("brasstacks-solder-absorption", true)
		change_setting("brasstacks-gyro-override", true)
		change_setting("brasstacks-starting-items", false)
		change_setting("brasstacks-se-maintenance", true)
	end

	--BrimStuff
	if mods["BrimStuff"] then
		change_setting("brimstuff-greenhouse", false)
		change_setting("brimstuff-waste-treatment", true)
		change_setting("brimstuff-krastorio-filter-hell", true)
		change_setting("brimstuff-toluene-from-coke", true)
		change_setting("brimstuff-toluene-from-oil", true)
		change_setting("brimstuff-clobber-bz-chemical-plant", true)
	end

	--Configurable Armour & Suits
	if mods["Configurable-Armour-Suits"] then
		change_setting("light-grid-h", 0)
		change_setting("light-grid-w", 0)
		change_setting("v-cas-light-armor-inv-size", 0)
		change_setting("heavy-grid-h", 0)
		change_setting("heavy-grid-w", 0)
		change_setting("v-cas-heavy-armor-inv-size", 0)
		change_setting("modular-armor-grid-size-h", 4)
		change_setting("modular-armor-grid-size-w", 4)
		change_setting("v-cas-modular-armor-inv-size", 10)
		change_setting("power-armor-grid-size-h", 7)
		change_setting("power-armor-grid-size-w", 7)
		change_setting("v-cas-power-armor-inv-size", 20)
		change_setting("power-armor-mk2-grid-size-h", 12)
		change_setting("power-armor-mk2-grid-size-w", 12)
		change_setting("v-cas-power-armor-mk2-inv-size", 25)
		change_setting("mk3-armor-grid-size-h", 15)
		change_setting("mk3-armor-grid-size-w", 15)
		change_setting("cas-k2-power-armor-mk3-inv-size", 30)
		change_setting("mk4-armor-grid-size-h", 20)
		change_setting("mk4-armor-grid-size-w", 20)
		change_setting("cas-k2-power-armor-mk4-inv-size", 40)
		change_setting("se-thruster-suit-grid-size-h", 8)
		change_setting("se-thruster-suit-grid-size-w", 8)
		change_setting("cas-se-thruster-suit-inv-size", 20)
		change_setting("se-thruster-suit-2-grid-size-h", 12)
		change_setting("se-thruster-suit-2-grid-size-w", 12)
		change_setting("cas-se-thruster-suit-2-inv-size", 25)
		change_setting("se-thruster-suit-3-grid-size-h", 15)
		change_setting("se-thruster-suit-3-grid-size-w", 15)
		change_setting("cas-se-thruster-suit-3-inv-size", 30)
		change_setting("se-thruster-suit-4-grid-size-h", 20)
		change_setting("se-thruster-suit-4-grid-size-w", 20)
		change_setting("cas-se-thruster-suit-4-inv-size", 40)
	end
	
	--Death Curses
	if mods["death_curses"] then
		change_setting("dc_enable_curses", true)
		change_setting("dc_curse_duration", 4)
		change_setting("dc_stack_curse_duration", false)
	end

	--Flow Control
	if mods["Flow Control"] then
		change_setting("flow-control-new-group", true)
		change_setting("flow-control-revert-to-normal-pipe", true)
	end

	--Fluid Must Flow
	if mods["FluidMustFlow"] then
		change_setting("fmf-enable-duct-auto-join", true)
		change_setting("fmf-underground-duct-max-length", 20)
	end

	--Fluid Permutations
	if mods["se_k2_fluid_permutations"] then
		change_setting("fluid-permutations-simple-mode", false)
	end

	--Foundry
	if mods["bzfoundry"] then
		change_setting("bzfoundry-recipe-bypass", "")
		change_setting("bzfoundry-hydrocarbon", "coke")
		change_setting("bzfoundry-smelt", false)
		change_setting("bzfoundry-other-machines", "kr-advanced-furnace,se-space-thermodynamics-laboratory")
		change_setting("bzfoundry-plates", "no")
		change_setting("bzfoundry-minimal", true)
	end

	--Geothermal
	if mods["Geothermal"] then
		change_setting("geothermal-byproduct-rate", 1)
		change_setting("geothermal-color", true)
		change_setting("geothermal-distance-scalar", 1)
		change_setting("geothermal-fluid-production", 1)
		change_setting("geothermal-frequency", 1)
		change_setting("geothermal-min-distance", 300)
		change_setting("geothermal-needs-water", true)
		change_setting("geothermal-power-factor", 1)
		change_setting("geothermal-rate-clamp", 10)
		change_setting("geothermal-size", 1)
		change_setting("geothermal-spawn-rules", "volcanic")
		change_setting("thermal-wagon", true)
	end

	--Graphite
	if mods["bzcarbon"] then
		change_setting("bzcarbon-recipe-bypass", "")
		change_setting("bzcarbon-enable-fullerenes", "yes")
		change_setting("bzcarbon-enable-carbon-black", "no")
		change_setting("bzcarbon-enable-carbon-fiber", "yes")
		change_setting("bzcarbon-enable-rough-diamond", "no")
		change_setting("bzcarbon-enable-flake-graphite", "yes")
		change_setting("bzcarbon-reuse", "yes")
		change_setting("bzcarbon-list", false)
	end

	--IfNickel
	if mods["IfNickel"] then
		change_setting("ifnickel-steel-valve", true)
		change_setting("ifnickel-experimental-intermediates", true)
		change_setting("ifnickel-se-maintenance", true)
	end

	--Krastorio 2
	if mods["Krastorio2"] then
		change_setting("kr-stack-size", "No changes")
		change_setting("kr-long-hands", "1")
		change_setting("kr-bonus-inventory", 0)
		change_setting("kr-cargo-wagon-bonus", 0)
		change_setting("kr-bonus-items", false)
		change_setting("kr-loaders", true)
		change_setting("kr-containers", false)
		change_setting("kr-impossible-more-than-difficult", false)
		change_setting("kr-tech-multiplier-everywhere", false)
		change_setting("kr-rebalance-vehicles&fuels", true)
		change_setting("kr-rebalance-radar", true)
		change_setting("kr-rebalance-fuels", true)
		change_setting("kr-electric-poles-changes", true)
		change_setting("kr-pipes-and-belts-changes", true)
		change_setting("kr-more-realistic-weapon", true)
		change_setting("kr-more-realistic-weapon-auto-aim", false)
		change_setting("kr-finite-oil", true)
		change_setting("kr-peaceful-mode", false)
		change_setting("kr-infinite-technology", true)
		change_setting("kr-vehicles-minable-changes", false)
		--change_setting("kr-large-icons", false)
		change_setting("kr-kl-stuff", false)
		change_setting("kr-spidertron-exoskeleton", false)
		change_setting("kr-vehicles-minable-changes", false)
		change_setting("kr-automation-science-pack-recipe", "Krastorio 2")
		change_setting("kr-logistic-science-pack-recipe", "Krastorio 2")
		change_setting("kr-military-science-pack-recipe", "Krastorio 2")
		change_setting("kr-chemical-science-pack-recipe", "Krastorio 2")
		change_setting("kr-production-science-pack-recipe", "Krastorio 2")
		change_setting("kr-utility-science-pack-recipe", "Krastorio 2")
		--change_setting("kr-shelter-tint", "White")
		change_setting("kr-main-menu-override-simulations", false)
		--change_setting("kr-main-menu-background", "Krastorio Chan")
		change_setting("kr-main-menu-song", true)
		change_setting("kr-fix-laser-artillery-turret", true)
	end

	--Landfill for SE
	if mods["se-landfill-le"] then
		change_setting("selle-shift", false)
	end

	--Lasing Around
	if mods["LasingAround"] then
		change_setting("lasingaround-allow-gubbins-in-mill", true)
		change_setting("lasingaround-allow-circuits-in-mill", true)
		change_setting("lasingaround-allow-entities-in-mill", true)
		change_setting("lasingaround-hide-duplicate-recipes", true)
		change_setting("lasingaround-k2-advanced-assembler-can-laser-mill", true)
	end

	--Lead
	if mods["bzlead"] then
		change_setting("bzlead-byproduct", false)
		change_setting("bzlead-more-ammo", "no")
		change_setting("bzlead-more-entities", "no")
		change_setting("bzlead-recipe-bypass", "")
	end

	--Lighted Electric Poles
	if mods["bzlead"] then
		change_setting("lepp_light_size_factor", 1)
		change_setting("lepp_light_max_size", 75)
		change_setting("lepp_pole_whitelist", "fish-pole,slp-dec-med-pole,slp-dec-big-pole,slp-dec-sub-pole")
		change_setting("lepp_pole_blacklist", "bi-power-to-rail-pole,bi-rail-hidden-power-pole,ee-super-electric-pole,ee-super-substation")
		change_setting("lepp_tech_blacklist", "")
		change_setting("lepp_tech_fallback", "optics")
	end

	--Manganese
	if mods["manganese"] then
		change_setting("manganese-disable-manganese-as-smelting-byproduct", false)
	end

	--"Memory Storage"
	if mods["deep-storage-unit"] then
		change_setting("memory-unit-power-usage", "480KW")
	end

	--Modular Turrets
	if mods["scattergun_turret"] then
		change_setting("enable-pretargeting", true)
		change_setting("turret-damage-tech", true)
		change_setting("enable-extra-ammo", true)
		change_setting("cannon-ammo-range-disable", true)
		change_setting("enable-radars", true)
		change_setting("enable-hardened-inserter", true)
	end

	--Multiplayer UI
	if mods["multiplayer-ui"] then
		change_setting("multiplayer-ui-debug-log", false)
	end

	--Natural Gas
	if mods["bzgas"] then
		change_setting("bzgas-boiler", true)
		change_setting("bzgas-handcraft", false)
		change_setting("bzgas-list", false)
		change_setting("bzgas-more-intermediates", "phenol")
		change_setting("bzgas-recipe-bypass", "")
		change_setting("vanilla-fluid-fuel-values", true)
	end

	--Nixie Tubes
	if mods["nixie-tubes"] then
		change_setting("nixie-tube-slashed-zero", true)
	end

	--Noble Metals
	if mods["bzgold"] then
		change_setting("bzgold-recipe-bypass", "")
		change_setting("bzgold-list", false)
		change_setting("bzgold-byproduct", true)
		change_setting("bzgold-palladium", true)
		change_setting("bzgold-platinum", true)
		change_setting("bzgold-silver", true)
		change_setting("bzgold-catalysis", true)
		change_setting("bzgold-se-core-mining", 0.01)
		change_setting("bzgold-alchemy", false)
	end

	--Optional Advanced BZ Settings
	if mods["bzsettings"] then
		change_setting("bz-recipe-bypass", "")
		change_setting("bz-no-byproduct", false)
		change_setting("bz-all-intermediates", false)
		change_setting("bz-tabula-rasa", false)
	end

	--Picker Atheneum
	if mods["PickerAtheneum"] then
		change_setting("picker-debug", false)
	end

	--Picker Belt Tools
	if mods["PickerBeltTools"] then
		change_setting("picker-tool-rewire", true)
		change_setting("picker-tool-wire-cutter", true)
	end

	--Picker Blueprinter
	if mods["PickerBlueprinter"] then
		change_setting("picker-bp-prioritizer", true)
		change_setting("picker-bp-snap", true)
		change_setting("picker-tool-bp-updater", true)
	end

	--Picker Extended
	if mods["PickerExtended"] then
		change_setting("picker-tool-camera", true)
		change_setting("picker-tool-ore-eraser", true)
		change_setting("picker-tool-tape-measure", true)
	end

	--Picker Pipe Tools
	if mods["PickerPipeTools"] then
		change_setting("picker-tool-pipe-clamps", true)
	end

	--Picker Tweaks
	if mods["PickerTweaks"] then
		change_setting("picker-legacy-belt-fast-replace", false)
		change_setting("picker-underground-lengths", false)
		change_setting("picker-underground-bus-gap", 4)
		--change_setting("picker-enhanced-lights", "grfwoot")
		--change_setting("picker-brighter-lights-player", false)
		--change_setting("picker-brighter-lights-vehicles", false)
		change_setting("picker-corpse-time", 3600)
		change_setting("picker-player-corpse-time", 108000)
		change_setting("picker-clean-tree-burning", false)
		change_setting("picker-fireproof-rail-signals", false)
		change_setting("picker-generic-vehicle-grids", false)
		change_setting("picker-fireproof-rolling-stock", false)
		--change_setting("picker-ghost-tint", "vanilla")
		change_setting("picker-small-unplugged-icon", true)
		change_setting("picker-return-ingredients", true)
		change_setting("picker-inventory-size", 60)
		change_setting("picker-replace-wood", false)
		change_setting("picker-free-circuit-wires", false)
		change_setting("picker-tile-stack", 0)
		--change_setting("picker-iondicators-line", "vanilla")
		--change_setting("picker-iondicators-arrow", "vanilla")
		change_setting("picker-reacher-reach-distance", 6)
		change_setting("picker-reacher-build-distance", 6)
		change_setting("picker-reacher-reach-resource-distance", 2.7)
		change_setting("picker-reacher-drop-item-distance", 6)
		change_setting("picker-reacher-item-pickup-distance", 1.01)
		change_setting("picker-reacher-loot-pickup-distance", 2)
		change_setting("picker-no-artillery-reveal", true)
		change_setting("picker-unminable-construction-robots", true)
		change_setting("picker-unminable-logistic-robots", true)
		change_setting("picker-fireproof-construction-robots", true)
		change_setting("picker-noalt-construction-robots", true)
		change_setting("picker-noalt-logistic-robots", true)
		change_setting("picker-adjustable-bot-scale", 0.5)
		change_setting("picker-show-bots-on-map", false)
		--change_setting("picker-disable-smoke", false)
		--change_setting("picker-disable-decorations", false)
		--change_setting("picker-roundup", true)
		change_setting("picker-roundup-resources", false)
		--change_setting("picker-belt-sounds", 1)
		change_setting("picker-smaller-tree-box", true)
		change_setting("picker-squeak-through", false)
		change_setting("picker-multi-concrete", true)
		--change_setting("picker-wire-color-copper", "default")
		--change_setting("picker-wire-color-green", "default")
		--change_setting("picker-wire-color-red", "default")
	end

	--Picker Pipe Tools
	if mods["PickerVehicles"] then
		change_setting("picker-manual-withplayer-penalty", 2000)
		change_setting("picker-manual-noplayer-penalty", 7000)
		change_setting("picker-circuit-penalty", 1000)
		change_setting("picker-trainstop-penalty", 2000)
		change_setting("picker-arriving-stop-penalty", 100)
		change_setting("picker-train-waitstation-penalty", 500)
		change_setting("picker-train-waitstation-nostops-penalty", 1000)
		change_setting("picker-arriving-signal-penalty", 100)
		change_setting("picker-waiting-signal-penalty", 100)
		change_setting("picker-waiting-at-signal-multiplier", 0.1)
		change_setting("picker-no-path-penalty", 1000)
		change_setting("picker-temporary-stop-wait-time", 300)
		change_setting("picker-wait-condition-default", 1800)
		change_setting("picker-inactivity-wait-condition-default", 300)
		change_setting("picker-better-lights-cars", true)
		change_setting("picker-better-lights-trains", true)
		change_setting("picker-naked-rails", true)
		change_setting("picker-unstoppable-trains", true)
	end

	--Platforms
	if mods["platforms"] then
		--change_setting("platform-theme", "Grid")
		change_setting("replace-landfill", false)
	end

	--Project Cybersyn
	if mods["cybersyn"] then
		change_setting("cybersyn-manager-enabled", false)
	end

	--Quality of Life Research
	if mods["qol_research"] then
		change_setting("qol-modpack-compatibility-enabled", true)
		change_setting("qol-infinite-research-enabled", true)
		change_setting("qol-crafting-speed-research-enabled", true)
		change_setting("qol-inventory-size-research-enabled", true)
		change_setting("qol-mining-speed-research-enabled", true)
		change_setting("qol-movement-speed-research-enabled", true)
		change_setting("qol-player-reach-research-enabled", true)
		--change_setting("qol-custom-config", "")
	end

	--Realistic Fusion Power
	if mods["RealisticFusionPower"] then
		change_setting("rfp-science-multiplier", 1)
		change_setting("rfp-antimatter", true)
		change_setting("rfp-tritium-decay", true)
		change_setting("rfp-advanced-deuterium-extraction", true)
		change_setting("rfp-hc-stuff", true)
		change_setting("rfp-hc-priority", "secondary")
		change_setting("rfp-ddw-recycling", true)
		change_setting("rfp-gs-process-efficiency", 1)
		change_setting("rfp-replace-krastorio", true)
		change_setting("rfp-krastorio-remove-tritium", false)
		change_setting("rfp-replace-se", true)
		change_setting("rfp-se-antimatter-ratio", 20)
		change_setting("rfp-use-se-antimatter", true)
		change_setting("rfp-aneutronic-composite", true)
	end

	--Realistic Reactors
	if mods["RealisticReactors"] then
		change_setting("realistic-reactors-disable-vanilla-reactor", true)
		change_setting("realistic-reactors-disable-reactor-light", false)
		change_setting("realistic-reactors-fallout-appearance", "green-veil")
		change_setting("realistic-reactors-clouds-generation", 200)
		change_setting("realistic-reactors-clouds-duration", 80)
		change_setting("realistic-reactors-fallout-duration", 600)
		change_setting("realistic-reactors-sarcophagus-duration", 1800)
	end

	--ReStack
	if mods["ReStack"] then
		change_setting("ReStack-tiles", 100)
		change_setting("ReStack-tiles-priority", false)
		change_setting("ReStack-wood", 0)
		change_setting("ReStack-ores", 0)
		change_setting("ReStack-plates", 0)
		change_setting("ReStack-modules", 0)
		change_setting("ReStack-uranium", 0)
		change_setting("ReStack-solid-fuel", 0)
		change_setting("ReStack-nuclear-fuel", 0)
		change_setting("ReStack-fuel-category-nuclear", 0)
		change_setting("ReStack-rocket-parts", 0)
		change_setting("ReStack-science-pack", 0)
		change_setting("ReStack-barrel-stack", 0)
		change_setting("ReStack-barrel-fill", 0)
		change_setting("ReStack-belt", 0)
		change_setting("ReStack-pipe", 0)
		change_setting("ReStack-container", 50)
		change_setting("ReStack-inserter", 0)
		change_setting("ReStack-electric-pole", 0)
		change_setting("ReStack-roboport", 0)
		change_setting("ReStack-robot", 0)
		change_setting("ReStack-rail", 0)
		change_setting("ReStack-rail-signal", 0)
		change_setting("ReStack-train-stop", 0)
		change_setting("ReStack-train-carriage", 0)
		change_setting("ReStack-car", 0)
		change_setting("ReStack-combinator", 0)
		change_setting("ReStack-wire", 0)
		change_setting("ReStack-mining-drill", 0)
		change_setting("ReStack-furnace", 0)
		change_setting("ReStack-crafting-machine", 0)
		change_setting("ReStack-beacon", 0)
		change_setting("ReStack-boiler", 0)
		change_setting("ReStack-generator", 0)
		change_setting("ReStack-reactor", 0)
		change_setting("ReStack-ammo-bullet", 0)
		change_setting("ReStack-ammo-shotgun", 0)
		change_setting("ReStack-ammo-cannon", 0)
		change_setting("ReStack-ammo-artillery", 20)
		change_setting("ReStack-ammo-rocket", 0)
		change_setting("ReStack-ammo-flamethrower", 0)
		change_setting("ReStack-turret", 0)
		change_setting("ReStack-wall", 0)
	end

	--Realistic Fusion Weaponry
	if mods["RealisticFusionWeaponry"] then
		--change_setting("rfw-fission-gfx", "RFW")
		--change_setting("rfw-thermonuclear-gfx", "RFW")
		--change_setting("rfw-fusion-gfx", "RFW")
		--change_setting("rfw-antimatter-gfx", "RFW")
		--change_setting("rfw-screen-burn", 10)
		change_setting("rfw-fart-throwers", false)
	end

	--Robot Attrition
	if mods["robot_attrition"] then
		change_setting("robot-attrition-repair", "Repair75")
	end

	--Rocket-Silo Construction
	if mods["Rocket-Silo-Construction"] then
		change_setting("rsc-st-cost-mp", 1)
		change_setting("rsc-st-dont-place-tiles", false)
		change_setting("rsc-st-enable-se-cargo-silo", true)
		change_setting("rsc-st-enable-se-probe-silo", true)
		change_setting("rsc-st-not-removable-silo", false)
		change_setting("rsc-st-not-removable-site", true)
		change_setting("rsc-st-work-for-insert-material", 50)
		change_setting("rsc-st-work-for-remove-stone", 500)
	end

	--Chlorine
	if mods["bzchlorine"] then
		change_setting("bzchlorine-recipe-bypass", "")
		change_setting("bzchlorine-list", false)
		change_setting("bzchlorine-salt", false)
		change_setting("bzchlorine-early-salt", "assembler")
		change_setting("bzchlorine-more-intermediates", "yes")
	end

	--Schall Circuit Group
	if mods["SchallCircuitGroup"] then
		change_setting("circuitgroup-order", "aw")
		change_setting("circuitgroup-individual-combinator-subgroups", false)
	end

	--Schall Transport Group
	if mods["SchallTransportGroup"] then
		change_setting("transportgroup-order", "av")
	end

	--SE Space Trains
	if mods["se-space-trains"] then
		change_setting("space-battery-decay-enable-setting", true)
		change_setting("space-battery-pack-energy-density-setting", "50 MJ (Default)")
		change_setting("space-cargo-wagon-capacity-setting", "50 Slots (Default)")
		change_setting("space-fluid-wagon-capacity-setting", "30.000 (Default)")
		change_setting("space-locomotive-speed-setting", "518 km/h (Default)")
	end

	--Silica & Silicon
	if mods["bzsilicon"] then
		change_setting("bzsilicon-bio-crushed-stone", true)
		change_setting("bzsilicon-more-intermediates", "more")
		change_setting("bzsilicon-recipe-bypass", "")
	end

	--Space Exploration
	if mods["space-exploration"] then
		change_setting("se-space-pipe-capacity", 150)
		change_setting("se-pylon-charge-points", false)
		change_setting("se-supercharger-individual-charge-rate", 90)
		change_setting("se-deep-space-belt-speed-2", 90)
		change_setting("se-deep-space-belt-blue", true)
		change_setting("se-deep-space-belt-cyan", true)
		change_setting("se-deep-space-belt-green", true)
		change_setting("se-deep-space-belt-magenta", true)
		change_setting("se-deep-space-belt-red", true)
		change_setting("se-deep-space-belt-white", true)
		change_setting("se-deep-space-belt-yellow", true)
		change_setting("se-spawn-small-resources", true)
		change_setting("se-add-icon-labels", true)
		change_setting("se-delivery-cannon-artillery-timeout", 120)
	end

	--Space Exploration Recycling Extras
	if mods["se-recycling-extras"] then
		change_setting("se-recycling-percentage", 75)
		change_setting("se-recycling-rounding-mode", "down")
	end

	--Space Exploration Flow Control Bridge
	if mods["se-flow-control-bridge"] then
		change_setting("se-flow-bridge-is-pipe-arrows-disabled", true)
	end

	--Squeak Through
	if mods["Squeak Through"] then
		change_setting("squeakthrough-mod-compatibility", "opt-out")
	end

	--Stable Foundations
	if mods["StableFoundations"] then
		change_setting("sf-reinforce-popup-toggle", true)
		change_setting("sf-friendly-reduction-toggle", true)
		change_setting("sf-military-target-toggle", true)
		change_setting("sf-reinforce-wall-toggle", true)
		change_setting("sf-reinforce-units-toggle", false)
		change_setting("sf-reinforce-players-toggle", false)
		change_setting("sf-invulnerable-poles-toggle", false)
		change_setting("sf-invulnerable-rails-toggle", false)
		change_setting("sf-invulnerable-lamps-toggle", false)
		change_setting("sf-friendly-physical-reduction", 100)
		change_setting("sf-friendly-explosion-reduction", 100)
		change_setting("sf-friendly-impact-reduction", 100)
		change_setting("sf-refined-reduction-percent", 40)
		change_setting("sf-refined-reduction-flat", 10)
		change_setting("sf-concrete-reduction-percent", 20)
		change_setting("sf-concrete-reduction-flat", 5)
		change_setting("sf-stone-reduction-percent", 10)
		change_setting("sf-stone-reduction-flat", 1)
		change_setting("sf-entity-refresh", 6)	
	end

	--Them Thar Hills
	if mods["ThemTharHills"] then
		change_setting("themtharhills-initial-gold", false)
		change_setting("themtharhills-se-maintenance", false)
		change_setting("themtharhills-enable-aqua-regia", true)
	end

	--Tin
	if mods["bztin"] then
		change_setting("bztin-list", false)
		change_setting("bztin-more-intermediates", "bronze")
		change_setting("bztin-recipe-bypass", "")
	end

	--Titanium
	if mods["bztitanium"] then
		change_setting("bztitanium-mining-fluid", "lubricant")
		change_setting("bztitanium-mining-fluid-amount", 4)
		change_setting("bztitanium-recipe-bypass", "")
	end

	--Tungsten
	if mods["bztungsten"] then
		change_setting("bztungsten-recipe-bypass", "")
		change_setting("bztungsten-more-intermediates", "cuw")
		change_setting("bztungsten-se-sintering", true)
		change_setting("bztungsten-avoid-military", "yes")
		change_setting("bztungsten-mining-fluid-k2", "mineral-water")
		change_setting("bztungsten-mining-fluid-amount-k2", 4)
	end

	--Unbarrel
	if mods["unbarrel"] then
		change_setting("unbarrel-recipe-excludes", "se-liquid-rocket-fuel")
		change_setting("unbarrel-subgroup-excludes", "empty-barrel fill-barrel fluid-recipes materialisation")
		change_setting("unbarrel-group-excludes", "")
		change_setting("unbarrel-category-excludes", "space-materialisation")
	end

	--Vehicle Corpses
	if mods["vehicle-corpses"] then
		change_setting("vc-time-to-live", 30)
	end

	--Zirconium
	if mods["bzzirconium"] then
		change_setting("bzzirconium-recipe-bypass", "")
		change_setting("bzzirconium-byproduct", false)
		change_setting("bzzirconium-enable-intermediates", "lds")
		change_setting("bzzirconium-early", true)
		change_setting("bzzirconium-ammo", true)
		change_setting("bzzirconium-enable-sorting", false)
	end
--end

--Modpack Enemy Settings
--if settings.startup["ethryan-modpack-enemy-settings"].value == true then
	--Combat Mechanics Overhaul
	if mods["combat-mechanics-overhaul"] then
		change_setting("spitter-spit-blockable", true)
		change_setting("worm-spit-blockable", true)
		change_setting("rockets-blockable", true)
		change_setting("pools-affect-structures", true)
		change_setting("pools-affect-flying", true)
		change_setting("shotguns-hit-friendly", false)
		change_setting("unit-speed", 100)
		change_setting("unit-health", 100)
		change_setting("unit-range", 100)
		change_setting("worm-health", 100)
		change_setting("worm-range", 100)
		change_setting("spawner-health", 100)
	end

	--Enemy Race Manager
	if mods["enemyracemanager"] then
		--Startup
		change_setting("enemyracemanager-enable-bitters", true)
		change_setting("enemyracemanager-vanilla-k2-creep", true)
		--change_setting("enemyracemanager-vanilla_map_color", VANILLA_MAP_COLOR)
		change_setting("enemyracemanager-max-level", "Hardcore - Max L20")
		change_setting("enemyracemanager-max-attack-range", 14)
		change_setting("enemyracemanager-enemy-corpse-time", 10)
		change_setting("enemyracemanager-menu-replacement-framework", true)
		change_setting("enemyracemanager-menu-replacement-race", "erm_zerg_exp")
		change_setting("enemyracemanager-level-multipliers", 5)
		change_setting("enemyracemanager-max-hitpoint-multipliers", 10)
		change_setting("enemyracemanager-damage-multipliers", 1)
		--change_setting("enemyracemanager-running-speed-multipliers", 1)
		change_setting("enemyracemanager-pollution-to-attack-multipliers", 0.025)
		change_setting("enemyracemanager-land-collision-only", false)
		change_setting("enemyracemanager-mapping-method", "1 Race / Surface")
		change_setting("enemyracemanager-default_enforce_temperature", false)
		change_setting("enemyracemanager-2way-group-enemy-orientation", "x-axis")
		change_setting("enemyracemanager-2way-group-split-point", 0)
		change_setting("enemyracemanager-2way-group-enemy-positive", "erm_vanilla")
		change_setting("enemyracemanager-2way-group-enemy-negative", "erm_vanilla")
		change_setting("enemyracemanager-4way-x-axis", 0)
		change_setting("enemyracemanager-4way-y-axis", 0)
		change_setting("enemyracemanager-4way-top-left", "erm_vanilla")
		change_setting("enemyracemanager-4way-top-right", "erm_vanilla")
		change_setting("enemyracemanager-4way-bottom-left", "erm_vanilla")
		change_setting("enemyracemanager-4way-bottom-right", "erm_vanilla")
		change_setting("enemyracemanager-enhance-defense", false)
		change_setting("enemyracemanager-attack-meter-group-interval", 3)
		change_setting("enemyracemanager-free-for-all", false)
		change_setting("enemyracemanager-boss-difficulty", "Advanced")
		change_setting("enemyracemanager-boss-unit-spawn-size", "Squad")	
		change_setting("enemyracemanager-unit-framework-timeout", 15)
		change_setting("enemyracemanager-unit-framework-start-auto-deploy", false)

		--Map
		change_setting("enemyracemanager-max-gathering-groups", 15)
		change_setting("enemyracemanager-max-group-size", 100)
		change_setting("enemyracemanager-build-style", "Build A Base")
		change_setting("enemyracemanager-build-formation", "1-4-5")
		change_setting("enemyracemanager-evolution-point-multipliers", 1)
		change_setting("enemyracemanager-evolution-point-spawner-kills-deduction", false)
		change_setting("enemyracemanager-attack-meter-enable", true)
		change_setting("enemyracemanager-attack-meter-threshold", 1.25)
		change_setting("enemyracemanager-attack-meter-threshold-deviation", 10)
		change_setting("enemyracemanager-attack-meter-collector-multiplier", 1)
		change_setting("enemyracemanager-rocket-attack-point-enable", true)
		change_setting("enemyracemanager-rocket-attack-point", 200)
		change_setting("enemyracemanager-super-weapon-attack-point-enable", true)
		change_setting("enemyracemanager-super-weapon-attack-point", 300)
		change_setting("enemyracemanager-super-weapon-counter-attack-enable", true)
		change_setting("enemyracemanager-flying-squad-enable", true)
		change_setting("enemyracemanager-flying-squad-chance", 25)
		change_setting("enemyracemanager-dropship-squad-enable", true)
		change_setting("enemyracemanager-dropship-squad-chance", 25)
		change_setting("enemyracemanager-featured-squad-chance", 33)
		change_setting("enemyracemanager-elite-squad-enable", true)
		change_setting("enemyracemanager-elite-squad-attack-points", 60000)
		change_setting("enemyracemanager-elite-squad-level", 2)
		change_setting("enemyracemanager-precision-strike-flying-unit-enable", true)
		change_setting("enemyracemanager-precision-strike-flying-unit-chance", 25)
		change_setting("enemyracemanager-precision-strike-warning", true)
		change_setting("enemyracemanager-time-based-enable", true)
		change_setting("enemyracemanager-time-based-points", 2)
	end

	--ERM Protoss
	if mods["erm_toss"] then
		--change_setting("erm_toss-map-color", {r=0, g=192, b=192, a=255})
		change_setting("erm_toss-team_color_enable", false)
		--change_setting("erm_toss-team_color", {r=0, g=192, b=192, a=255})
		change_setting("erm_toss-team_blend_mode", "3")
		change_setting("erm_toss-team_color_preserve_gloss", false)
		change_setting("erm_toss-enable_floor_decals", true)
		change_setting("erm_toss-k2-creep", false)
	end
	
	if mods["erm_toss_exp"] then
		--change_setting("erm_toss_exp-map-color", {r = 252, g = 252, b = 56, a = 255})
		--change_setting("erm_toss_exp-team-color", {r = 126, g = 126, b = 28, a = 255})
		change_setting("erm_toss_exp-team-blend-mode", "3")
		change_setting("erm_toss_exp-k2-creep", false)
	end
	
	if mods["erm_terran_exp"] then
		--change_setting("erm_terran_exp-map-color", {r=204, g=224, b=208, a=255})
		--change_setting("erm_terran_exp-team-color", {r=102, g=112, b=104, a=255})
		change_setting("erm_terran_exp-team-blend-mode", "3")
		change_setting("erm_terran_exp-k2-creep", true)
	end
	
	if mods["erm_zerg"] then
		--change_setting("erm_zerg-map-color", {r=248, g=140, b=20, a=255})
		change_setting("erm_zerg-team_color_enable", true)
		--change_setting("erm_zerg-team_color", {r=248, g=140, b=20, a=255})
		change_setting("erm_zerg-team_blend_mode", "3")
		change_setting("erm_zerg-team_color_preserve_gloss", false)
		change_setting("erm_zerg-enable_floor_decals", false)
		change_setting("erm_zerg-k2-creep", true)
	end
	
	if mods["erm_zerg_exp"] then
		--change_setting("erm_zerg_exp-map-color", {r=136, g=64, b=156, a=255})
		--change_setting("erm_zerg_exp-team-color", {r=24, g=6, b=29, a=255})
		change_setting("erm_zerg_exp-team-blend-mode", "3")
		change_setting("erm_zerg_exp-k2-creep", true)
	end
--end

--Ethryan Graphics Settings
--if settings.startup["ethryan-modpack-graphics-settings"].value == true then
	--AAI Containers
	if mods["aai-containers"] then
		change_setting("aai-containers-scale-icons", true)
		change_setting("aai-containers-number-icons", true)
	end

	--BrassTacks
	if mods["BrassTacks"] then
		change_setting("brasstacks-classic-icons", false)
	end
--end

--Ethryan Core Fragment Settings
--if settings.startup["ethryan-modpack-fragment-settings"].value == true then
	--AAI Containers
	if mods["core-mine-balancer-for-sek2bz"] then
		change_setting("deep-core-fragment-amount", 40)
		change_setting("deep-core-fragment-energy", 20)
		change_setting("use-stone", true)
		change_setting("stone-amount", 3)
		change_setting("stone-chance", 1)
		change_setting("use-iron", true)
		change_setting("iron-amount", 3)
		change_setting("iron-chance", 1)
		change_setting("use-copper", true)
		change_setting("copper-amount", 2)
		change_setting("copper-chance", 1)
		change_setting("use-coal", true)
		change_setting("coal-amount", 2)
		change_setting("coal-chance", 1)
		if mods["bzaluminum"] then
			change_setting("use-aluminum", true)
			change_setting("aluminum-amount", 2)
			change_setting("aluminum-chance", 1)
		end
		if mods["bzlead"] then
			change_setting("use-lead", true)
			change_setting("lead-amount", 2)
			change_setting("lead-chance", 1)
		end
		if mods["bzzirconium"] then
			change_setting("use-zircon", true)
			change_setting("zircon-amount", 2)
			change_setting("zircon-chance", 1)
		end
		if mods["bztin"] then
			change_setting("use-tin", true)
			change_setting("tin-amount", 1)
			change_setting("tin-chance", 1)
		end
		if mods["bzchlorine"] then
			change_setting("use-salt", false)
			change_setting("salt-amount", 1)
			change_setting("salt-chance", 1)
		end
		if mods["bzgold"] then
			change_setting("use-silver", false)
			change_setting("silver-amount", 1)
			change_setting("silver-chance", 1)
		end
		if mods["IfNickel"] then
			change_setting("use-nickel", true)
			change_setting("nickel-amount", 1)
			change_setting("nickel-chance", 1)
		end
		if mods["BrassTacks"] then
			change_setting("use-zinc", true)
			change_setting("zinc-amount", 1)
			change_setting("zinc-chance", 1)
		end
		
		if mods["bzcarbon"] then
			change_setting("use-graphite", true)
			change_setting("graphite-amount", 1)
			change_setting("graphite-chance", 0.75)
			change_setting("use-rough-diamond", false)
			change_setting("rough-diamond-amount", 1)
			change_setting("rough-diamond-chance", 1)
		end
		if mods["bzcarbon"] or mods["ThemTharHills"] then
			change_setting("use-gold", false)
			change_setting("gold-amount", 1)
			change_setting("gold-chance", 1)
		end
		change_setting("use-uranium", true)
		change_setting("uranium-amount", 1)
		change_setting("uranium-chance", 0.33)
		if mods["Krastorio2"] then
			change_setting("use-raremetals", true)
			change_setting("raremetals-amount", 1)
			change_setting("raremetals-chance", 0.75)
		end
		if mods["bztitanium"] then
			change_setting("use-titan", false)
			change_setting("titan-amount", 1)
			change_setting("titan-chance", 1)
		end
		if mods["bztungsten"] then
			change_setting("use-tungsten", false)
			change_setting("tungsten-amount", 1)
			change_setting("tungsten-chance", 1)
		end
		if mods["manganese"] then
			change_setting("use-manganese", true)
			change_setting("manganese-amount", 1)
			change_setting("manganese-chance", 0.15)
		end
		if mods["bismuth"] then
			change_setting("use-bismuth", true)
			change_setting("bismuth-amount", 1)
			change_setting("bismuth-chance", 0.12)
		end
		if mods["Tantalite"] then
			change_setting("use-tantalite", true)
			change_setting("tantalite-amount", 1)
			change_setting("tantalite-chance", 0.4)
		end
		if mods["Limestone"] then
			change_setting("use-limestone", true)
			change_setting("limestone-amount", 1)
			change_setting("limestone-chance", 0.33)
		end
		if mods["Indium"] then
			change_setting("use-indite", true)
			change_setting("indite-amount", 1)
			change_setting("indite-chance", 0.3)
		end
		if mods["Chromium"] then
			change_setting("use-chromium", true)
			change_setting("chromium-amount", 1)
			change_setting("chromium-chance", 0.33)
		end
		if mods["Cobalt"] then
			change_setting("use-cobalt", true)
			change_setting("cobalt-amount", 1)
			change_setting("cobalt-chance", 0.15)
		end
		if mods["apm_nuclear_ldinc"] then
			change_setting("use-thorium", true)
			change_setting("thorium-amount", 1)
			change_setting("thorium-chance", 0.02)
		end
		if mods["bzgas"] then
			change_setting("use-gas", true)
			change_setting("gas-amount", 18)
			change_setting("gas-chance", 0.9)
		end
		if mods["Krastorio2"] then
			change_setting("use-mineralwater", true)
			change_setting("mineralwater-amount", 8)
			change_setting("mineralwater-chance", 0.4)
		end
		change_setting("use-oil", true)
		change_setting("oil-amount", 16)
		change_setting("oil-chance", 0.8)
		change_setting("use-water", true)
		change_setting("water-amount", 40)
		change_setting("water-chance", 0.6)
		
		change_setting("use-pyroflux", false)
		change_setting("pyroflux-amount", 1)
		change_setting("pyroflux-chance", 1)
	end
--end