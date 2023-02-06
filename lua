local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "paradise anti lock gui | v1",
    LoadingTitle = "paradise W",
    LoadingSubtitle = "by Lua.#1011",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "paradiseKey"
    },
    Discord = {
       Enabled = true,
       Invite = "e3p6hGHn8A", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
       RememberJoins = false -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "paradise antilock",
       Subtitle = "Key System",
       Note = "Join the discord (https://discord.gg/e3p6hGHn8A)",
       FileName = "paradiseKey",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "paradise"
    }
 })

 -- anti locks tabs

 local Tab = Window:CreateTab("random anti locks", 4483362458) -- Title, Image

 local Section = Tab:CreateSection("underground")

 local Button = Tab:CreateButton({
    Name = "underground anti (X)",
    Callback = function()
        local Toggled = false
        local KeyCode = 'x'
        
        
        function AA()
            local oldVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, -70, oldVelocity.Z)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, oldVelocity.Y, oldVelocity.Z)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, -70, oldVelocity.Z)
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = 4.14
        end
        
        game:GetService('UserInputService').InputBegan:Connect(function(Key)
            if Key.KeyCode == Enum.KeyCode[KeyCode:upper()] and not game:GetService('UserInputService'):GetFocusedTextBox() then
                if Toggled then
                    Toggled = false
                    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 1.85
        
                elseif not Toggled then
                    Toggled = true
        
                    while Toggled do
                        AA()
                        task.wait()
                    end
                end
            end
        end)
    end,
 })




