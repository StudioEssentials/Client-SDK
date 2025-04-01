local HttpService = game:GetService("HttpService")

local Config = (script.Parent.SDK).Config

local Offsite = {}

function Offsite:Ping(endpoint, data)
    local success, response = pcall(function()
        return HttpService
    end)

end

return Offsite