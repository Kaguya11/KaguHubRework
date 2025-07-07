if not game:IsLoaded() then
    game.Loaded:Wait()
end

local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/Library.lua'))()

local PlaceId = game.PlaceId
local lplr = game:GetService("Players").LocalPlayer
local market = game:GetService("MarketplaceService")
local info = market:GetProductInfo(PlaceId)
local games = {
    [117398147513099] = 'https://raw.githubusercontent.com/Kaguya11/KaguHubRework/refs/heads/main/Scripts/Rivals.lua', -- rivals other
    [4639625707] = 'https://raw.githubusercontent.com/Kaguya11/KaguHubRework/refs/heads/main/Scripts/WarTycoon.lua', -- War Tycoon
    [17625359962] = 'https://raw.githubusercontent.com/Kaguya11/KaguHubRework/refs/heads/main/Scripts/Rivals.lua', -- Rivals
    [4543144283] = 'https://raw.githubusercontent.com/Kaguya11/KaguHubRework/refs/heads/main/Scripts/Mega%20Noob%20Simulator.lua', -- Mega Noob Simulator
    [11276071411] = 'https://raw.githubusercontent.com/Kaguya11/KaguHubRework/refs/heads/main/Scripts/BeNPCorDie.lua', -- Be NPC or Die
    [14943334555] = 'https://raw.githubusercontent.com/Kaguya11/KaguHubRework/refs/heads/main/Scripts/BikeOfHell.lua' -- Bike of Hell
}

if games[PlaceId] then 
    lib:Notify('Supported game loading: ' .. info.Name)
    loadstring(game:HttpGet(games[PlaceId]))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaguya11/KaguHubRework/main/KaguHub.lua"))()
    setclipboard("https://discord.gg/AkWWsyw2eG")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Kagu Hub",
        Text = "Game not supported: " .. info.Name,
        Duration = 5
    })
end
