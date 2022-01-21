local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
	Title = "SurgeX",
	Style = 1,
	SizeX = 500,
	SizeY = 350,
	Theme = "Light",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(235,235,235)
	}
})
local Y = X.New({
	Title = "Main"
})

local Z = X.New({
	Title = "ESP"
})

local SecondPage = k
local Utils = require(game:GetService("ReplicatedStorage").Modules.Utils.Utils)
local Player = require(game:GetService("ReplicatedStorage").Modules.Character.PlayerCharacter)
local R =  require(game:GetService("ReplicatedStorage").Modules.Load)("Ragdolls")
local Animal = require(game:GetService("ReplicatedStorage").Modules.Load)("Animal")
local AnimalRiding = require(game:GetService("ReplicatedStorage").Modules.Load)("AnimalRiding")


local A = Y.Button({
	Text = "Main AC bypass",
	Callback = function()
        repeat wait() until game:IsLoaded() wait()
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
if hookmetamethod then
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(...)
    local Args = {...}
    local Self = Args[1]
    if getnamecallmethod() == "Kick"  then
            return nil
    end
    return OldNameCall(...)
        end)
    end 
if setfflag then
        setfflag("HumanoidParallelRemoveNoPhysics", "False")
        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
    end 
if setfpscap then
setfpscap(100)
end 
if getconnections then
for _,v in next, getconnections(game:GetService("LogService").MessageOut) do
    v:Disable()
end
for _,v in next, getconnections(game:GetService("ScriptContext").Error) do
    v:Disable()
end
end
if hookfunction and gcinfo or collectgarbage then
hookfunction((gcinfo or collectgarbage), function(...)
     return math.random(200,350) 
end)
end 
    end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Bypasses the anti cheat"
			})
		end
	}
})


local B = Y.Button({
	Text = "Infinite Stamina",
	Callback = function()
        metatable = getrawmetatable(game)
        namecall = metatable.__namecall
        setreadonly(metatable,false)
        
        metatable.__namecall = newcclosure(function(self,...)
        local method = getnamecallmethod()
        if method == "FireServer" and self.Name == "LowerStamina" then
        return 0
        end
        return namecall(self,...)
        end )
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "self explanatory"
			})
		end
	}
})

local C = Z.Button({
	Text = "Player ESP",
	Callback = function()
        local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
        ESP:Toggle(true)
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Shows you where all the players are on the map."
			})
		end
	}
})

local D = Y.Toggle({
	Text = "Fullbright",
	Callback = function(State)
		FullBright = State
        if FullBright then
            game:GetService("Lighting").Ambient = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Top = Color3.new(1, 1, 1)
        else
            game:GetService("Lighting").Ambient = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
        end
game.Lighting.Changed:connect(
    function()
        if FullBright then
            game:GetService("Lighting").Ambient = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(1, 1, 1)
            game:GetService("Lighting").ColorShift_Top = Color3.new(1, 1, 1)
        else
            game:GetService("Lighting").Ambient = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
            game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
        end
    end
)
	end,
	Enabled = false
})

local E = Y.Button({
	Text = "Fps Boost",
	Callback = function()
        for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
                v.Material = Enum.Material.SmoothPlastic
                if v:IsA("Texture") then
                    v:Destroy()
                end
            end
        end
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Makes your game less laggy"
			})
		end
	}
})

local F = Y.Button({
	Text = "Instant Reload",
	Callback = function()
        InstantReload = true
        for i, v in pairs(getgc(true)) do
            if type(v) == "table" and rawget(v, "BaseRecoil") then
                v.ReloadSpeed = InstantReload == false and Key["Weapons"][i].ReloadSpeed or 1000
                v.LoadSpeed = InstantReload == false and Key["Weapons"][i].LoadSpeed or 1000
                v.LoadEndSpeed = InstantReload == false and Key["Weapons"][i].LoadEndSpeed or 1000
            end
        end
    end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Reloads your gun instantly"
			})
		end
	}
})

local G = Y.Button({
	Text = "TP to random player",
	Callback = function()
        local randomPlayer = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(
            Vector3.new(
                randomPlayer.Character.Head.Position.X,
                randomPlayer.Character.Head.Position.Y,
                randomPlayer.Character.Head.Position.Z
            )
        )
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Credits to V.G"
			})
		end}
    end
	})


local H = Y.Button({
	Text = "No Recoil",
	Callback = function()
        NoRecoil = true
        for i, v in pairs(getgc(true)) do
            if type(v) == "table" and rawget(v, "BaseRecoil") then
                v.BaseRecoil = NoRecoil == false and Key["Weapons"][i].BaseRecoil or 0
            end
        end
    end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Stops all the recoil from every gun"
			})
		end
	}
})

