local keychecked = false 

if _G.Key == "FGHI-6JKLM-7NOPQ8" then
   keychecked = true
end

if keychecked == true then
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Dragonkung/Test/main/kuy.txt"))()
   else
    game.StarterGui:SetCore("SendNotification", {
      Icon = "";
      Title = "Kawnew", 
      Text = "คีย์ผิด!!😡😡"
  })
  
  wait(2)
end
