local fire_pipe_boiler = table.deepcopy(data.raw["boiler"]["boiler"])
fire_pipe_boiler.name = "fire-pipe-boiler"
-- Fuel input on sides
fire_pipe_boiler.energy_source = {
    type = "fluid",
    fluid_box = {
        pipe_connections = {
            {
                type = "input-output",
                position = {-2,0.5}
            },
            {
                type = "input-output",
                position = {2, 0.5}
            }
        },
        base_area = 4,
        base_level = -1,
        height = 2,
        production_type = "input-output",
        filter = "light-oil",
        burns_fluid = true,
        fluid_usage_per_tick = 30
    }
}
-- Make energy output lower
fire_pipe_boiler.energy_consumption = "900kW"
-- Water input on bottom
fire_pipe_boiler.fluid_box = {
    pipe_connections = {
        {
            type = "input",
            position = {0, 1.5}
        }
    },
    base_area = 1,
    base_level = -1,
    height = 2,
    production_type = "input",
    filter = "water"
}
fire_pipe_boiler.mode = "output-to-separate-pipe"

data:extend{fire_pipe_boiler}