local H = Y.Button({
	Text = "No fall damage",
	Callback = function()
		NoFall = true
		local OldNameCall = nil
		OldNameCall = hookmetamethod(game, "__namecall", function(...)
			local Args = {...}
			local Self = Args[1]
			if getnamecallmethod()=="FireServer" and tostring(Self)=="DamageSelf" and NoFall then
					return nil
			end
			return OldNameCall(...)
		end)
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Removes Fall Damage"
			})
		end
	}
})

local H = Y.Button({
	Text = "Rejoin",
	Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)

        local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
            Window:Toggle(State)
        end)
    end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Rejoins the server you are in"
			})
		end
	}
})


-------------------------esp

local D = Z.Toggle({
	Text = "Animal ESP",
	Callback = function(State)
		FullBright = State
		getgenv().esp3 = State
		local function esp(v)
			local T = Drawing.new("Text")
			T.Visible = false
			T.Center = true
			T.Outline = true
			T.Font = 2
			T.Text = "Ore"
			T.Size = 14
			T.Color = Color3.fromRGB(203, 0, 0)
			local function update()
				local Re
				Re =
					game:GetService('RunService').Stepped:Connect(
					function()
						if v and v:FindFirstChildOfClass("MeshPart") then
							local Vector, Screen = workspace.CurrentCamera:WorldToViewportPoint(v:FindFirstChildOfClass("MeshPart").Position)
							if getgenv().esp3 and Screen then
								T.Position = Vector2.new(Vector.X, Vector.Y)
								T.Visible = true
								T.Text = v.Name
							else
								T.Visible = false
							end
						elseif v:FindFirstChildOfClass("MeshPart") == nil then
							T:Remove()
							Re:disconnect()
						end
					end
				)
			end
			update()
		end
		for i,v in pairs(game.Workspace.WORKSPACE_Entities.Animals:GetDescendants()) do
			if v.ClassName == "Model" and v:FindFirstChildOfClass("MeshPart") then
				esp(v)
			end
		end
		game.Workspace.WORKSPACE_Entities.Animals.DescendantAdded:Connect(
			function(v)
				if v:IsA("MeshPart") then
					esp(v.Parent)
				end
			end
		)
	end,
	Enabled = false
})


local A = Z.Button({
    Text = "Gold ESP",
    Callback = function()
            repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
            repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
            local function check()
                local objects = {}
                local exists = false
                cw = 0
                for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do 
                    if string.match(v.Name, "GoldOre") and v.Parent:FindFirstChild("DepositInfo") and v.Parent.DepositInfo:FindFirstChild("OreRemaining") then
                        cw = cw + 1 
                        objects[cw] = {"Gold", v}
                        exists = true
                    end
                end 
                return exists, objects
            end
            local exists, objects = check()
            if exists then
                local Camera = workspace.CurrentCamera
                local Player = game:GetService("Players").LocalPlayer
                local RS = game:GetService("RunService")
                local RGB = Color3.fromRGB
                local V2 = Vector2.new
                local ROUND = math.round

                local ESP = {}
                function ESP:add(object, name, col) 
                    local NAME = Drawing.new("Text")
                    NAME.Text = name
                    NAME.Size = 18
                    NAME.Color = col
                    NAME.Center = true
                    NAME.Visible = true
                    NAME.Transparency = 1
                    NAME.Position = V2(0, 0)
                    NAME.Outline = true
                    NAME.OutlineColor = RGB(10, 10, 10)
                    NAME.Font = 3

                    local OREREMAIN = Drawing.new("Text")
                    OREREMAIN.Text = "[]"
                    OREREMAIN.Size = 18
                    OREREMAIN.Color = RGB(0, 255, 0)
                    OREREMAIN.Center = true
                    OREREMAIN.Visible = true
                    OREREMAIN.Transparency = 1
                    OREREMAIN.Position = V2(0, 0)
                    OREREMAIN.Outline = true
                    OREREMAIN.OutlineColor = RGB(10, 10, 10)
                    OREREMAIN.Font = 3
                    
                    local DISTANCE = Drawing.new("Text")
                    DISTANCE.Text = "[]"
                    DISTANCE.Size = 18
                    DISTANCE.Color = RGB(255, 255, 255)
                    DISTANCE.Center = true
                    DISTANCE.Visible = true
                    DISTANCE.Transparency = 1
                    DISTANCE.Position = V2(0, 0)
                    DISTANCE.Outline = true
                    DISTANCE.OutlineColor = RGB(10, 10, 10)
                    DISTANCE.Font = 3

                    _G.ESPDISABLE = false
                    local plr = game.Players.LocalPlayer
                    local mouse = plr:GetMouse()

                    mouse.KeyDown:connect(function(key)
                        if key == "l" then
                            _G.ESPDISABLE = true
                        end
                    end)
                    function Updatess()
                        local ce
                        ce = RS.RenderStepped:Connect(function()
                            if _G.ESPDISABLE == false and object.Parent ~= nil and object.Parent.Parent ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value ~= 0 and ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) <= 1000 then
                                local p, vis = Camera:WorldToViewportPoint(object.Position)
                                if vis then
                                    NAME.Position = V2(p.X, p.Y)
                                    if Player.Character ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 1 then
                                        DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
                                        DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude).."m]"
                                        DISTANCE.Visible = true
                                        if object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 2 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORES"
                                        elseif object.Parent.DepositInfo:WaitForChild("OreRemaining").Value <= 1 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORE"
                                        end
                                        OREREMAIN.Position = NAME.Position + V2(0, NAME.TextBounds.Y*1.6)
                                        OREREMAIN.Visible = true
                                    else
                                        DISTANCE.Visible = false
                                        OREREMAIN.Visible = false
                                    end
                                    
                                    NAME.Visible = true
                                else
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                end
                            else
                                if object.Parent == nil or object.Parent.Parent == nil or object.Parent.DepositInfo:WaitForChild("OreRemaining").Value == 0 or ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) >= 1000 then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                elseif _G.ESPDISABLE == true then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                    NAME:Remove()
                                    DISTANCE:Remove()
                                    OREREMAIN:Remove()
                                    ce:Disconnect()
                                end
                            end
                        end)
                    end
                    Updatess()
                end

                for i,v in pairs(objects) do
                    if v[1] == "Gold" then
                        ESP:add(v[2], "Gold", RGB(218, 165, 32))
                    else
                    end
                end
            end
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Click L to clear ESP"
            })
        end
    }
})

