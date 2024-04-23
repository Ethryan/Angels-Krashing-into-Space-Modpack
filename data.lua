--Initialize
ethryansmodpack = ethryansmodpack or {}

--Trigger Checks
ethryansmodpack.trigger = ethryansmodpack.trigger or {}
ethryansmodpack.trigger.enable_hq_graphics = mods["reskins-ethryan"] and true or settings.startup["ethryan-hq-graphics"].value

--Load Prototypes
require("prototypes.subgroups")
require("prototypes.1.items.Science")
require("prototypes.1.items.Materials")
require("prototypes.1.items.OreMaterials")
require("prototypes.1.machines.OreSorter")
require("prototypes.1.machines.OreCrusher")
require("prototypes.1.recipes.Chemistry")
require("prototypes.1.recipes.Materials")
require("prototypes.1.recipes.Machines")
require("prototypes.1.recipes.Research")
require("prototypes.1.technology.Research")
require("prototypes.1.technology.Fission")
require("prototypes.1.technology.Materials")
require("prototypes.1.steelflowcontrol.entities")
require("prototypes.1.steelflowcontrol.items")
require("prototypes.1.steelflowcontrol.recipes")
require("prototypes.1.steelflowcontrol.technology")