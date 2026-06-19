print("Hello Wolrd!")
print("Hello", "Wolrd!")
print("Hello" .. "Wolrd!")
print(nil) -- null

-- number 
-- string 
-- boolean 
-- table

-- comments single line
--[[
multiline comment
]]

local x = 5 -- scoped to this file
_G.y = 10 -- global var _G is optional
print(x)
print(y)

local string1 = 'Hi'
local string2 = "Hello"
local string3 = [[Multiline 
string]]
local name = "Alex"

print(string1, string2, string3)
print("Hi I'm, ".. name)

local stringSize = "Hello world Im alex"
print(#stringSize) -- Get string length with #string

local num = 20
local str = tostring(num)
print(type(str))

print(string.upper("Mystic"))
print(string.lower("Mystic"))
print(string.len("Mystic"))

-- +-/*%^
print(math.pi)
print(math.min(1,2,3,4,5))
print(math.max(1,2,3,4,5,6))
print(math.ceil(2.8))
print(math.floor(2.9))
-- math.randomseed(os.time())
print("Random number = "..math.random(0,10))

-- if statements
print("\nif statements:")

local stat = 2

if stat < 5 then
    print("x is less than 5")
end

--[[
if  then
elseif  then
else 
end
]]

--[[

and
or
not
<
>
>=
<=
==
~=
59;40
]]

-- for loops
print("\nFor loops:")

for i = 1, 10, 2 do
    print("Inside of for loop i = "..i)
end


-- while loops
print("\nWhile loops:")

local cou = 1

while cou < 10 do
    print("While loop content: i = "..cou)
    cou = cou + 1
end

-- repeat loops (do while)
print("\nRepeat loops:")

local repvar = 10

repeat
    repvar = repvar + 1
    print(repvar)
until repvar > 5

-- user input
-- io.read()
-- io.write() -- print() without new line


-- tagles (arrays)
print("\nTables:")

local tbl = {"This", 3, true, 3.99}
table.insert(tbl, 5)
table.remove(tbl, 5)

for index, value in pairs(tbl) do
    print(index, value)
end

print("\nMatrix:")
local matrix = {
    {8, 2, 3},
    {5, 6, 1},
    {3, 6, 4}
}

for i = 1, #matrix do 
    for j = 1, #matrix[i] do
        print(matrix[i][j])
    end
end

-- Function
print("\nFunctions:")
local function addTwo(x, y) 
    print("add ".. x .. " + " .. y .. " = " .. x + y)
    return x + y
end

addTwo(2, 3)

-- IO Stream
print("\nWorking with files:")

-- io.output("myFile.txt")
-- io.write("Inside of my text file.") -- close() it
-- io.close()

io.input("myFile.txt")
local fileData = io.read("*all")
-- "*line" "*all"
print(fileData)
io.close()

local file = io.open("openFile.txt", "w")
-- "w" "r" "a"
if file ~= nil then 
    file:write("Hello There!")
    file:close()
else
    print("File doesn't exist!")
end

file = io.open("openFile.txt", "r")
if file ~= nil then 
    print(file:read())
    file:close()
else
    print("File doesn't exist!")
end


-- Custom Modules
print("\nCustom Modules:")

local mod = require("src.tut.lua.custom")
mod.sum(1, 2)
mod.sayHello()

-- Object Oriented Programming
print("\nOOP:")

local function Pet(name) 
    return { 
        name = name or "Animal",
        age = 4,
        makeNoise = function() 
            print(name .. " is making noise")
        end
    }
end

local cat = Pet("Jack")
local dog = Pet("Ronen")

dog:makeNoise()

-- print("\n:")
-- print("\n:")
-- print("\n:")
-- print("\n:")
-- print("\n:")
-- print("\n:")
-- print("\n:")