local A = Z.Button({
    Text = "Silver ESP",
    Callback = function()
            repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
            repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
            local function check()
                local objects = {}
                local exists = false
                cw = 0
                for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do 
                    if string.match(v.Name, "SilverOre") and v.Parent:FindFirstChild("DepositInfo") and v.Parent.DepositInfo:FindFirstChild("OreRemaining") then
                        cw = cw + 1 
                        objects[cw] = {"Silver", v}
                        exists = true
                    end
                end 
                return exists, objects
            end
            local exists, objects = check()
            if exists then
                local Camera = workspace.CurrentCamera
                local Player = game:GetService("Players").LocalPlayer
                local RS = game:GetService("RunService")
                local RGB = Color3.fromRGB
                local V2 = Vector2.new
                local ROUND = math.round

                local ESP = {}
                function ESP:add(object, name, col) 
                    local NAME = Drawing.new("Text")
                    NAME.Text = name
                    NAME.Size = 18
                    NAME.Color = col
                    NAME.Center = true
                    NAME.Visible = true
                    NAME.Transparency = 1
                    NAME.Position = V2(0, 0)
                    NAME.Outline = true
                    NAME.OutlineColor = RGB(10, 10, 10)
                    NAME.Font = 3

                    local OREREMAIN = Drawing.new("Text")
                    OREREMAIN.Text = "[]"
                    OREREMAIN.Size = 18
                    OREREMAIN.Color = RGB(0, 255, 0)
                    OREREMAIN.Center = true
                    OREREMAIN.Visible = true
                    OREREMAIN.Transparency = 1
                    OREREMAIN.Position = V2(0, 0)
                    OREREMAIN.Outline = true
                    OREREMAIN.OutlineColor = RGB(10, 10, 10)
                    OREREMAIN.Font = 3
                    
                    local DISTANCE = Drawing.new("Text")
                    DISTANCE.Text = "[]"
                    DISTANCE.Size = 18
                    DISTANCE.Color = RGB(255, 255, 255)
                    DISTANCE.Center = true
                    DISTANCE.Visible = true
                    DISTANCE.Transparency = 1
                    DISTANCE.Position = V2(0, 0)
                    DISTANCE.Outline = true
                    DISTANCE.OutlineColor = RGB(10, 10, 10)
                    DISTANCE.Font = 3

                    _G.ESPDISABLE = false
                    local plr = game.Players.LocalPlayer
                    local mouse = plr:GetMouse()

                    mouse.KeyDown:connect(function(key)
                        if key == "l" then
                            _G.ESPDISABLE = true
                        end
                    end)
                    function Updatess()
                        local ce
                        ce = RS.RenderStepped:Connect(function()
                            if _G.ESPDISABLE == false and object.Parent ~= nil and object.Parent.Parent ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value ~= 0 and ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) <= 1000 then
                                local p, vis = Camera:WorldToViewportPoint(object.Position)
                                if vis then
                                    NAME.Position = V2(p.X, p.Y)
                                    if Player.Character ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 1 then
                                        DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
                                        DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude).."m]"
                                        DISTANCE.Visible = true
                                        if object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 2 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORES"
                                        elseif object.Parent.DepositInfo:WaitForChild("OreRemaining").Value <= 1 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORE"
                                        end
                                        OREREMAIN.Position = NAME.Position + V2(0, NAME.TextBounds.Y*1.6)
                                        OREREMAIN.Visible = true
                                    else
                                        DISTANCE.Visible = false
                                        OREREMAIN.Visible = false
                                    end
                                    
                                    NAME.Visible = true
                                else
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                end
                            else
                                if object.Parent == nil or object.Parent.Parent == nil or object.Parent.DepositInfo:WaitForChild("OreRemaining").Value == 0 or ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) >= 1000 then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                elseif _G.ESPDISABLE == true then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                    NAME:Remove()
                                    DISTANCE:Remove()
                                    OREREMAIN:Remove()
                                    ce:Disconnect()
                                end
                            end
                        end)
                    end
                    Updatess()
                end

                for i,v in pairs(objects) do
                    if v[1] == "Silver" then
                        ESP:add(v[2], "Silver", RGB(192, 192, 192))
                    else
                    end
                end
            end
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Click L to clear ESP"
            })
        end
    }
})

