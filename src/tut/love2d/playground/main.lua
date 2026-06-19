_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(0, 0, 0)

    _G.pacman = {
        x = 200,
        y = 300,
        color = {1, 1, 0},
        drawShape = function(self)
            love.graphics.setColor(unpack(self.color))
            love.graphics.arc("fill", self.x, self.y, 60, 1, 5)
        end,
        eat = false,
    }

    _G.food = {
        x = 700,
        y = pacman.y,
        color = {1, 0, 0},
        drawShape = function(self)
            love.graphics.setColor(unpack(self.color))
            love.graphics.circle("fill", self.x, self.y, 30)
        end,
    }

end

function love.update(dt)

    if love.keyboard.isDown("a") then 
        pacman.x = pacman.x - 1
    end

    if love.keyboard.isDown("d") then 
        pacman.x = pacman.x + 1
    end

    if love.keyboard.isDown("w") then 
        pacman.y = pacman.y - 1
    end

    if love.keyboard.isDown("s") then 
        pacman.y = pacman.y + 1
    end

    

    if pacman.x >= food.x + 20 then 
        pacman.eat = true
    end
end

function love.draw()

    if not pacman.eat then 
        food:drawShape()
    end
    
    pacman:drawShape()
end
