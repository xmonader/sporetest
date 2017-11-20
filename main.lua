local function slurp(path)
    local f = io.open(path)
    local s = f:read("*a")
    f:close()
    return s
end
local Spore = require 'Spore'

local defs = slurp("todoapi.json")
local todo = Spore.new_from_string(defs)
print(todo)
for k,v in pairs(todo) do print(k,v) end
todo:enable 'Format.JSON'
-- github:enable('Auth.Basic', {
--     username = 'schacon/token',
--     password = '6ef8395fecf207165f1a82178ae1b984',
-- })
-- local res = todo.list_todos()
-- for k,v in pairs(res) do print(k,v) end

print(todo.list_todos())
-- print(res)
-- print(res.status)               --> 200
-- print(res.headers['x-runtime']) --> 126ms