local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Drive Word ",
    SubTitle = "By K_Now | Fluxus Edition",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Aqua",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Auto Farm", Icon = "" }),
    a = Window:AddTab({ Title = "Server", Icon = "" }),
    Settings = Window:AddTab({ Title = "Misc/Config", Icon = "settings" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "notification",
        Content = "Welcom",
        SubContent = "Drive Word Auto Farm", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })



    Tabs.Main:AddParagraph({
        Title = "เปิดแล้วรอมันจะเสร็จให้เองง",
        Content = ""
    })



    Tabs.a:AddButton({
        Title = "Rejoin",
        Description = "Rejoin Server!!",
        Callback = function()
            Window:Dialog({
                Title = "Notification",
                Content = "Rejoin??",
                Buttons = {
                    {
                        Title = "Yes",
                        Callback = function()
                            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
                        end
                    },
                    {
                        Title = "No",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })


local section = Tabs.Main:AddSection("// Auto Queust Car Delivery \\\")

    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Delivery Cars", Default = false })

    Toggle:OnChanged(function(state)
        print("Toggle changed:", Options.MyToggle.Value)
        getfenv().test = (state and true or false)
while getfenv().test do
   wait()
if game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Jobs.Visible == false then
    local num = math.random(1,9)
for i,v in pairs(game:GetService("Workspace").Jobs.TrailerDelivery.StartPoints:GetChildren()) do
   if i == num then
game:GetService("ReplicatedStorage").Systems.Jobs.StartJob:InvokeServer("TrailerDelivery", v.Name)
end
end
task.wait(25)
elseif game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Jobs.Visible == true then
for i,v in pairs(game:GetService("Workspace").Cars:GetDescendants()) do
   if v.Name == "Owner" and v.Value == game.Players.LocalPlayer and game.Players.LocalPlayer:DistanceFromCharacter(game:GetService("Workspace").CompletionRegion.Primary.Position) > 25 then
v.Parent:SetPrimaryPartCFrame(game:GetService("Workspace").CompletionRegion.Primary.CFrame*CFrame.new(0,5,-20))
v.Parent.Trailer.PrimaryPart.Anchored = true
task.wait(1.5)
v.Parent.Trailer.PrimaryPart.Anchored = false
repeat task.wait()
    until game:GetService("Players").LocalPlayer.PlayerGui.JobComplete.Enabled == true or getfenv().test == false
game:GetService("ReplicatedStorage").Systems.Jobs.CashBankedEarnings:FireServer()
game:GetService("Players").LocalPlayer.PlayerGui.JobComplete.Enabled = false
game:GetService("Lighting").BackgroundBlur.Enabled = false
task.wait()
end
end
end
end
    end)

    Options.MyToggle:SetValue(false)

local section = Tabs.Main:AddSection("// Auto Queust Food Delivery \\\")


    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Delivery Food", Default = false })

    Toggle:OnChanged(function(state)
        print("Toggle changed:", Options.MyToggle.Value)
        getfenv().test2 = (state and true or false)
    while getfenv().test2 do
       wait()
    if game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Jobs.Visible == false then
        local num = math.random(1,9)
    for i,v in pairs(game:GetService("Workspace").Jobs.TrailerDelivery.StartPoints:GetChildren()) do
       if i == num then
    game:GetService("ReplicatedStorage").Systems.Jobs.StartJob:InvokeServer("TrailerDelivery", v.Name)
    end
    end
    task.wait(25)
    elseif game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Jobs.Visible == true then
    for i,v in pairs(game:GetService("Workspace").Cars:GetDescendants()) do
       if v.Name == "Owner" and v.Value == game.Players.LocalPlayer and game.Players.LocalPlayer:DistanceFromCharacter(game:GetService("Workspace").CompletionRegion.Primary.Position) > 25 then
    v.Parent:SetPrimaryPartCFrame(game:GetService("Workspace").CompletionRegion.Primary.CFrame*CFrame.new(0,5,-30))
    v.Parent.Trailer.PrimaryPart.Anchored = true
    task.wait(1.5)
    v.Parent.Trailer.PrimaryPart.Anchored = false
    repeat task.wait()
        until game:GetService("Players").LocalPlayer.PlayerGui.JobComplete.Enabled == true or getfenv().test2 == false
    game:GetService("ReplicatedStorage").Systems.Jobs.CashBankedEarnings:FireServer()
    game:GetService("Players").LocalPlayer.PlayerGui.JobComplete.Enabled = false
    game:GetService("Lighting").BackgroundBlur.Enabled = false
    task.wait()
    end
    end
    end
    end
       end)

Options.MyToggle:SetValue(false)

local section = Tabs.Main:AddSection("// Auto Event \\\")


local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Event ", Default = false })

    Toggle:OnChanged(function(state)
        print("Toggle changed:", Options.MyToggle.value)
        getfenv().test3 = (state and true or false)
      while getfenv().test3 do
         wait()
         
         Fluent:Notify({
    Title = "K_Now Notification",
    Content = "Waiting For Complete Queust Auto",
    Duration = 8
})
      game:GetService("ReplicatedStorage").Systems.Jobs.StartJob:InvokeServer("SantasHelper","WinterRally")
      wait()
      game:GetService("ReplicatedStorage").Systems.Jobs.Modules.SantasHelper.TrailerAcquired:FireServer("SantasSleigh")
      wait(1)
      game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:PivotTo(CFrame.new(-585.747437, 5.38555908, 537.634338, 0.792616963, 0, -0.609719872, 0, 1, 0, 0.609719872, 0, 0.792616963))
      wait(25)
      game:GetService("ReplicatedStorage").Systems.Jobs.CompleteJob:InvokeServer()
      wait()
      game:GetService("ReplicatedStorage").Systems.Jobs.CashBankedEarnings:FireServer()
      end
end)
Options.MyToggle:SetValue(false)

    local Keybind = Tabs.Settings:AddKeybind("Keybind", {
        Title = "KeyBind",
        Mode = "Toggle", -- Always, Toggle, Hold
        Default = "LeftControl", -- String as the name of the keybind (MB1, MB2 for mouse buttons)

        -- Occurs when the keybind is clicked, Value is `true`/`false`
        Callback = function(Value)
            print("Keybind clicked!", Value)
        end,

        -- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
        ChangedCallback = function(New)
            print("Keybind changed!", New)
        end
    })

    -- OnClick is only fired when you press the keybind and the mode is Toggle
    -- Otherwise, you will have to use Keybind:GetState()
    Keybind:OnClick(function()
        print("Keybind clicked:", Keybind:GetState())
    end)

    Keybind:OnChanged(function()
        print("Keybind changed:", Keybind.Value)
    end)

    task.spawn(function()
        while true do
            wait(1)

            -- example for checking if a keybind is being pressed
            local state = Keybind:GetState()
            if state then
                print("Keybind is being held down")
            end

            if Fluent.Unloaded then break end
        end
    end)

    Keybind:SetValue("MB2", "Toggle") -- Sets keybind to MB2, mode to Hold


    local Input = Tabs.Settings:AddInput("Input", {
        Title = "Input",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
        end
    })

    Input:OnChanged(function()
        print("Input updated:", Input.Value)
    end)
end


-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("Drive Word")
SaveManager:SetFolder("Drive Word/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "K_Now",
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()


print("Anti Afk ")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    warn("Anti afk ran")
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    end)
    getfenv().grav = workspace.Gravity
