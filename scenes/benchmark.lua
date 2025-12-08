local scene = {}

local random = math.random

function scene.on_enter()
  local matrix = scene:get("square", SceneKind.object)

  for _ = 1, 30000 do
    local clone = matrix:clone()
      clone.position = {
        x = random(0, 1920),
        y = random(0, 1080)
      }

      clone:on_hover(function (self)
        self.angle = 45
      end)

      clone:on_unhover(function (self)
        self.angle = 0
      end)
  end
end

return scene
