local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Boomxs/NcHub/main/Main"))()
local Window = Library.CreateLib("Nc Hub X Reunion TEam", "LightTheme")

local Tab1 = Window:NewTab("General")
local Tab2 = Window:NewTab("Teleport")
local Tab3 = Window:NewTab("Cadits")
local Section1 = Tab2:NewSection("Teleport Player")
local Section3 = Tab2:NewSection("Teleport")
local Section2 = Tab1:NewSection("Speed Option")
local Section4 = Tab1:NewSection("Jump Option")
local Section5 = Tab1:NewSection("Other Option")
local Section6 = Tab3:NewSection("This Script Create By BooomXs Or Nc_Dev")

players = {}
 
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
 
Section1:NewDropdown("Select Player", " ", players, function(Tpp)
    Select = Tpp
end)
 
 
Section1:NewButton("Refresh", " ", function()
    table.clear(players)
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
end)

Section1:NewButton("Teleport", " ", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame
end)

Section5:NewTextBox("Money", "Give Money", function(mg)
	game:GetService("Players").sasdzax44.leaderstats.Baht.Value = mg
end)

Section2:NewSlider("Speed Option", "Select Speed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section2:NewButton("Reset Speed", "Reset Speed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

Section4:NewSlider("Jump Option", "Select JumpPower", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)      
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s  
end)
Section4:NewButton("Reset Speed", "Reset JumpPower", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 40
end)


Section3:NewButton("7-11", "Teleport to 7-11", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-956.445251, 46.2777214, -145.111298, 0.24723056, -2.30793629e-09, 0.968956709, -2.58374167e-09, 1, 3.04112269e-09, -0.968956709, -3.25539218e-09, 0.24723056)
end)

Section3:NewButton("Toy Store", "Teleport to Toy Store", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-902.259216, 46.90308, -465.079803, 0.0659450144, -3.81973599e-08, 0.997823238, 3.34349544e-08, 1, 3.60710111e-08, -0.997823238, 3.09834718e-08, 0.0659450144)
end)

Section3:NewButton("Store", "Teleport to Store", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-835.783203, 46.215332, -52.7868538, 0.999684989, 7.41957749e-08, 0.0250990447, -7.54916272e-08, 1, 5.0682182e-08, -0.0250990447, -5.25609849e-08, 0.999684989)
end)

