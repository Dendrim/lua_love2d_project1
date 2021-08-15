require "Matrix"
require "BasicObject"

function love.load()
  a= {x=100,y=200,width=50,height=80}
end

function love.update(dt)
  a.x= a.x+1*dt
  a.y= a.y+1*dt
end

function love.draw()
  love.graphics.rectangle("fill",a.x,a.y, a.width, a.height)
end