local A = Z.Button({
    Text = "Limestone ESP",
    Callback = function()
            repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
            repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
            local function check()
                local objects = {}
                local exists = false
                cw = 0
                for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do 
                    if string.match(v.Name, "LimestoneOre") and v.Parent:FindFirstChild("DepositInfo") and v.Parent.DepositInfo:FindFirstChild("OreRemaining") then
                        cw = cw + 1 
                        objects[cw] = {"Limestone", v}
                        exists = true
                    end
                end 
                return exists, objects
            end
            local exists, objects = check()
            if exists then
                local Camera = workspace.CurrentCamera
                local Player = game:GetService("Players").LocalPlayer
                local RS = game:GetService("RunService")
                local RGB = Color3.fromRGB
                local V2 = Vector2.new
                local ROUND = math.round

                local ESP = {}
                function ESP:add(object, name, col) 
                    local NAME = Drawing.new("Text")
                    NAME.Text = name
                    NAME.Size = 18
                    NAME.Color = col
                    NAME.Center = true
                    NAME.Visible = true
                    NAME.Transparency = 1
                    NAME.Position = V2(0, 0)
                    NAME.Outline = true
                    NAME.OutlineColor = RGB(10, 10, 10)
                    NAME.Font = 3

                    local OREREMAIN = Drawing.new("Text")
                    OREREMAIN.Text = "[]"
                    OREREMAIN.Size = 18
                    OREREMAIN.Color = RGB(0, 255, 0)
                    OREREMAIN.Center = true
                    OREREMAIN.Visible = true
                    OREREMAIN.Transparency = 1
                    OREREMAIN.Position = V2(0, 0)
                    OREREMAIN.Outline = true
                    OREREMAIN.OutlineColor = RGB(10, 10, 10)
                    OREREMAIN.Font = 3
                    
                    local DISTANCE = Drawing.new("Text")
                    DISTANCE.Text = "[]"
                    DISTANCE.Size = 18
                    DISTANCE.Color = RGB(255, 255, 255)
                    DISTANCE.Center = true
                    DISTANCE.Visible = true
                    DISTANCE.Transparency = 1
                    DISTANCE.Position = V2(0, 0)
                    DISTANCE.Outline = true
                    DISTANCE.OutlineColor = RGB(10, 10, 10)
                    DISTANCE.Font = 3

                    _G.ESPDISABLE = false
                    local plr = game.Players.LocalPlayer
                    local mouse = plr:GetMouse()

                    mouse.KeyDown:connect(function(key)
                        if key == "l" then
                            _G.ESPDISABLE = true
                        end
                    end)
                    function Updatess()
                        local ce
                        ce = RS.RenderStepped:Connect(function()
                            if _G.ESPDISABLE == false and object.Parent ~= nil and object.Parent.Parent ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value ~= 0 and ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) <= 1000 then
                                local p, vis = Camera:WorldToViewportPoint(object.Position)
                                if vis then
                                    NAME.Position = V2(p.X, p.Y)
                                    if Player.Character ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 1 then
                                        DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
                                        DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude).."m]"
                                        DISTANCE.Visible = true
                                        if object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 2 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORES"
                                        elseif object.Parent.DepositInfo:WaitForChild("OreRemaining").Value <= 1 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORE"
                                        end
                                        OREREMAIN.Position = NAME.Position + V2(0, NAME.TextBounds.Y*1.6)
                                        OREREMAIN.Visible = true
                                    else
                                        DISTANCE.Visible = false
                                        OREREMAIN.Visible = false
                                    end
                                    
                                    NAME.Visible = true
                                else
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                end
                            else
                                if object.Parent == nil or object.Parent.Parent == nil or object.Parent.DepositInfo:WaitForChild("OreRemaining").Value == 0 or ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) >= 1000 then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                elseif _G.ESPDISABLE == true then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                    NAME:Remove()
                                    DISTANCE:Remove()
                                    OREREMAIN:Remove()
                                    ce:Disconnect()
                                end
                            end
                        end)
                    end
                    Updatess()
                end

                for i,v in pairs(objects) do
                    if v[1] == "Limestone" then
                        ESP:add(v[2], "Limestone", RGB(220, 216, 199))
                    else
                    end
                end
            end
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Click L to clear ESP"
            })
        end
    }
})

