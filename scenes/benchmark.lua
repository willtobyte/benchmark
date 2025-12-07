local scene = {}

local random = math.random

function scene.on_enter()
  local matrix = scene:get("square", SceneKind.object)

  for _ = 1, 100000 do
    local clone = matrix:clone()
      clone.position = {
        x = random(0, 1920),
        y = random(0, 1080)
      }
  end
end

return scene
