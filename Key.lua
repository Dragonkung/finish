local keychecked = false 

if _G.Key == "FGHI-6JKLM-7NOPQ8" then
   keychecked = true
end

if keychecked == true then
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Dragonkung/Test/main/kuy.txt"))()
   else
    game.Players.LocalPlayer:Kick("คีย์ผิด/ไม่มีคีย์")
end
