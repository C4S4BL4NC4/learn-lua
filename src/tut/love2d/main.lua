_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(0.9, 0.9, 1)

    _G.pacman = {
        x = 200,
        y = 300,
        eat = false,
        food_x = 300
    }
    
    -- pacman.x = 200
    -- pacman.y = 300

end

function love.update(dt)
    pacman.x = pacman.x + 1

    if pacman.x >= pacman.food_x + 20 then 
        pacman.eat = true
    end
    love.graphics.print(pacman.x)
end

function love.draw()

    if not pacman.eat then 
        love.graphics.setColor(1, 0, 0)
        love.graphics.rectangle("fill", 700, 300, 50, 50)
    end
    
    love.graphics.setColor(0, 0, 0)
    love.graphics.circle("line", pacman.x, pacman.y, 30)
end
