local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Boomxs/NcHub/main/B1.lua"))()
local venyx = library.new("NC HUB", 5012544693)

local Tab1 = venyx:addPage("General", 5012544693)
local Tab2 = venyx:addPage("Teleport", 5012544693)
local Tab3 = venyx:addPage("Cadits", 5012544693)
local Section1 = Tab2:addSection("Teleport Player")
local Section3 = Tab2:addSection("Teleport")
local Section2 = Tab1:addSection("Speed Option")
local Section4 = Tab1:addSection("Jump Option")
local Section5 = Tab1:addSection("Other Option")
local Section6 = Tab3:addSection("This Script Create By BooomXs Or Nc_Dev")

players = {}
 
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
 
Section1:addDropdown("Select Player", players, function(Tpp)
    Select = Tpp
end)

Section5:addTextbox("Money", nil, function(mgg)
	game:GetService("Players").LocalPlayer.leaderstats.Baht.Value = mgg
end)

Section5:addKeybind("Ui Visible", Enum.KeyCode.RightControl, function()
venyx:toggle()
end, function()
end)
 
Section1:addButton("Refresh", function()
    table.clear(players)
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
       table.insert(players,v.Name)
    end
end)

Section1:addButton("Teleport", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame
end)

Section2:addSlider("Speed Option", 0, 16, 500, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section2:addButton("Reset Speed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

Section4:addSlider("Jump Option", 0, 40, 500, function(s)     
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s  
end)
Section4:addButton("Reset Speed", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 40
end)


Section3:addButton("7-11", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-956.445251, 46.2777214, -145.111298, 0.24723056, -2.30793629e-09, 0.968956709, -2.58374167e-09, 1, 3.04112269e-09, -0.968956709, -3.25539218e-09, 0.24723056)
end)

Section3:addButton("Toy Store", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-902.259216, 46.90308, -465.079803, 0.0659450144, -3.81973599e-08, 0.997823238, 3.34349544e-08, 1, 3.60710111e-08, -0.997823238, 3.09834718e-08, 0.0659450144)
end)

Section3:addButton("Store", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-835.783203, 46.215332, -52.7868538, 0.999684989, 7.41957749e-08, 0.0250990447, -7.54916272e-08, 1, 5.0682182e-08, -0.0250990447, -5.25609849e-08, 0.999684989)
end)

Section3:addButton("NoodleTower", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-856.40649414062, 46.21533203125, -280.29629516602)
end)
