local scene = {}

local random = math.random

function scene.on_enter()
  local square = pool.square

  for _ = 1, 10000 do
    local clone = square:clone()
    clone.position = {
      x = random(0, 1920),
      y = random(0, 1080)
    }
  end
end

return scene
