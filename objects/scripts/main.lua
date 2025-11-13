_G.engine = EngineFactory.new()
  :with_title("Reprobate")
  :with_width(1920)
  :with_height(1080)
  :with_scale(4.0)
  :with_fullscreen(true)
  :create()

function setup()
  local random = math.random

  local source = objectmanager:create("square")
  for _ = 1, 4200 do
    local object = objectmanager:clone(source)
    object.action = "default"
    object.placement = {
      x = random(0, 480),
      y = random(0, 270)
    }
  end
end

function loop() end
