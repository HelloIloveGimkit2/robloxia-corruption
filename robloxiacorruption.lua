


local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()



local Window = Fluent:CreateWindow({
    Title = "ROBLOXIA: CORRUPTION 1.0.0",
    SubTitle = "by higuysIownslapbattles",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Aqua",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

Fluent:Notify({
    Title = "Loaded the script",
    Content = "The script has loaded!!!!!!11!!!!!11!!!!!!",
    SubContent = "SubContent", -- Optional
    Duration = 5 -- Set to nil to make the notification not disappear
})

-- Fluent provides Lucide Icons, they are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "" })
}

local infcheezburger = Tabs.Main:AddToggle("inf chezz burger", 
{
    Title = "Infinite chezzburger", 
    Description = "Infinitly gives you chezzburger (NO COOLDOWN)",
    Default = false,
    Callback = function(state)
        _G.cheezburger = state
        while _G.cheezburger == true do task.wait()
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Attack"):WaitForChild("Remotes"):WaitForChild("Cheezburger"):FireServer()
        end
    end 
})

local attackconstant = Tabs.Main:AddToggle("constant attack", 
{
    Title = "constantly attack the monster (Must have builderman)", 
    Description = "",
    Default = false,
    Callback = function(state)
        _G.attack = state
        while _G.attack == true do task.wait()
            for i, v in pairs(workspace:GetChildren()) do
                if v.ClassName == "Model" and v:FindFirstChild("AI") then
                    local args = {
                        v,
                        "hit"
                    }
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Attack"):WaitForChild("Remotes"):WaitForChild("Hit"):FireServer(unpack(args))                    
                end
            end
        end
    end 
})

local speed = Tabs.Main:AddToggle("constant speed", 
{
    Title = "constantly speed (Must have Noob)", 
    Description = "",
    Default = false,
    Callback = function(state)
        _G.speedlol = state
        while _G.speedlol == true do task.wait()
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Client"):WaitForChild("Remotes"):WaitForChild("Speed"):FireServer()
        end
    end 
})

local gravity = Tabs.Main:AddToggle("constant gravity", 
{
    Title = "constantly gravity disrupt the monster (Must have Noob)", 
    Description = "",
    Default = false,
    Callback = function(state)
        _G.gravitylol = state
        while _G.gravitylol == true do task.wait()
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Client"):WaitForChild("Remotes"):WaitForChild("GravityDisruptor"):FireServer()
        end
    end 
})


local teleport = Tabs.Main:AddToggle("constant teleport", 
{
    Title = "constantly teleport (Must use Employee)", 
    Description = "",
    Default = false,
    Callback = function(state)
        _G.teleportlol = state
        while _G.teleportlol == true do task.wait()
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Client"):WaitForChild("Remotes"):WaitForChild("Teleport"):FireServer()
        end
    end
})


local heal = Tabs.Main:AddToggle("constant heal", 
{
    Title = "constantly heal + team (Must use Employee)", 
    Description = "",
    Default = false,
    Callback = function(state)
        _G.heallol = state
        while _G.heallol == true do task.wait(1)
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Client"):WaitForChild("Remotes"):WaitForChild("Heal"):FireServer()
        end
    end
})

game:GetService("Players").LocalPlayer.Character:WaitForChild("Client"):WaitForChild("Remotes"):WaitForChild("SpawnGuard"):FireServer()

local guard = Tabs.Main:AddToggle("constant guard", 
{
    Title = "constantly spam guard (Must use Guest)", 
    Description = "EN-GUARD!!!!!",
    Default = false,
    Callback = function(state)
        _G.guardlol = state
        while _G.guardlol == true do task.wait()
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Client"):WaitForChild("Remotes"):WaitForChild("SpawnGuard"):FireServer()
        end
    end
})


