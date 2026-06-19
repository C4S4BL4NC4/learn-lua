_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(0.9, 0.9, 1)
end

function love.update(dt)

end

function love.draw()
    love.graphics.setColor(1, 0, 0)
    love.graphics.rectangle("fill", 50, 50, 50, 50)
    love.graphics.circle("line", 300, 300, 50)
end
