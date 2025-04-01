local Logger = {}
local SDK = require(script.Parent.SDK)

-- Implement devsparkles Sentry SDK, for error logging into our backend

-- Could be a good idea to make a logs tab on the frontend for users to debug if they make their own, 
-- also the log tab could include in game errors, and automod strikes.

function Logger:Log(Text)
    if SDK.Config.ALLOW_LOGS then 
        print("[SDK] " .. Text)
    end
end

function Logger:Warn(Text)
    if SDK.Config.ALLOW_LOGS then 
        warn("[SDK WARNING] " .. Text)
    end
end

return Logger