-- Testing...

position = Vector.new(50, 50)

position:set_x(100)

function update()
  position:set_x(position:x() + 0.2)
  position:set_y(position:y() + 0.2)
end
