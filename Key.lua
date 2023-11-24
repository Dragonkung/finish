print("hi")

game.StarterGui:SetCore("SendNotification", {
      Icon = "";
      Title = "Kawnew", 
      Text = "Checking..."
  })
  
  wait(2)

--เสือก
 local keychecked = false 
if _G.Key == "FGHI-6JKLM-7NOPQ8" then
   keychecked = true
end

if keychecked == true then
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Dragonkung/Test/main/Hoihub.txt"))()
   else
    game.StarterGui:SetCore("SendNotification", {
      Icon = "";
      Title = "Kawnew", 
      Text = "Worng Key"
  })
  
  wait(2)
end
