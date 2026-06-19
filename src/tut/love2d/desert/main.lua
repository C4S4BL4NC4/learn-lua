_G.love = require("love")

function love.load()
    _G.character = {
        x = 400,
        y = 300,
        sprite = {
            image = love.graphics.newImage("assets/spritesheets/male-spritesheet.png"),
            width = 832,
            height = 3456,
            scale = 1.2,
            QUAD_WIDTH = 64,
            QUAD_HEIGHT = 64
        },
        animation = {
            direction = "left",
            current = "idle",
            idle = {
                state = true,
                max_frames = 2,
                row = 25,
                speed = 0.3,
                frame = 1,
                timer = 0
            },
            run = {
                state = false,
                max_frames = 8,
                row = 41,
                speed = 0.08,
                frame = 1,
                timer = 0
            }
        }
    }

    quads = {
        idle = {},
        run = {}
    }

    -- Create quads for idle animation
    for i = 1, character.animation.idle.max_frames do
        quads.idle[i] = love.graphics.newQuad(
            character.sprite.QUAD_WIDTH * (i - 1),
            character.animation.idle.row * character.sprite.QUAD_HEIGHT,
            character.sprite.QUAD_WIDTH,
            character.sprite.QUAD_HEIGHT,
            character.sprite.width,
            character.sprite.height
        )
    end

    -- Create quads for run animation
    for i = 1, character.animation.run.max_frames do
        quads.run[i] = love.graphics.newQuad(
            character.sprite.QUAD_WIDTH * (i - 1),
            character.animation.run.row * character.sprite.QUAD_HEIGHT,
            character.sprite.QUAD_WIDTH,
            character.sprite.QUAD_HEIGHT,
            character.sprite.width,
            character.sprite.height
        )
    end

end

function love.update(dt)
      
    if love.keyboard.isDown("space") then
        character.animation.current = "run"
    else
        character.animation.current = "idle"
    end

    local current_anim = character.animation[character.animation.current]
    
    current_anim = character.animation[character.animation.current]
    current_anim.timer = current_anim.timer + dt
    
    if current_anim.timer > current_anim.speed then
        current_anim.timer = 0
        current_anim.frame = current_anim.frame + 1
        
        if current_anim.frame > current_anim.max_frames then
            current_anim.frame = 1
        end
    end
end

function love.draw()
    love.graphics.scale(character.sprite.scale)
    local current_anim = character.animation[character.animation.current]
    local current_quad = quads[character.animation.current][current_anim.frame]
    love.graphics.draw(character.sprite.image, current_quad, character.x, character.y)
end
