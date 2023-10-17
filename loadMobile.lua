repeat wait() until game:IsLoaded();
if game.PlaceId==2753915549 or game.PlaceId==4442272183 or game.PlaceId==7449423635 or game.Placeld== then 
    if _G.Script_Mode=="Zombie"then 
       loadstring(game:HttpGet('https://raw.githubusercontent.com/GamingScripter/V.G-Hub/main/Zombies%20Attack'))()
    elseif _G.Script_Language=="Racev.4"then 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dragonkung/Dragonkung/main/Dev%20X%20Race%20V.4.lua"))()
    elseif getgenv().Script_Mode=="Admin_Ice_ieie123 "then 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dragonkung/Dragonkung/main/For%20Admin%20.lua"))()
    else 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dragonkung/KawnewX/main/K_Now%20Hub%20(Fix%20Bug).txt"))()
    end 
elseif game.PlaceId==4520749081 or game.PlaceId==6381829480 or game.PlaceId==5931540094 or game.PlaceId==6596144663 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/CreamSoScute/main/LoadKL.lua",true))()
elseif game.PlaceId==6329844902 or game.PlaceId==12192552089 or game.PlaceId==6299805723 or game.PlaceId==914010731 or game.PlaceId==6918802270 or game.PlaceId==14979402479 or game.PlaceId==13772394625 or game.PlaceId == 14732610803 or game.PlaceId == 14915220621 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/CreamSoScute/main/LoadAm.lua",true))()
else game.Players.LocalPlayer:Kick("\224\185\132\224\184\161\224\185\136\224\184\158\224\184\154\224\185\129\224\184\161\224\184\158")
    wait(1)game:Shutdown()
end
