_G.engine = EngineFactory.new()
  :with_title("Objects")
  :with_width(1920)
  :with_height(1080)
  :with_fullscreen(true)
  :create()

function setup()
  local scene = "benchmark"

  scenemanager:register(scene)

  scenemanager:set(scene)
end