local A = Z.Button({
	Text = "Iron ESP",
	Callback = function()
			repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
	        repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
	        local function check()
	            local objects = {}
	            local exists = false
	            cw = 0
	            for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do 
	                if string.match(v.Name, "IronOre") and v.Parent:FindFirstChild("DepositInfo") and v.Parent.DepositInfo:FindFirstChild("OreRemaining") then
	                    cw = cw + 1 
	                    objects[cw] = {"Iron", v}
	                    exists = true
	                end
	            end 
	            return exists, objects
	        end
	        local exists, objects = check()
	        if exists then
	            local Camera = workspace.CurrentCamera
	            local Player = game:GetService("Players").LocalPlayer
	            local RS = game:GetService("RunService")
	            local RGB = Color3.fromRGB
	            local V2 = Vector2.new
	            local ROUND = math.round

	            local ESP = {}
	            function ESP:add(object, name, col) 
	                local NAME = Drawing.new("Text")
	                NAME.Text = name
	                NAME.Size = 18
	                NAME.Color = col
	                NAME.Center = true
	                NAME.Visible = true
	                NAME.Transparency = 1
	                NAME.Position = V2(0, 0)
	                NAME.Outline = true
	                NAME.OutlineColor = RGB(10, 10, 10)
	                NAME.Font = 3

	                local OREREMAIN = Drawing.new("Text")
	                OREREMAIN.Text = "[]"
	                OREREMAIN.Size = 18
	                OREREMAIN.Color = RGB(0, 255, 0)
	                OREREMAIN.Center = true
	                OREREMAIN.Visible = true
	                OREREMAIN.Transparency = 1
	                OREREMAIN.Position = V2(0, 0)
	                OREREMAIN.Outline = true
	                OREREMAIN.OutlineColor = RGB(10, 10, 10)
	                OREREMAIN.Font = 3
	                
	                local DISTANCE = Drawing.new("Text")
	                DISTANCE.Text = "[]"
	                DISTANCE.Size = 18
	                DISTANCE.Color = RGB(255, 255, 255)
	                DISTANCE.Center = true
	                DISTANCE.Visible = true
	                DISTANCE.Transparency = 1
	                DISTANCE.Position = V2(0, 0)
	                DISTANCE.Outline = true
	                DISTANCE.OutlineColor = RGB(10, 10, 10)
	                DISTANCE.Font = 3

	                _G.ESPDISABLE = false
	                local plr = game.Players.LocalPlayer
					local mouse = plr:GetMouse()

					mouse.KeyDown:connect(function(key)
    					if key == "l" then
     					    _G.ESPDISABLE = true
     					end
					end)
	                function Updatess()
	                    local ce
	                    ce = RS.RenderStepped:Connect(function()
	                        if _G.ESPDISABLE == false and object.Parent ~= nil and object.Parent.Parent ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value ~= 0 and ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) <= 1000 then
	                            local p, vis = Camera:WorldToViewportPoint(object.Position)
	                            if vis then
	                                NAME.Position = V2(p.X, p.Y)
	                                if Player.Character ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 1 then
	                                    DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
	                                    DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude).."m]"
	                                    DISTANCE.Visible = true
	                                    if object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 2 then
	                                        OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORES"
	                                    elseif object.Parent.DepositInfo:WaitForChild("OreRemaining").Value <= 1 then
	                                        OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORE"
	                                    end
	                                    OREREMAIN.Position = NAME.Position + V2(0, NAME.TextBounds.Y*1.6)
	                                    OREREMAIN.Visible = true
	                                else
	                                    DISTANCE.Visible = false
	                                    OREREMAIN.Visible = false
	                                end
	                                
	                                NAME.Visible = true
	                            else
	                                NAME.Visible = false
	                                DISTANCE.Visible = false
	                                OREREMAIN.Visible = false
	                            end
	                        else
	                        	if object.Parent == nil or object.Parent.Parent == nil or object.Parent.DepositInfo:WaitForChild("OreRemaining").Value == 0 or ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) >= 1000 then
	                        		NAME.Visible = false
	                            	DISTANCE.Visible = false
	                            	OREREMAIN.Visible = false
	                        	elseif _G.ESPDISABLE == true then
	                            	NAME.Visible = false
	                            	DISTANCE.Visible = false
	                            	OREREMAIN.Visible = false
	                            	NAME:Remove()
	                            	DISTANCE:Remove()
	                            	OREREMAIN:Remove()
	                            	ce:Disconnect()
	                        	end
	                        end
	                    end)
	                end
	                Updatess()
	            end

	            for i,v in pairs(objects) do
	                if v[1] == "Iron" then
	                    ESP:add(v[2], "Iron", RGB(161, 157, 148))
	                else
	                end
	            end
	        end
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Click L to clear ESP"
			})
		end
	}
})

