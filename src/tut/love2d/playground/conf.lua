function love.conf(t)
    t.console = false
    t.window.title = "The Loving Game"
    t.window.icon = "icon/game_icon.png"
    t.window.height = 600
    t.window.width = 800
    t.window.resizable = false
    t.window.borderless = false
    t.window.fullscreen = false
    t.window.x = 100
    t.window.y = 100

    -- t.window.minheight = 600
    -- t.window.minwidth = 800
    -- t.identity = "data/saves"
    -- t.version = "1.0.0"
    -- t.externalstorage = false
    -- t.gammacorrect = false
    -- t.audio.mic = true
end