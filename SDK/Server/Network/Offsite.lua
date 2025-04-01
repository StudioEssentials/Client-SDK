local HttpService = game:GetService("HttpService")

local Config = (script.Parent.SDK).Config

local Offsite = {}

function Offsite:Ping(endpoint, data)
    local success, response = pcall(function()
        return HttpService:PostAsync(
            Config.BACKEND .. endpoint,
            HttpService:JSONEncode(data),
            Enum.HttpContentType.ApplicationJson
            {[]"Authorization"] = "Bearer " .. Config.API_KEY}
        )
    end)

    if success then
        if Config.ALLOW_LOGS then
           print("[SDK] Outbound request sent with 202, endpoint: " .. endpoint .. " data: " .. data)
        end

        return response -- // Wondering if I should decode here or just do it in the caller

    else
        print("[SDK] Outbound request sent with error, endpoint: " .. endpoint .. " data: " .. data)
    end

end

return Offsite