local A = Z.Button({
    Text = "Zinc ESP",
    Callback = function()
            repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
            repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
            local function check()
                local objects = {}
                local exists = false
                cw = 0
                for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do 
                    if string.match(v.Name, "ZincOre") and v.Parent:FindFirstChild("DepositInfo") and v.Parent.DepositInfo:FindFirstChild("OreRemaining") then
                        cw = cw + 1 
                        objects[cw] = {"Zinc", v}
                        exists = true
                    end
                end 
                return exists, objects
            end
            local exists, objects = check()
            if exists then
                local Camera = workspace.CurrentCamera
                local Player = game:GetService("Players").LocalPlayer
                local RS = game:GetService("RunService")
                local RGB = Color3.fromRGB
                local V2 = Vector2.new
                local ROUND = math.round

                local ESP = {}
                function ESP:add(object, name, col) 
                    local NAME = Drawing.new("Text")
                    NAME.Text = name
                    NAME.Size = 18
                    NAME.Color = col
                    NAME.Center = true
                    NAME.Visible = true
                    NAME.Transparency = 1
                    NAME.Position = V2(0, 0)
                    NAME.Outline = true
                    NAME.OutlineColor = RGB(10, 10, 10)
                    NAME.Font = 3

                    local OREREMAIN = Drawing.new("Text")
                    OREREMAIN.Text = "[]"
                    OREREMAIN.Size = 18
                    OREREMAIN.Color = RGB(0, 255, 0)
                    OREREMAIN.Center = true
                    OREREMAIN.Visible = true
                    OREREMAIN.Transparency = 1
                    OREREMAIN.Position = V2(0, 0)
                    OREREMAIN.Outline = true
                    OREREMAIN.OutlineColor = RGB(10, 10, 10)
                    OREREMAIN.Font = 3
                    
                    local DISTANCE = Drawing.new("Text")
                    DISTANCE.Text = "[]"
                    DISTANCE.Size = 18
                    DISTANCE.Color = RGB(255, 255, 255)
                    DISTANCE.Center = true
                    DISTANCE.Visible = true
                    DISTANCE.Transparency = 1
                    DISTANCE.Position = V2(0, 0)
                    DISTANCE.Outline = true
                    DISTANCE.OutlineColor = RGB(10, 10, 10)
                    DISTANCE.Font = 3

                    _G.ESPDISABLE = false
                    local plr = game.Players.LocalPlayer
                    local mouse = plr:GetMouse()

                    mouse.KeyDown:connect(function(key)
                        if key == "l" then
                            _G.ESPDISABLE = true
                        end
                    end)
                    function Updatess()
                        local ce
                        ce = RS.RenderStepped:Connect(function()
                            if _G.ESPDISABLE == false and object.Parent ~= nil and object.Parent.Parent ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value ~= 0 and ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) <= 1000 then
                                local p, vis = Camera:WorldToViewportPoint(object.Position)
                                if vis then
                                    NAME.Position = V2(p.X, p.Y)
                                    if Player.Character ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 1 then
                                        DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
                                        DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude).."m]"
                                        DISTANCE.Visible = true
                                        if object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 2 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORES"
                                        elseif object.Parent.DepositInfo:WaitForChild("OreRemaining").Value <= 1 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORE"
                                        end
                                        OREREMAIN.Position = NAME.Position + V2(0, NAME.TextBounds.Y*1.6)
                                        OREREMAIN.Visible = true
                                    else
                                        DISTANCE.Visible = false
                                        OREREMAIN.Visible = false
                                    end
                                    
                                    NAME.Visible = true
                                else
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                end
                            else
                                if object.Parent == nil or object.Parent.Parent == nil or object.Parent.DepositInfo:WaitForChild("OreRemaining").Value == 0 or ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) >= 1000 then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                elseif _G.ESPDISABLE == true then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                    NAME:Remove()
                                    DISTANCE:Remove()
                                    OREREMAIN:Remove()
                                    ce:Disconnect()
                                end
                            end
                        end)
                    end
                    Updatess()
                end

                for i,v in pairs(objects) do
                    if v[1] == "Zinc" then
                        ESP:add(v[2], "Zinc", RGB(184, 197, 202))
                    else
                    end
                end
            end
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Click L to clear ESP"
            })
        end
    }
})

