local fire_pipe_boiler_item = table.deepcopy(data.raw["item"]["boiler"])
fire_pipe_boiler_item.name = "fire-pipe-boiler"
fire_pipe_boiler_item.place_result = "fire-pipe-boiler"

data:extend{fire_pipe_boiler_item}