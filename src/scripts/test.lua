-- Testing...

position = Vector.new(50, 50)

position:set_x(100)

time = 0

function update()
  time = time + 0.1
  position:set_x((time % 700) - 100)
  position:set_y((math.cos(time / 100) * 20) + 150)
end