local A = Z.Button({
    Text = "Copper ESP",
    Callback = function()
            repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
            repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
            local function check()
                local objects = {}
                local exists = false
                cw = 0
                for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do 
                    if string.match(v.Name, "CopperOre") and v.Parent:FindFirstChild("DepositInfo") and v.Parent.DepositInfo:FindFirstChild("OreRemaining") then
                        cw = cw + 1 
                        objects[cw] = {"Copper", v}
                        exists = true
                    end
                end 
                return exists, objects
            end
            local exists, objects = check()
            if exists then
                local Camera = workspace.CurrentCamera
                local Player = game:GetService("Players").LocalPlayer
                local RS = game:GetService("RunService")
                local RGB = Color3.fromRGB
                local V2 = Vector2.new
                local ROUND = math.round

                local ESP = {}
                function ESP:add(object, name, col) 
                    local NAME = Drawing.new("Text")
                    NAME.Text = name
                    NAME.Size = 18
                    NAME.Color = col
                    NAME.Center = true
                    NAME.Visible = true
                    NAME.Transparency = 1
                    NAME.Position = V2(0, 0)
                    NAME.Outline = true
                    NAME.OutlineColor = RGB(10, 10, 10)
                    NAME.Font = 3

                    local OREREMAIN = Drawing.new("Text")
                    OREREMAIN.Text = "[]"
                    OREREMAIN.Size = 18
                    OREREMAIN.Color = RGB(0, 255, 0)
                    OREREMAIN.Center = true
                    OREREMAIN.Visible = true
                    OREREMAIN.Transparency = 1
                    OREREMAIN.Position = V2(0, 0)
                    OREREMAIN.Outline = true
                    OREREMAIN.OutlineColor = RGB(10, 10, 10)
                    OREREMAIN.Font = 3
                    
                    local DISTANCE = Drawing.new("Text")
                    DISTANCE.Text = "[]"
                    DISTANCE.Size = 18
                    DISTANCE.Color = RGB(255, 255, 255)
                    DISTANCE.Center = true
                    DISTANCE.Visible = true
                    DISTANCE.Transparency = 1
                    DISTANCE.Position = V2(0, 0)
                    DISTANCE.Outline = true
                    DISTANCE.OutlineColor = RGB(10, 10, 10)
                    DISTANCE.Font = 3

                    _G.ESPDISABLE = false
                    local plr = game.Players.LocalPlayer
                    local mouse = plr:GetMouse()

                    mouse.KeyDown:connect(function(key)
                        if key == "l" then
                            _G.ESPDISABLE = true
                        end
                    end)
                    function Updatess()
                        local ce
                        ce = RS.RenderStepped:Connect(function()
                            if _G.ESPDISABLE == false and object.Parent ~= nil and object.Parent.Parent ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value ~= 0 and ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) <= 1000 then
                                local p, vis = Camera:WorldToViewportPoint(object.Position)
                                if vis then
                                    NAME.Position = V2(p.X, p.Y)
                                    if Player.Character ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 1 then
                                        DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
                                        DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude).."m]"
                                        DISTANCE.Visible = true
                                        if object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 2 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORES"
                                        elseif object.Parent.DepositInfo:WaitForChild("OreRemaining").Value <= 1 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORE"
                                        end
                                        OREREMAIN.Position = NAME.Position + V2(0, NAME.TextBounds.Y*1.6)
                                        OREREMAIN.Visible = true
                                    else
                                        DISTANCE.Visible = false
                                        OREREMAIN.Visible = false
                                    end
                                    
                                    NAME.Visible = true
                                else
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                end
                            else
                                if object.Parent == nil or object.Parent.Parent == nil or object.Parent.DepositInfo:WaitForChild("OreRemaining").Value == 0 or ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) >= 1000 then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                elseif _G.ESPDISABLE == true then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                    NAME:Remove()
                                    DISTANCE:Remove()
                                    OREREMAIN:Remove()
                                    ce:Disconnect()
                                end
                            end
                        end)
                    end
                    Updatess()
                end

                for i,v in pairs(objects) do
                    if v[1] == "Copper" then
                        ESP:add(v[2], "Copper", RGB(184, 115, 51))
                    else
                    end
                end
            end
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Click L to clear ESP"
            })
        end
    }
})

