getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "ParhelionV2",
	LoadingTitle = "Parhelion is Loading",
	LoadingSubtitle = "Made By ISAAC36#1112",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Big Hub"
	},
        Discord = {
        	Enabled = false,
        	Invite = "false", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "ParhelionV2",
		Subtitle = "How i can get the key!?.",
		Note = "Ask to Isaac to get the key. This script is private the key can only be obtained by the creator. We're sorry!",
		FileName = "SiriusKey",
		SaveKey = false,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "PAR36"
	}
})

local Tab = Window:CreateTab("Game") -- Title, Image

local Section = Tab:CreateSection("Cart Ride Into Rdite!")
local Button = Tab:CreateButton({
	Name = "Win",
	Callback = function()
	    
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310.578247, 852.799805, 321.278473, 0.999578238, 3.23143601e-09, -0.0290409625, -3.7745167e-09, 1, -1.86456841e-08, 0.0290409625, 1.87474356e-08, 0.999578238)
task.wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(284.051971, 859.241638, 322.957031, -0.135927513, -2.40871323e-08, 0.990718782, -2.65277356e-10, 1, 2.42763871e-08, -0.990718782, 3.03701375e-09, -0.135927513)
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Spawn Carts",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
	getgenv().P = Value
	spawn(function()
	    while wait() do
	        if not getgenv().P then break end
	    for i,v in pairs(workspace:GetDescendants()) do if v:IsA("ClickDetector") then fireclickdetector(v)
                end
             end
          end
	    end)
	end,
})

Rayfield:Notify({
    Title = "ParhelionV2",
    Content = "Have Fun!",
    Duration = 6.5,
    Image = 4483362458,
    Actions = { -- Notification Buttons
        Ignore = {
            Name = "Okay",
            Callback = function()

            end
		},
	},
})