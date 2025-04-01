-- Roblox SDK made for Studio Essentials 
-- Author: Sharky65749
-- Last PR requester: Sharky65749

local SDK = {}
SDK.__index = SDK

SDK.Config = {
    BACKEND = "server url",
    API_KEY = "Enter your API key",
    ALLOW_LOGS = false, -- // Enabling gives us more data on bugs within the code, this is not required and only if you want.
}

SDK.Modules = {
    Analytics = script.Parent.Analytics,
    Moderation = script.Parent.Moderation,
    Network = script.Parent.Network,
    Utils = script.Parent.Utils
}

return SDK