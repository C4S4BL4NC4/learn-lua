Mod = {
    sum = function (x, y) 
        print(x + y)
        return x + y
    end
,
    diff = function (x, y) 
        print(x - y)
        return x - y
    end
}

function Mod.sayHello(name)
    local x = name or "Person" 
    print("Hello, " .. x)
end

return Mod