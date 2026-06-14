-- Nexus Hub | dsc.gg/beignet
-- Currently supported games: 19
-- github.com/jacklebeignet/scripts/blob/main/NexusHub/README.md#instructions

local a="1.0"print("🪐 Nexus Hub Version: "..a)

local b,c=pcall(function()
local b=loadstring(game:HttpGet"https://cdn.jsdelivr.net/gh/IceMinisterq/Notification-Library@master/Library.lua")
if not b then return end
local c=b()

local d={
[189707]="NDS",
[2248408710]="DS",
[12062249395]="SLPJ",
[14901130314]="ST",
[16993432698]="ISGGB2",
[87854376962069]="T1MGB",
[110418140983965]="1PGB",
[120390407164140]="1KECG",
[18891217864]="CGBTR",
[108223641520139]="456KSGGB",
[74860143302885]="GBPSG",
[7946217289]="GB",
[13307164400]="FTK",
[14988593557]="POP",
[124336495763322]="PDBWFR",
[92777117358647]="YAK",
[100512225977376]="1SJR",
[76869049556129]="RTH",
[8607126407]="RTH",
[91828212665207]="1SWHO",
}

local e=d[game.PlaceId]if e then c:SendNotification("Success","Game Supported! Loading...",5)loadstring(game:HttpGet("https://cdn.jsdelivr.net/gh/jacklebeignet/scripts@master/NexusHub/"..e..".luau"))()else c:SendNotification("Error","No script was found for this game :(\n\nJoin the Discord to see which games are supported: dsc.gg/beignet",8)end

end)

if not b then warn("Error: "..c)end
