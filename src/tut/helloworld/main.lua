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
local stat = 2

if x < 5 then
    print("x is less than 5")
end

--[[
if  then
elseif
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

]]