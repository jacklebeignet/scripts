--[[
    🪐 Nexus Hub - Bootstrapper

    Thanks for using Nexus Hub.

    This script tries to load the Nexus Hub script from a primary
    server. If that server doesn't respond, it automatically tries
    a backup server instead. If neither works, an error message
    is shown.

    This bootstrapper itself is open-source and may be freely
    inspected, viewed, and modified. However, this does NOT apply
    to the content served at the sources below, that loader/script
    remains proprietary per the TOS.

    📜 TOS: https://beignet-api.wisp.uno/tos
    🔒 Privacy Policy: https://beignet-api.wisp.uno/privacy
    🛟 Support Server: https://dsc.gg/beignet
--]]

local sources = {
"https://beignet-api.wisp.uno/static/Loader.luau",
"http://beignet.deez.nz:15037/static/Loader.luau"
}

local success = false
for i, url in ipairs(sources) do
    local ok = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    if ok then
        success = true
        break
    else
        if i < #sources then
            warn("🪐 Nexus Hub: URL " .. i .. " failed. Trying the " .. (i + 1) .. "...")
        end
    end
end
if not success then
    error("🪐 Nexus Hub: All servers are down. Please try again later or contact us.")
end
