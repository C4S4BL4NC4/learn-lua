_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(0.9, 0.9, 1)

    _G.pacman = {}
    pacman.x = 200
    pacman.y = 300

end

function love.update(dt)
    pacman.x =+ 10
end

function love.draw()
    love.graphics.setColor(1, 0, 0)
    love.graphics.rectangle("fill", 50, 50, 50, 50)
    love.graphics.circle("line", pacman.x, pacman.y, 15)
end
