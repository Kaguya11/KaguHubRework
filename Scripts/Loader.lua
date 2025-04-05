if not game:IsLoaded() then
    game.Loaded:Wait()
end

local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/Library.lua'))()

local PlaceId = game.PlaceId
local lplr = game:GetService("Players").LocalPlayer
local market = game:GetService("MarketplaceService")
local info = market:GetProductInfo(PlaceId)
local games = {
    [70876832253163] = 'https://raw.githubusercontent.com/Kaguya11/KaguHubRework/refs/heads/main/Scripts/DeadRails.lua', -- dead rails
    [116495829188952] = 'https://pastebin.com/raw/1bxevcFK',
    [4639625707] = 'https://raw.githubusercontent.com/Kaguya11/KaguHubRework/refs/heads/main/Scripts/WarTycoon.lua'
}

if identifyexecutor() then
    local executor = identifyexecutor()
    if executor == "Solara" or executor == "Xeno" or executor == "Nezur" then
        lib:Notify('Kagu Hub work bad with xeno, solara, jjsploit and other free exec')
        setclipboard("https://discord.gg/AkWWsyw2eG")
    end
end

if games[PlaceId] then 
    lib:Notify('Supported game loading: ' .. info.Name)
    loadstring(game:HttpGet(games[PlaceId]))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaguya11/KaguHubRework/main/KaguHub"))() 
    -- t.me/kaguyaxscript | https://discord.gg/AkWWsyw2eG
    lib:Notify('Game not supported: ' .. info.Name .. ' if you wanna support this game join the discord copied to your clipboard')
    setclipboard("https://discord.gg/AkWWsyw2eG")
end
