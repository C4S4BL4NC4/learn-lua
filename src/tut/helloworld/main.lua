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
