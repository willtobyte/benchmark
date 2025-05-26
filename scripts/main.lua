_G.engine = EngineFactory.new()
  :with_title("Reprobate")
  :with_width(1920)
  :with_height(1080)
  :with_scale(4.0)
  :with_fullscreen(false)
  :create()

local objectmanager = engine:objectmanager()

function setup()
  if jit then
    print("JIT is enabled: " .. jit.version)
  else
    print("JIT is not available")
  end

  local matrix = objectmanager:create("square")

  math.randomseed(os.time())

  for _ = 1, 50000 do
    local clone = objectmanager:clone(matrix)
    clone.action = "default"
    clone.placement = {
      x = math.random(0, 480),
      y = math.random(0, 270)
    }
  end
end

function loop() end
