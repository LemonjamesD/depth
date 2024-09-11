local config = require("config")

-- Helper function to make new recipes
-- function make_recipe(name, )

data.raw["recipe"]["iron-plate"].ingredients = {{type = "item", name = "iron-ore", amount = 5}}

-- Fire pipe boiler recipe
local fire_pipe_boiler_recipe = table.deepcopy(data.raw["recipe"]["boiler"])
fire_pipe_boiler_recipe.name = "fire-pipe-boiler"
fire_pipe_boiler_recipe.result = "fire-pipe-boiler"

-- Disables old boiler
data.raw["recipe"]["boiler"].enabled = false

data:extend{
    fire_pipe_boiler_recipe
}