local A = Z.Button({
    Text = "Coal ESP",
    Callback = function()
            repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
            repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
            local function check()
                local objects = {}
                local exists = false
                cw = 0
                for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Interactables"].Mining.OreDeposits:GetDescendants()) do 
                    if string.match(v.Name, "CoalOre") and v.Parent:FindFirstChild("DepositInfo") and v.Parent.DepositInfo:FindFirstChild("OreRemaining") then
                        cw = cw + 1 
                        objects[cw] = {"Coal", v}
                        exists = true
                    end
                end 
                return exists, objects
            end
            local exists, objects = check()
            if exists then
                local Camera = workspace.CurrentCamera
                local Player = game:GetService("Players").LocalPlayer
                local RS = game:GetService("RunService")
                local RGB = Color3.fromRGB
                local V2 = Vector2.new
                local ROUND = math.round

                local ESP = {}
                function ESP:add(object, name, col) 
                    local NAME = Drawing.new("Text")
                    NAME.Text = name
                    NAME.Size = 18
                    NAME.Color = col
                    NAME.Center = true
                    NAME.Visible = true
                    NAME.Transparency = 1
                    NAME.Position = V2(0, 0)
                    NAME.Outline = true
                    NAME.OutlineColor = RGB(10, 10, 10)
                    NAME.Font = 3

                    local OREREMAIN = Drawing.new("Text")
                    OREREMAIN.Text = "[]"
                    OREREMAIN.Size = 18
                    OREREMAIN.Color = RGB(0, 255, 0)
                    OREREMAIN.Center = true
                    OREREMAIN.Visible = true
                    OREREMAIN.Transparency = 1
                    OREREMAIN.Position = V2(0, 0)
                    OREREMAIN.Outline = true
                    OREREMAIN.OutlineColor = RGB(10, 10, 10)
                    OREREMAIN.Font = 3
                    
                    local DISTANCE = Drawing.new("Text")
                    DISTANCE.Text = "[]"
                    DISTANCE.Size = 18
                    DISTANCE.Color = RGB(255, 255, 255)
                    DISTANCE.Center = true
                    DISTANCE.Visible = true
                    DISTANCE.Transparency = 1
                    DISTANCE.Position = V2(0, 0)
                    DISTANCE.Outline = true
                    DISTANCE.OutlineColor = RGB(10, 10, 10)
                    DISTANCE.Font = 3

                    _G.ESPDISABLE = false
                    local plr = game.Players.LocalPlayer
                    local mouse = plr:GetMouse()

                    mouse.KeyDown:connect(function(key)
                        if key == "l" then
                            _G.ESPDISABLE = true
                        end
                    end)
                    function Updatess()
                        local ce
                        ce = RS.RenderStepped:Connect(function()
                            if _G.ESPDISABLE == false and object.Parent ~= nil and object.Parent.Parent ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value ~= 0 and ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) <= 1000 then
                                local p, vis = Camera:WorldToViewportPoint(object.Position)
                                if vis then
                                    NAME.Position = V2(p.X, p.Y)
                                    if Player.Character ~= nil and object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 1 then
                                        DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
                                        DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude).."m]"
                                        DISTANCE.Visible = true
                                        if object.Parent.DepositInfo:WaitForChild("OreRemaining").Value >= 2 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORES"
                                        elseif object.Parent.DepositInfo:WaitForChild("OreRemaining").Value <= 1 then
                                            OREREMAIN.Text = object.Parent.DepositInfo:WaitForChild("OreRemaining").Value.." ORE"
                                        end
                                        OREREMAIN.Position = NAME.Position + V2(0, NAME.TextBounds.Y*1.6)
                                        OREREMAIN.Visible = true
                                    else
                                        DISTANCE.Visible = false
                                        OREREMAIN.Visible = false
                                    end
                                    
                                    NAME.Visible = true
                                else
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                end
                            else
                                if object.Parent == nil or object.Parent.Parent == nil or object.Parent.DepositInfo:WaitForChild("OreRemaining").Value == 0 or ROUND((Player.Character.PrimaryPart.Position - object.Position).magnitude) >= 1000 then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                elseif _G.ESPDISABLE == true then
                                    NAME.Visible = false
                                    DISTANCE.Visible = false
                                    OREREMAIN.Visible = false
                                    NAME:Remove()
                                    DISTANCE:Remove()
                                    OREREMAIN:Remove()
                                    ce:Disconnect()
                                end
                            end
                        end)
                    end
                    Updatess()
                end

                for i,v in pairs(objects) do
                    if v[1] == "Coal" then
                        ESP:add(v[2], "Coal", RGB(54, 69, 79))
                    else
                    end
                end
            end
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Click L to clear ESP"
            })
        end
    }
})
