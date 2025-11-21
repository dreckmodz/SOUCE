local v1 = loadstring(game:HttpGet("https://paste.ee/r/aMK31yk8"))()
local v2 = v1:CreateWindow("Pedroxz Menu 2.0.2", "CRACKEAD DMZ", true)
local v_u_3 = true
local v_u_4 = false
local v5 = v2:CreatePage("Jogador"):CreateSection("Jogador")
local v6 = v2:CreatePage("Players"):CreateSection("Players")
local v7 = v2:CreatePage("Weapon"):CreateSection("Weapon")
local v8 = v2:CreatePage("Visual"):CreateSection("Visual")
local v9 = v2:CreatePage("Destrui\195\167\195\163o"):CreateSection("Destrui\195\167\195\163o")
local v10 = v2:CreatePage("Menus"):CreateSection("Menus")
local v11 = v2:CreatePage("Anti Cheat"):CreateSection("Anti Cheat")
local v12 = v2:CreatePage("Mini City"):CreateSection("Mini City")
v1:AddNoti("Bem-vindo no Pedroxz Menu!", "Bind:3 Dirvita-se usando Pedroxz Menu. Bem-Vindo" .. game.Players.LocalPlayer.Name, 5, true)
v5:CreateSlider("Velocidade", {
	["Min"] = 16,
	["Max"] = 500,
	["DefaultValue"] = 16
}, function(p13)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = p13
end)
v5:CreateSlider("Pulo", {
	["Min"] = 50,
	["Max"] = 500,
	["DefaultValue"] = 50
}, function(p14)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = p14
end)
function ControlTP()
	while _G.ControlTP == true do
		local v_u_15 = game:GetService("UserInputService")
		local v_u_16 = game.Players.LocalPlayer:GetMouse()
		function GetCharacter()
			return game.Players.LocalPlayer.Character
		end
		function Teleport(p17)
			local v18 = GetCharacter()
			if v18 then
				v18:MoveTo(p17)
			end
		end
		v_u_15.InputBegan:Connect(function(p19)
			-- upvalues: (ref) v_u_15, (ref) v_u_16
			if p19.UserInputType == Enum.UserInputType.MouseButton1 and v_u_15:IsKeyDown(Enum.KeyCode.LeftControl) then
				Teleport(v_u_16.Hit.p)
			end
		end)
		wait(0.1)
	end
end
v5:CreateButton("Ctrol TP", function()
	_G.ControlTP = true
	task.wait()
	ControlTP()
end)
v5:CreateButton("Invisible Bind", function()
	local v_u_20 = game:GetService("Players").LocalPlayer
	local v_u_21 = v_u_20.Character or v_u_20.CharacterAdded:Wait()
	v_u_21.Archivable = true
	local v_u_22 = v_u_21:Clone()
	local v_u_23 = Instance.new("Part", workspace)
	v_u_23.Anchored = true
	v_u_23.Size = Vector3.new(200, 1, 200)
	v_u_23.CFrame = CFrame.new(0, -500, 0)
	v_u_23.CanCollide = true
	v_u_22.Parent = workspace
	v_u_22.HumanoidRootPart.CFrame = v_u_23.CFrame * CFrame.new(0, 5, 0)
	local v24, v25, v26 = pairs(v_u_21:GetChildren())
	local v_u_27 = true
	local v_u_28 = false
	local v_u_29 = false
	local v_u_30 = "E"
	while true do
		local v31, v32 = v24(v25, v26)
		if v31 == nil then
			break
		end
		v26 = v31
		if v32:IsA("LocalScript") then
			local v33 = v32:Clone()
			v33.Disabled = true
			v33.Parent = v_u_22
		end
	end
	if v_u_27 then
		local v34, v35, v36 = pairs(v_u_22:GetDescendants())
		while true do
			local v37, v38 = v34(v35, v36)
			if v37 == nil then
				break
			end
			v36 = v37
			if v38:IsA("BasePart") then
				v38.Transparency = 0.7
			end
		end
	end
	local v_u_39 = true
	function RealCharacterDied()
		-- upvalues: (ref) v_u_39, (ref) v_u_21, (ref) v_u_20, (ref) v_u_22, (ref) v_u_23, (ref) v_u_27
		v_u_39 = false
		v_u_21:Destroy()
		v_u_21 = v_u_20.Character
		v_u_39 = true
		isinvisible = false
		v_u_22:Destroy()
		workspace.CurrentCamera.CameraSubject = v_u_21.Humanoid
		v_u_21.Archivable = true
		v_u_22 = v_u_21:Clone()
		v_u_23:Destroy()
		v_u_23 = Instance.new("Part", workspace)
		v_u_23.Anchored = true
		v_u_23.Size = Vector3.new(200, 1, 200)
		v_u_23.CFrame = CFrame.new(9999, 9999, 9999)
		v_u_23.CanCollide = true
		v_u_22.Parent = workspace
		v_u_22.HumanoidRootPart.CFrame = v_u_23.CFrame * CFrame.new(0, 5, 0)
		local v40 = v_u_21
		local v41, v42, v43 = pairs(v40:GetChildren())
		while true do
			local v44
			v43, v44 = v41(v42, v43)
			if v43 == nil then
				break
			end
			if v44:IsA("LocalScript") then
				local v45 = v44:Clone()
				v45.Disabled = true
				v45.Parent = v_u_22
			end
		end
		if v_u_27 then
			local v46 = v_u_22
			local v47, v48, v49 = pairs(v46:GetDescendants())
			while true do
				local v50
				v49, v50 = v47(v48, v49)
				if v49 == nil then
					break
				end
				if v50:IsA("BasePart") then
					v50.Transparency = 0.7
				end
			end
		end
		v_u_21.Humanoid.Died:Connect(function()
			-- upvalues: (ref) v_u_21, (ref) v_u_22
			v_u_21:Destroy()
			v_u_22:Destroy()
		end)
		v_u_20.CharacterAppearanceLoaded:Connect(RealCharacterDied)
	end
	v_u_21.Humanoid.Died:Connect(function()
		-- upvalues: (ref) v_u_21, (ref) v_u_22
		v_u_21:Destroy()
		v_u_22:Destroy()
	end)
	v_u_20.CharacterAppearanceLoaded:Connect(RealCharacterDied)
	local v_u_51 = nil
	game:GetService("RunService").RenderStepped:Connect(function()
		-- upvalues: (ref) v_u_51, (ref) v_u_23, (ref) v_u_28, (ref) v_u_22
		if v_u_51 ~= nil then
			v_u_51.CFrame = v_u_23.CFrame * CFrame.new(0, 5, 0)
		end
		if v_u_28 then
			v_u_22.Humanoid:ChangeState(11)
		end
	end)
	v_u_51 = v_u_22.HumanoidRootPart
	local function v_u_64()
		-- upvalues: (ref) v_u_29, (ref) v_u_21, (ref) v_u_22, (ref) v_u_20, (ref) v_u_51
		if v_u_29 ~= false then
			local v52 = v_u_22.HumanoidRootPart.CFrame
			v_u_22.HumanoidRootPart.CFrame = v_u_21.HumanoidRootPart.CFrame
			v_u_21.HumanoidRootPart.CFrame = v52
			v_u_22.Humanoid:UnequipTools()
			v_u_20.Character = v_u_21
			workspace.CurrentCamera.CameraSubject = v_u_21.Humanoid
			v_u_51 = v_u_22.HumanoidRootPart
			local v53 = v_u_22
			local v54, v55, v56 = pairs(v53:GetChildren())
			while true do
				local v57
				v56, v57 = v54(v55, v56)
				if v56 == nil then
					break
				end
				if v57:IsA("LocalScript") then
					v57.Disabled = true
				end
			end
			v_u_29 = false
		else
			local v58 = v_u_21.HumanoidRootPart.CFrame
			v_u_21.HumanoidRootPart.CFrame = v_u_22.HumanoidRootPart.CFrame
			v_u_22.HumanoidRootPart.CFrame = v58
			v_u_21.Humanoid:UnequipTools()
			v_u_20.Character = v_u_22
			workspace.CurrentCamera.CameraSubject = v_u_22.Humanoid
			v_u_51 = v_u_21.HumanoidRootPart
			local v59 = v_u_22
			local v60, v61, v62 = pairs(v59:GetChildren())
			while true do
				local v63
				v62, v63 = v60(v61, v62)
				if v62 == nil then
					break
				end
				if v63:IsA("LocalScript") then
					v63.Disabled = false
				end
			end
			v_u_29 = true
		end
	end
	game:GetService("UserInputService").InputBegan:Connect(function(p65, p66)
		-- upvalues: (ref) v_u_30, (ref) v_u_39, (ref) v_u_21, (ref) v_u_22, (ref) v_u_64
		if not p66 then
			local v67 = v_u_30
			if p65.KeyCode.Name:lower() == v67:lower() and (v_u_39 and (v_u_21 and v_u_22)) and (v_u_21:FindFirstChild("HumanoidRootPart") and v_u_22:FindFirstChild("HumanoidRootPart")) then
				v_u_64()
			end
		end
	end)
	local v68 = Instance.new("Sound", game:GetService("SoundService"))
	v68.SoundId = "rbxassetid://232127604"
	v68:Play()
	game:GetService("StarterGui"):SetCore("SendNotification", {
		["Title"] = "Invisivel Carregado!",
		["Text"] = "Pressione " .. v_u_30 .. " Para usar o invisivel!",
		["Duration"] = 20,
		["Button1"] = "Okay."
	})
end)
v5:CreateButton("Hydroxide", function()
	local v_u_69 = "Upbolt"
	local v_u_70 = "revision"
	local function v72(p71)
		-- upvalues: (ref) v_u_69, (ref) v_u_70
		return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(v_u_69, v_u_70, p71)), p71 .. ".lua")()
	end
	v72("init")
	v72("ui/main")
end)
v5:CreateButton("Dark Dex", function()
	local v_u_73 = Random.new()
	local v_u_74 = {}
	for v75 = 48, 57 do
		table.insert(v_u_74, string.char(v75))
	end
	for v76 = 65, 90 do
		table.insert(v_u_74, string.char(v76))
	end
	for v77 = 97, 122 do
		table.insert(v_u_74, string.char(v77))
	end
	local function v_u_80(p78)
		-- upvalues: (ref) v_u_80, (ref) v_u_74, (ref) v_u_73
		if p78 <= 0 then
			return ""
		end
		local v79 = v_u_73
		return v_u_80(p78 - 1) .. v_u_74[v79:NextInteger(1, #v_u_74)]
	end
	local v81 = game:GetObjects("rbxassetid://9553291002")[1]
	v81.Name = v_u_80(v_u_73:NextInteger(5, 20))
	v81.DisplayOrder = 5
	if get_hidden_gui or gethui then
		v81.Parent = (get_hidden_gui or gethui)()
	elseif syn and syn.protect_gui then
		syn.protect_gui(v81)
		v81.Parent = COREGUI
	end
	(function(p82, _)
		local function v_u_91(p83, p84)
			local v85 = {}
			local v_u_86 = {
				["script"] = p84
			}
			local v90 = {
				["__index"] = function(_, p87)
					-- upvalues: (ref) v_u_86
					if v_u_86[p87] ~= nil then
						return v_u_86[p87]
					else
						return getfenv()[p87]
					end
				end,
				["__newindex"] = function(_, p88, p89)
					-- upvalues: (ref) v_u_86
					if v_u_86[p88] ~= nil then
						v_u_86[p88] = p89
					else
						getfenv()[p88] = p89
					end
				end
			}
			setmetatable(v85, v90)
			setfenv(p83, v85)
			return p83
		end
		local function v_u_98(p_u_92)
			-- upvalues: (ref) v_u_91, (ref) v_u_98
			if p_u_92.ClassName == "Script" or p_u_92.ClassName == "LocalScript" then
				spawn(function()
					-- upvalues: (ref) v_u_91, (ref) p_u_92
					local v93 = p_u_92
					v_u_91(loadstring(p_u_92.Source, "=" .. v93:GetFullName()), p_u_92)()
				end)
			end
			local v94, v95, v96 = pairs(p_u_92:GetChildren())
			while true do
				local v97
				v96, v97 = v94(v95, v96)
				if v96 == nil then
					break
				end
				v_u_98(v97)
			end
		end
		v_u_98(p82)
	end)(v81)
end)
v5:CreateButton("Dex V4", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)
v5:CreateButton("Simple Spy", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
end)
v5:CreateButton("Free Cam", function()
	local v_u_99 = true
	wait(1)
	local v_u_100 = workspace.CurrentCamera
	local v_u_101 = game.Players.LocalPlayer
	local v_u_102 = game:GetService("UserInputService")
	game:GetService("RunService")
	game:GetService("StarterPlayer")
	local v_u_103 = false
	local v_u_104 = 60
	local v_u_105 = 0
	local v_u_106 = Instance.new("Part", workspace)
	v_u_106.CanCollide = false
	v_u_106.Anchored = true
	v_u_106.Transparency = 1
	v_u_106.Name = "FreeCam"
	v_u_106.Position = v_u_101.Character.HumanoidRootPart.Position + Vector3.new(0, 5, 0)
	v_u_100.Changed:connect(function(p107)
		local _ = not (p107 == "CoordinateFrame")
	end)
	function getNextMovement(p108)
		-- upvalues: (ref) v_u_102, (ref) v_u_104
		local v109 = Vector3.new()
		if v_u_102:IsKeyDown("A") or v_u_102:IsKeyDown("Left") then
			v109 = v109 + Vector3.new(-1, 0, 0)
		end
		if v_u_102:IsKeyDown("D") or v_u_102:IsKeyDown("Right") then
			v109 = v109 + Vector3.new(1, 0, 0)
		end
		if v_u_102:IsKeyDown("W") or v_u_102:IsKeyDown("Up") then
			v109 = v109 + Vector3.new(0, 0, -1)
		end
		if v_u_102:IsKeyDown("S") or v_u_102:IsKeyDown("Down") then
			v109 = v109 + Vector3.new(0, 0, 1)
		end
		if v_u_102:IsKeyDown("Space") or v_u_102:IsKeyDown("Q") then
			v109 = v109 + Vector3.new(0, 1, 0)
		end
		if v_u_102:IsKeyDown("LeftControl") or v_u_102:IsKeyDown("E") then
			v109 = v109 + Vector3.new(0, -1, 0)
		end
		return CFrame.new(v109 * (v_u_104 * p108))
	end
	function onSelected()
		-- upvalues: (ref) v_u_101, (ref) v_u_106, (ref) v_u_103, (ref) v_u_105, (ref) v_u_100
		if v_u_101.Character then
			local v110 = v_u_106
			currentPos = v110.Position
			v_u_103 = true
			v_u_105 = tick()
			v_u_100.CameraSubject = v110
			v_u_101.Character.HumanoidRootPart.Anchored = true
			while v_u_103 do
				local v111 = tick() - v_u_105
				local v112 = (v_u_100.Focus.p - v_u_100.CoordinateFrame.p).unit
				local v113 = getNextMovement(v111)
				local v114 = v110.Position
				v110.CFrame = CFrame.new(v114, v114 + v112) * v113
				v_u_105 = tick()
				wait(0.01)
			end
			v_u_101.Character.HumanoidRootPart.Anchored = false
			v_u_100.CameraSubject = v_u_101.Character.Humanoid
			v110.Velocity = Vector3.new()
		end
	end
	function onDeselected()
		-- upvalues: (ref) v_u_103
		v_u_103 = false
	end
	local v_u_115 = true
	spawn(onSelected)
	function onKeyPressed(_, p116)
		-- upvalues: (ref) v_u_115
		if p116 == Enum.UserInputState.Begin then
			v_u_115 = not v_u_115
			if v_u_115 then
				onSelected()
			else
				onDeselected()
			end
		end
	end
	local v117 = v_u_101
	local v118 = v_u_101.GetMouse(v117)
	v118.Button1Down:Connect(function()
		-- upvalues: (ref) v_u_99, (ref) v_u_104
		if v_u_99 then
			v_u_104 = 120
		end
	end)
	v118.Button1Up:Connect(function()
		-- upvalues: (ref) v_u_104
		v_u_104 = 60
	end)
	function ResetCamera()
		-- upvalues: (ref) v_u_106, (ref) v_u_101
		v_u_106.Position = v_u_101.Character.HumanoidRootPart.Position + Vector3.new(0, 5, 0)
	end
	game:GetService("ContextActionService"):BindAction("Noclip Toggle", onKeyPressed, false, "r")
	game:GetService("ContextActionService"):BindAction("Reset Camera Position", ResetCamera, false, "z")
	game:GetService("StarterGui"):SetCore("SendNotification", {
		["Title"] = "Free Cam",
		["Text"] = "R parar e continuar/Z resetar posi\195\167\195\163o da camera",
		["Duration"] = 5
	})
end)
v5:CreateButton("Anti Lag", function()
	local v119 = workspace:FindFirstChildOfClass("Terrain")
	v119.WaterWaveSize = 0
	v119.WaterWaveSpeed = 0
	v119.WaterReflectance = 0
	v119.WaterTransparency = 0
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").FogEnd = 9000000000
	settings().Rendering.QualityLevel = 1
	local v120, v121, v122 = pairs(game:GetDescendants())
	while true do
		local v123
		v122, v123 = v120(v121, v122)
		if v122 == nil then
			break
		end
		if v123:IsA("Part") or (v123:IsA("UnionOperation") or (v123:IsA("MeshPart") or (v123:IsA("CornerWedgePart") or v123:IsA("TrussPart")))) then
			v123.Material = "Plastic"
			v123.Reflectance = 0
		elseif v123:IsA("Decal") then
			v123.Transparency = 1
		elseif v123:IsA("ParticleEmitter") or v123:IsA("Trail") then
			v123.Lifetime = NumberRange.new(0)
		elseif v123:IsA("Explosion") then
			v123.BlastPressure = 1
			v123.BlastRadius = 1
		end
	end
	local v124, v125, v126 = pairs(game:GetService("Lighting"):GetDescendants())
	while true do
		local v127
		v126, v127 = v124(v125, v126)
		if v126 == nil then
			break
		end
		if v127:IsA("BlurEffect") or (v127:IsA("SunRaysEffect") or (v127:IsA("ColorCorrectionEffect") or (v127:IsA("BloomEffect") or v127:IsA("DepthOfFieldEffect")))) then
			v127.Enabled = false
		end
	end
	workspace.DescendantAdded:Connect(function(p_u_128)
		task.spawn(function()
			-- upvalues: (ref) p_u_128
			if p_u_128:IsA("ForceField") then
				game:GetService("RunService").Heartbeat:Wait()
				p_u_128:Destroy()
			elseif p_u_128:IsA("Sparkles") then
				game:GetService("RunService").Heartbeat:Wait()
				p_u_128:Destroy()
			elseif p_u_128:IsA("Smoke") or p_u_128:IsA("Fire") then
				game:GetService("RunService").Heartbeat:Wait()
				p_u_128:Destroy()
			end
		end)
	end)
end)
v5:CreateButton("Fps Booster", function()
	local v129 = game
	local v130 = v129.Workspace
	local v131 = v129.Lighting
	local v132 = v130.Terrain
	v132.WaterWaveSize = 0
	v132.WaterWaveSpeed = 0
	v132.WaterReflectance = 0
	v132.WaterTransparency = 0
	v131.GlobalShadows = false
	v131.FogEnd = 9000000000
	v131.Brightness = 0
	settings().Rendering.QualityLevel = "Level01"
	local v133, v134, v135 = pairs(v129:GetDescendants())
	local v136 = true
	while true do
		local v137
		v135, v137 = v133(v134, v135)
		if v135 == nil then
			break
		end
		if v137:IsA("Part") or (v137:IsA("Union") or v137:IsA("MeshPart")) then
			v137.Material = "Plastic"
			v137.Reflectance = 0
		elseif v137:IsA("Decal") and v136 then
			v137.Transparency = 1
		elseif v137:IsA("ParticleEmitter") or v137:IsA("Trail") then
			v137.Lifetime = NumberRange.new(0)
		end
	end
end)
v5:CreateButton("Anti Fling", function()
	game:GetService("RunService").Stepped:Connect(function()
		local v138, v139, v140 = pairs(game:GetService("Players"):GetPlayers())
		while true do
			local v141
			v140, v141 = v138(v139, v140)
			if v140 == nil then
				break
			end
			if v141 ~= speaker and v141.Character then
				local v142, v143, v144 = pairs(v141.Character:GetDescendants())
				while true do
					local v145
					v144, v145 = v142(v143, v144)
					if v144 == nil then
						break
					end
					if v145:IsA("BasePart") then
						v145.CanCollide = false
					end
				end
			end
		end
	end)
end)

v5:CreateButton("Anti Afk", function()
	local v_u_152 = game:GetService("VirtualUser")
	local v153 = syn and syn.queue_on_teleport or queue_on_teleport
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		-- upvalues: (ref) v_u_152
		v_u_152:CaptureController()
		v_u_152:SetKeyDown("0x1f")
		task.wait(2)
		v_u_152:SetKeyUp("0x1f")
	end)
	warn("[ANTI-AFK] Enabled!")
	if v153 then
		v153("repeat task.wait() until game.Players.LocalPlayer ~= nil; game.Players.LocalPlayer:Kick(\"Probably shutdown\")")
	end
end)
v5:CreateButton("Stream Sniper", function()
	local v_u_154 = Instance.new("ScreenGui")
	local v155 = Instance.new("Frame")
	local v156 = Instance.new("TextLabel")
	local v157 = Instance.new("TextLabel")
	local v_u_158 = Instance.new("TextBox")
	local v159 = Instance.new("TextLabel")
	local v_u_160 = Instance.new("TextBox")
	local v_u_161 = Instance.new("TextButton")
	local v162 = Instance.new("TextLabel")
	local v_u_163 = Instance.new("TextLabel")
	local v164 = Instance.new("TextLabel")
	local v_u_165 = Instance.new("TextLabel")
	local v_u_166 = Instance.new("ImageLabel")
	local v167 = Instance.new("TextLabel")
	local v_u_168 = game:GetService("HttpService")
	local v_u_169 = game:GetService("Players")
	local v_u_170 = game:GetService("TeleportService")
	local v_u_171 = syn and syn.request or request
	v_u_154.Name = v_u_168:GenerateGUID(false)
	v_u_154.Parent = game:GetService("CoreGui")
	v155.Parent = v_u_154
	v155.Active = true
	v155.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	v155.BorderColor3 = Color3.fromRGB(31, 31, 31)
	v155.Draggable = true
	v155.Size = UDim2.new(0, 400, 0, 260)
	v156.Parent = v155
	v156.Active = true
	v156.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
	v156.BorderColor3 = Color3.fromRGB(31, 31, 40)
	v156.Size = UDim2.new(0, 400, 0, 40)
	v156.Font = Enum.Font.SourceSansLight
	v156.Text = "Synapse X Stream Sniper"
	v156.TextSize = 24
	v157.Parent = v155
	v157.Active = true
	v157.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	v157.BorderColor3 = Color3.fromRGB(31, 31, 31)
	v157.Position = UDim2.new(0, 10, 0, 49)
	v157.Size = UDim2.new(0, 150, 0, 20)
	v157.Font = Enum.Font.SourceSansLight
	v157.Text = "Username/UserId:"
	v157.TextColor3 = Color3.fromRGB(255, 255, 255)
	v157.TextSize = 16
	v_u_158.Name = "UsernameBox"
	v_u_158.Parent = v155
	v_u_158.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
	v_u_158.BorderColor3 = Color3.fromRGB(31, 31, 31)
	v_u_158.Position = UDim2.new(0, 10, 0, 80)
	v_u_158.Size = UDim2.new(0, 150, 0, 35)
	v_u_158.Font = Enum.Font.SourceSansLight
	v_u_158.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
	v_u_158.PlaceholderText = "Enter Username Here"
	v_u_158.Text = ""
	v_u_158.TextColor3 = Color3.fromRGB(255, 255, 255)
	v_u_158.TextSize = 18
	v159.Parent = v155
	v159.Active = true
	v159.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	v159.BorderColor3 = Color3.fromRGB(31, 31, 31)
	v159.Position = UDim2.new(0, 10, 0, 130)
	v159.Size = UDim2.new(0, 150, 0, 20)
	v159.Font = Enum.Font.SourceSansLight
	v159.Text = "Place Id:"
	v159.TextColor3 = Color3.fromRGB(255, 255, 255)
	v159.TextSize = 16
	v_u_160.Name = "PlaceIdBox"
	v_u_160.Parent = v155
	v_u_160.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
	v_u_160.BorderColor3 = Color3.fromRGB(31, 31, 31)
	v_u_160.Position = UDim2.new(0, 10, 0, 157)
	v_u_160.Size = UDim2.new(0, 150, 0, 35)
	v_u_160.Font = Enum.Font.SourceSansLight
	v_u_160.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
	v_u_160.PlaceholderText = "Enter PlaceId Here"
	v_u_160.Text = tostring(game.PlaceId) or ""
	v_u_160.TextColor3 = Color3.fromRGB(255, 255, 255)
	v_u_160.TextSize = 18
	v_u_161.Name = "StartButton"
	v_u_161.Parent = v155
	v_u_161.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	v_u_161.BorderColor3 = Color3.fromRGB(31, 31, 31)
	v_u_161.Position = UDim2.new(0, 10, 0, 204)
	v_u_161.Size = UDim2.new(0, 380, 0, 34)
	v_u_161.Font = Enum.Font.SourceSansLight
	v_u_161.Text = "Start"
	v_u_161.TextColor3 = Color3.fromRGB(255, 255, 255)
	v_u_161.TextSize = 24
	v162.Parent = v155
	v162.Active = true
	v162.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	v162.BackgroundTransparency = 1
	v162.BorderColor3 = Color3.fromRGB(31, 31, 31)
	v162.Position = UDim2.new(0, 200, 0, 49)
	v162.Size = UDim2.new(0, 0, 0, 20)
	v162.AutomaticSize = Enum.AutomaticSize.X
	v162.Font = Enum.Font.SourceSansBold
	v162.Text = "Username:"
	v162.TextColor3 = Color3.fromRGB(255, 255, 255)
	v162.TextSize = 16
	v162.TextWrapped = true
	v162.TextXAlignment = Enum.TextXAlignment.Left
	v_u_163.Name = "UsernameLabel"
	v_u_163.Parent = v162
	v_u_163.Active = true
	v_u_163.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	v_u_163.BackgroundTransparency = 1
	v_u_163.BorderColor3 = Color3.fromRGB(31, 31, 31)
	v_u_163.Position = UDim2.new(0.5, 0, 0, 0)
	v_u_163.Size = UDim2.new(0, 150, 0, 20)
	v_u_163.Font = Enum.Font.SourceSansLight
	v_u_163.Text = ""
	v_u_163.TextColor3 = Color3.fromRGB(255, 255, 255)
	v_u_163.TextSize = 16
	v_u_163.TextXAlignment = Enum.TextXAlignment.Left
	v164.Parent = v155
	v164.Active = true
	v164.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	v164.BackgroundTransparency = 1
	v164.BorderColor3 = Color3.fromRGB(31, 31, 31)
	v164.Position = UDim2.new(0, 200, 0, 69)
	v164.Size = UDim2.new(0, 0, 0, 20)
	v164.AutomaticSize = Enum.AutomaticSize.X
	v164.Font = Enum.Font.SourceSansBold
	v164.Text = "UserId:"
	v164.TextColor3 = Color3.fromRGB(255, 255, 255)
	v164.TextSize = 16
	v164.TextWrapped = true
	v164.TextXAlignment = Enum.TextXAlignment.Left
	v_u_165.Name = "UserIdLabel"
	v_u_165.Parent = v164
	v_u_165.Active = true
	v_u_165.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	v_u_165.BackgroundTransparency = 1
	v_u_165.BorderColor3 = Color3.fromRGB(31, 31, 31)
	v_u_165.Position = UDim2.new(0.5, 0, 0, 0)
	v_u_165.Size = UDim2.new(0, 150, 0, 20)
	v_u_165.Font = Enum.Font.SourceSansLight
	v_u_165.Text = ""
	v_u_165.TextColor3 = Color3.fromRGB(255, 255, 255)
	v_u_165.TextSize = 16
	v_u_165.TextXAlignment = Enum.TextXAlignment.Left
	v_u_166.Name = "GamerPicture"
	v_u_166.Parent = v155
	v_u_166.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v_u_166.Position = UDim2.new(0, 200, 0, 95)
	v_u_166.Size = UDim2.new(0, 97, 0, 97)
	v_u_166.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
	v167.Parent = v155
	v167.Active = true
	v167.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	v167.BackgroundTransparency = 1
	v167.BorderColor3 = Color3.fromRGB(31, 31, 31)
	v167.Position = UDim2.new(0, 0, 0, 238)
	v167.Size = UDim2.new(0, 400, 0, 22)
	v167.RichText = true
	v167.Font = Enum.Font.SourceSansLight
	v167.Text = "Credits: <font color=\"#e30000\">Synapse X Team</font> | Fixed: <font color=\"#6873F6\">Zv_yz#0847</font>"
	v167.TextColor3 = Color3.fromRGB(255, 255, 255)
	v167.TextSize = 19
	v167.TextStrokeTransparency = 0
	if shared.STREAM_SNIPER then
		shared.STREAM_SNIPER:Destroy()
	end
	shared.STREAM_SNIPER = v_u_154
	local v_u_172 = false
	local v_u_173 = false
	local function v_u_175(p174)
		-- upvalues: (ref) v_u_168
		return pcall(v_u_168.JSONDecode, v_u_168, game:HttpGet(p174))
	end
	local function v_u_178(p_u_176, p177)
		-- upvalues: (ref) v_u_161, (ref) v_u_172
		v_u_161.Text = p_u_176
		if p177 then
			task.delay(p177, function()
				-- upvalues: (ref) v_u_161, (ref) p_u_176, (ref) v_u_172
				if v_u_161.Text == p_u_176 then
					v_u_172 = false
					v_u_161.Text = "Start"
				end
			end)
		end
	end
	local function v_u_182(p179, p180)
		-- upvalues: (ref) v_u_175
		local v181 = "https://games.roblox.com/v1/games/" .. p179 .. "/servers/Public?limit=100"
		if p180 then
			v181 = "&cursor=" .. p180
		end
		return v_u_175(v181)
	end
	local function v_u_192(p183)
		-- upvalues: (ref) v_u_168, (ref) v_u_171
		local v184, v185, v186 = ipairs(p183)
		local v187 = {
			["Url"] = "https://thumbnails.roblox.com/v1/batch",
			["Headers"] = {
				["Content-Type"] = "application/json"
			},
			["Method"] = "POST",
			["Body"] = {}
		}
		while true do
			local v188
			v186, v188 = v184(v185, v186)
			if v186 == nil then
				break
			end
			table.insert(v187.Body, {
				["requestId"] = "0:" .. v188 .. ":AvatarHeadshot:150x150:png:regular",
				["type"] = "AvatarHeadShot",
				["targetId"] = 0,
				["token"] = v188,
				["format"] = "png",
				["size"] = "150x150"
			})
		end
		v187.Body = v_u_168:JSONEncode(v187.Body)
		local v189 = v_u_171(v187)
		local v190, v191 = pcall(v_u_168.JSONDecode, v_u_168, v189.Body)
		if v191 then
			v191 = v191.data or v191
		end
		return v190, v191
	end
	local function v_u_195(p193, p194)
		-- upvalues: (ref) v_u_170
		v_u_170:TeleportToPlaceInstance(p193, p194)
	end
	local v_u_196 = 30
	v_u_161.MouseButton1Click:Connect(function()
		-- upvalues: (ref) v_u_173, (ref) v_u_172, (ref) v_u_178, (ref) v_u_161, (ref) v_u_158, (ref) v_u_169, (ref) v_u_163, (ref) v_u_165, (ref) v_u_166, (ref) v_u_175, (ref) v_u_160, (ref) v_u_154, (ref) v_u_182, (ref) v_u_192, (ref) v_u_195, (ref) v_u_196
		if v_u_173 then
			v_u_173 = false
			v_u_172 = false
			v_u_178("Cancelled")
			return
		end
		if v_u_172 then
			v_u_173 = true
			local v_u_197 = v_u_161.Text
			v_u_178("Click again to confirm.")
			task.delay(5, function()
				-- upvalues: (ref) v_u_161, (ref) v_u_173, (ref) v_u_197
				if v_u_161.Text == "Click again to confirm." then
					v_u_173 = false
					v_u_161.Text = v_u_197
				end
			end)
			return
		end
		v_u_172 = true
		v_u_178("Getting user id...")
		local v199, v200, v201 = pcall(function()
			-- upvalues: (ref) v_u_158, (ref) v_u_169
			local v198 = tonumber(v_u_158.Text) or v_u_169:GetUserIdFromNameAsync(v_u_158.Text)
			return v_u_169:GetNameFromUserIdAsync(v198), v198
		end)
		if not v199 then
			return v_u_178("Username or UserId does not exist!", 3)
		end
		local v202, v203 = pcall(v_u_169.GetUserThumbnailAsync, v_u_169, v201, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
		v_u_163.Text = v200
		v_u_165.Text = v201
		v_u_166.Image = v202 and v203 and v203 or ""
		v_u_178("Getting user\'s thumbnail...")
		local v_u_204, v205 = v_u_175("https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. v201 .. "&format=Png&size=150x150&isCircular=false")
		if v_u_204 then
			v_u_204 = v205.data[1].imageUrl
		end
		v_u_178("Searching for (" .. v201 .. ")")
		v_u_178("Getting place id...")
		local v_u_206 = tonumber(v_u_160.Text)
		if v_u_160.Text:gsub("%s", "") ~= "" then
			if not v_u_206 then
				v_u_178("Invalid place id", 3)
				return
			end
		else
			v_u_206 = game.PlaceId
			v_u_160.Text = tostring(game.PlaceId)
		end
		v_u_178("Searching...")
		local v207 = nil
		local v208 = 0
		local v_u_209 = 0
		local v210 = 0
		while v_u_172 and (v_u_154 and v_u_154.Parent) do
			local v211, v212 = v_u_182(v_u_206, v207)
			if not v211 then
				return v_u_178("Failed to find servers", 3)
			end
			local v213 = v212.data
			if v212.nextPageCursor then
				v207 = v212.nextPageCursor
			end
			if v_u_161.Text:match("Searching") then
				v210 = v210 + #v213
				v_u_178(v208 .. "/" .. v210 .. " servers scanned, players found: " .. v_u_209)
			end
			local v214, v215, v216 = ipairs(v213)
			while true do
				local v_u_217
				v216, v_u_217 = v214(v215, v216)
				if v216 == nil then
					break
				end
				local function v226()
					-- upvalues: (ref) v_u_192, (ref) v_u_217, (ref) v_u_209, (ref) v_u_204, (ref) v_u_172, (ref) v_u_178, (ref) v_u_195, (ref) v_u_206, (ref) v_u_169
					local v218, v219 = v_u_192(v_u_217.playerTokens)
					if v218 then
						v_u_209 = v_u_209 + #v219
						local v220, v221, v222 = ipairs(v219)
						while true do
							local v223
							v222, v223 = v220(v221, v222)
							if v222 == nil then
								break
							end
							if v223.imageUrl then
								if v223.imageUrl == v_u_204 then
									v_u_172 = false
									v_u_178("Found player, teleporting...")
									v_u_195(v_u_206, v_u_217.id)
									local v_u_224 = 0
									if v_u_169.LocalPlayer then
										v_u_169.LocalPlayer.OnTeleport:Connect(function(p225)
											-- upvalues: (ref) v_u_224, (ref) v_u_178, (ref) v_u_195, (ref) v_u_206, (ref) v_u_217
											if p225 == Enum.TeleportState.Failed then
												v_u_224 = v_u_224 + 1
												v_u_178("Teleport failed, try #" .. v_u_224)
												v_u_195(v_u_206, v_u_217.id)
											end
										end)
									end
								end
							else
								print("token failed, id:", v223.requestId, v223.state, v223.errorMessage)
							end
						end
					else
						print("token failed", v218, v219)
					end
				end
				v208 = v208 + 1
				if v216 % v_u_196 == 0 then
					v226()
				else
					task.spawn(v226)
					task.wait()
				end
				if v_u_172 then
					v_u_178(v208 .. "/" .. v210 .. " servers scanned, players found: " .. v_u_209)
				end
			end
			if not v207 then
				break
			end
			task.wait()
		end
		if v_u_172 then
			v_u_178("Failed to find " .. v200 .. ", maybe in a vip server", 3)
		end
	end)
end)
v6:CreateButton("Tp Player Proximo", function()
	local v_u_227 = game.Players.LocalPlayer;
	(function()
		-- upvalues: (ref) v_u_227
		local v228 = math.huge
		local v229, v230, v231 = pairs(game.Players:GetPlayers())
		local v232 = nil
		while true do
			local v233
			v231, v233 = v229(v230, v231)
			if v231 == nil then
				break
			end
			if v233 ~= v_u_227 then
				local v234 = v233.Character and (v233.Character:FindFirstChild("HumanoidRootPart") and v_u_227.Character and (v_u_227.Character:FindFirstChild("HumanoidRootPart") and (v233.Character.HumanoidRootPart.Position - v_u_227.Character.HumanoidRootPart.Position).Magnitude)) or math.huge
				if v234 < v228 then
					v232 = v233
					v228 = v234
				end
			end
		end
		if v232 then
			v_u_227.Character:MoveTo(v232.Character.HumanoidRootPart.Position)
		end
	end)()
end)
v6:CreateButton("Voar", function()
	loadstring("loadstring(game:HttpGet((\'https://gist.githubusercontent.com/meozoneYT/bf037dff9f0a70017304ddd67fdcd370/raw/e14e74f425b060df523343cf30b787074eb3c5d2/arceus%2520x%2520fly%25202%2520obflucator\'),true))()\n\n")()
end)
v6:CreateButton("Noclip", function()
	local v_u_235 = game.Players.LocalPlayer.Name
	game:GetService("RunService").Stepped:connect(function()
		-- upvalues: (ref) v_u_235
		local v236, v237, v238 = pairs(game.Workspace:GetChildren())
		while true do
			local v239
			v238, v239 = v236(v237, v238)
			if v238 == nil then
				break
			end
			if v239.Name == v_u_235 then
				local v240, v241, v242 = pairs(game.Workspace[v_u_235]:GetChildren())
				while true do
					local v243
					v242, v243 = v240(v241, v242)
					if v242 == nil then
						break
					end
					if v243:IsA("BasePart") then
						v243.CanCollide = false
					end
				end
			end
		end
	end)
	workspace[v_u_235].Head.Changed:connect(function()
		-- upvalues: (ref) v_u_235
		local v244, v245, v246 = pairs(game.Workspace:GetChildren())
		while true do
			local v247
			v246, v247 = v244(v245, v246)
			if v246 == nil then
				break
			end
			if v247.Name == v_u_235 then
				local v248, v249, v250 = pairs(game.Workspace[v_u_235]:GetChildren())
				while true do
					local v251
					v250, v251 = v248(v249, v250)
					if v250 == nil then
						break
					end
					if v251:IsA("BasePart") then
						v251.CanCollide = false
					end
				end
			end
		end
	end)
end)
v6:CreateButton("Teleport Player", function()
	local v252 = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))().CreateLib("Pedroxz Teleport", "DarkTheme"):NewTab("Players"):NewSection("Teleport")
	local v253, v254, v255 = pairs(game:GetService("Players"):GetChildren())
	local v_u_256 = {}
	while true do
		local v257
		v255, v257 = v253(v254, v255)
		if v255 == nil then
			break
		end
		table.insert(v_u_256, v257.Name)
	end
	v252:NewDropdown("Select Player", " ", v_u_256, function(p258)
		Select = p258
	end)
	v252:NewButton("Refresh", " ", function()
		-- upvalues: (ref) v_u_256
		table.clear(v_u_256)
		local v259, v260, v261 = pairs(game:GetService("Players"):GetChildren())
		while true do
			local v262
			v261, v262 = v259(v260, v261)
			if v261 == nil then
				break
			end
			table.insert(v_u_256, v262.Name)
		end
	end)
	v252:NewButton("Teleport", " ", function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame
	end)
end)
v6:CreateButton("Bang (R15)", function()
	local v_u_263 = "Pedroxz"
	local v264 = Instance.new("Animation")
	v264.AnimationId = "rbxassetid://148840371"
	local v265 = game:GetService("Players").LocalPlayer
	local v_u_266 = v265.Character or v265.CharacterAdded:Wait()
	local v267 = v_u_266
	local v268 = v_u_266.WaitForChild(v267, "Humanoid"):LoadAnimation(v264)
	v268:Play()
	v268:AdjustSpeed(2.5)
	game:GetService("RunService").Stepped:Connect(function()
		-- upvalues: (ref) v_u_266, (ref) v_u_263
		v_u_266:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players"):FindFirstChild(v_u_263).Character:WaitForChild("HumanoidRootPart").Position)
	end)
end)
v6:CreateButton("Teleport Cadeira", function()
	local v269 = game:GetService("Players").LocalPlayer.Character
	v269["Right Arm"].Size = Vector3.new(8, 5, 5)
	v269["Left Arm"].Size = Vector3.new(8, 5, 5)
	v269["Right Arm"].Transparency = 1
	v269["Left Arm"].Transparency = 1
	v269["Right Leg"].Size = Vector3.new(63.539, 2, 46.212)
	v269["Left Leg"].Size = Vector3.new(63.539, 2, 46.212)
	v269["Right Leg"].Transparency = 1
	v269["Left Leg"].Transparency = 1
	v269.Torso.Size = Vector3.new(5, 5, 5)
	v269.Torso.Transparency = 1
	v269.HumanoidRootPart.Size = Vector3.new(63.539, 2, 46.212)
	v269.HumanoidRootPart.Size = Vector3.new(63.539, 2, 46.212)
	v269.HumanoidRootPart.Transparency = 0.9
end)
v7:CreateButton("Puxar Armas", function()
	local v270, v271, v272 = pairs(game:GetDescendants())
	while true do
		local v273
		v272, v273 = v270(v271, v272)
		if v272 == nil then
			break
		end
		if v273:IsA("Tool") then
			v273.Parent = game:GetService("Players").LocalPlayer.Backpack
		end
	end
	game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
		local v274, v275, v276 = pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants())
		while true do
			local v277
			v276, v277 = v274(v275, v276)
			if v276 == nil then
				break
			end
			if v277:IsA("Tool") then
				v277.Parent = game:GetService("Teams")
			end
		end
		local v278, v279, v280 = pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants())
		while true do
			local v281
			v280, v281 = v278(v279, v280)
			if v280 == nil then
				break
			end
			if v281:IsA("Tool") then
				v281.Parent = game:GetService("Teams")
			end
		end
	end)
end)
v7:CreateButton("Puxar Armas 1", function()
	local v282, v283, v284 = game.Players:GetDescendants()
	while true do
		local v285
		v284, v285 = v282(v283, v284)
		if v284 == nil then
			break
		end
		if v285:IsA("Tool") then
			v285.Parent = game.Players.LocalPlayer.Backpack
		end
	end
end)
v7:CreateButton("Clonar Items", function()
	local function v_u_289(p286, p287)
		local v288 = p287:WaitForChild("Backpack")
		p286:Clone().Parent = v288
	end
	(function()
		-- upvalues: (ref) v_u_289
		local v290 = game.Players.LocalPlayer
		local v291, v292, v293 = pairs(game:GetDescendants())
		while true do
			local v294
			v293, v294 = v291(v292, v293)
			if v293 == nil then
				break
			end
			if v294:IsA("Tool") then
				v_u_289(v294, v290)
			end
		end
	end)()
end)
v7:CreateButton("Aimbot Bypass", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Main.lua", true))()
end)
v7:CreateButton("Aimbot Mobile", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Pedroxz63/PedroxzAIMBOT/main/README.md", true))()
end)
v7:CreateButton("Aimbot + Esp Hub", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-esp/main/main.lua"))()
end)
v8:CreateButton("Esp V1", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"))()
end)
v8:CreateButton("Esp V2", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Pedroxz63/espbypedroxz/main/README.md", true))()
end)
v8:CreateButton("Esp V3", function()
	local v295 = {
		["textsize"] = 8,
		["colour"] = 255,
		255,
		255
	}
	local v_u_296 = Instance.new("BillboardGui")
	local v_u_297 = Instance.new("TextLabel", v_u_296)
	v_u_296.Name = "Cracked esp"
	v_u_296.ResetOnSpawn = false
	v_u_296.AlwaysOnTop = true
	v_u_296.LightInfluence = 0
	v_u_296.Size = UDim2.new(1.75, 0, 1.75, 0)
	v_u_297.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v_u_297.Text = ""
	v_u_297.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
	v_u_297.BorderSizePixel = 4
	v_u_297.BorderColor3 = Color3.new(v295.colour)
	v_u_297.BorderSizePixel = 0
	v_u_297.Font = "GothamSemibold"
	v_u_297.TextSize = v295.textsize
	v_u_297.TextColor3 = Color3.fromRGB(v295.colour)
	game:GetService("RunService").RenderStepped:Connect(function()
		-- upvalues: (ref) v_u_297, (ref) v_u_296
		local v298, v299, v300 = pairs(game:GetService("Players"):GetPlayers())
		while true do
			local v301
			v300, v301 = v298(v299, v300)
			if v300 == nil then
				break
			end
			if v301 ~= game:GetService("Players").LocalPlayer and v301.Character.Head:FindFirstChild("Cracked esp") == nil then
				v_u_297.Text = "{" .. v301.Name .. "}"
				v_u_296:Clone().Parent = v301.Character.Head
			end
		end
	end)
end)
v8:CreateButton("Esp V4", function()
	local function v309(p302, p303)
		local v304 = Instance.new(p302)
		local v305, v306, v307 = pairs(p303)
		while true do
			local v308
			v307, v308 = v305(v306, v307)
			if v307 == nil then
				break
			end
			v304[v307] = v308
		end
		return v304
	end
	local v_u_310 = v309("ScreenGui", {
		["DisplayOrder"] = 0,
		["Enabled"] = true,
		["ResetOnSpawn"] = true,
		["Name"] = "age1",
		["Parent"] = game.CoreGui
	})
	local v311 = v309("Frame", {
		["Style"] = Enum.FrameStyle.Custom,
		["Active"] = true,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(0.121569, 0.12549, 0.172549),
		["BackgroundTransparency"] = 0,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 2,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 50, 0, 60),
		["Rotation"] = 0,
		["Selectable"] = false,
		["Size"] = UDim2.new(0, 200, 0, 254),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "p_visuals",
		["Parent"] = v_u_310
	})
	v309("UIListLayout", {
		["Padding"] = UDim.new(0, 1),
		["FillDirection"] = Enum.FillDirection.Vertical,
		["HorizontalAlignment"] = Enum.HorizontalAlignment.Left,
		["SortOrder"] = Enum.SortOrder.LayoutOrder,
		["VerticalAlignment"] = Enum.VerticalAlignment.Top,
		["Name"] = "UIListLayout",
		["Parent"] = v311
	})
	local v312 = v309("TextLabel", {
		["Font"] = Enum.Font.GothamBlack,
		["FontSize"] = Enum.FontSize.Size18,
		["Text"] = "Player visuals",
		["TextColor3"] = Color3.new(1, 1, 1),
		["TextScaled"] = false,
		["TextSize"] = 18,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = true,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(1, 0, 0.498039),
		["BackgroundTransparency"] = 0,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 0,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(1, 0, 0, 24),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "title1",
		["Parent"] = v311
	})
	local v313 = v309("TextButton", {
		["Font"] = Enum.Font.SourceSans,
		["FontSize"] = Enum.FontSize.Size18,
		["Text"] = "Bounding box",
		["TextColor3"] = Color3.new(1, 0, 0.498039),
		["TextScaled"] = false,
		["TextSize"] = 16,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["AutoButtonColor"] = true,
		["Modal"] = false,
		["Selected"] = false,
		["Style"] = Enum.ButtonStyle.Custom,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(1, 0, 0.498039),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 0,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(1, -2, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "b_b",
		["Parent"] = v311
	})
	v309("TextLabel", {
		["Font"] = Enum.Font.Gotham,
		["FontSize"] = Enum.FontSize.Size14,
		["Text"] = "OFF",
		["TextColor3"] = Color3.new(1, 0, 0),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Right,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(1, 1, 1),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = false,
		["Size"] = UDim2.new(0, 18, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "v",
		["Parent"] = v313
	})
	local v314 = v309("TextButton", {
		["Font"] = Enum.Font.SourceSans,
		["FontSize"] = Enum.FontSize.Size18,
		["Text"] = "Fill alpha",
		["TextColor3"] = Color3.new(1, 0, 0.498039),
		["TextScaled"] = false,
		["TextSize"] = 16,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["AutoButtonColor"] = true,
		["Modal"] = false,
		["Selected"] = false,
		["Style"] = Enum.ButtonStyle.Custom,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(1, 0, 0.498039),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 0,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(1, -2, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "b_f",
		["Parent"] = v311
	})
	v309("TextLabel", {
		["Font"] = Enum.Font.Gotham,
		["FontSize"] = Enum.FontSize.Size14,
		["Text"] = "OFF",
		["TextColor3"] = Color3.new(1, 0, 0),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Right,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(1, 1, 1),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = false,
		["Size"] = UDim2.new(0, 18, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "v",
		["Parent"] = v314
	})
	local v315 = v309("TextButton", {
		["Font"] = Enum.Font.SourceSans,
		["FontSize"] = Enum.FontSize.Size18,
		["Text"] = "Render team",
		["TextColor3"] = Color3.new(1, 0, 0.498039),
		["TextScaled"] = false,
		["TextSize"] = 16,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["AutoButtonColor"] = true,
		["Modal"] = false,
		["Selected"] = false,
		["Style"] = Enum.ButtonStyle.Custom,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(1, 0, 0.498039),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 0,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(1, -2, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "b_rt",
		["Parent"] = v311
	})
	v309("TextLabel", {
		["Font"] = Enum.Font.Gotham,
		["FontSize"] = Enum.FontSize.Size14,
		["Text"] = "OFF",
		["TextColor3"] = Color3.new(1, 0, 0),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Right,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(1, 1, 1),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = false,
		["Size"] = UDim2.new(0, 18, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "v",
		["Parent"] = v315
	})
	local v316 = v309("TextButton", {
		["Font"] = Enum.Font.SourceSans,
		["FontSize"] = Enum.FontSize.Size18,
		["Text"] = "Use TeamColor",
		["TextColor3"] = Color3.new(1, 0, 0.498039),
		["TextScaled"] = false,
		["TextSize"] = 16,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["AutoButtonColor"] = true,
		["Modal"] = false,
		["Selected"] = false,
		["Style"] = Enum.ButtonStyle.Custom,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(1, 0, 0.498039),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 0,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(1, -2, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "b_tc",
		["Parent"] = v311
	})
	v309("TextLabel", {
		["Font"] = Enum.Font.Gotham,
		["FontSize"] = Enum.FontSize.Size14,
		["Text"] = "OFF",
		["TextColor3"] = Color3.new(1, 0, 0),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Right,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(1, 1, 1),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = false,
		["Size"] = UDim2.new(0, 18, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "v",
		["Parent"] = v316
	})
	local v317 = v309("TextButton", {
		["Font"] = Enum.Font.SourceSans,
		["FontSize"] = Enum.FontSize.Size18,
		["Text"] = "Show name",
		["TextColor3"] = Color3.new(1, 0, 0.498039),
		["TextScaled"] = false,
		["TextSize"] = 16,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["AutoButtonColor"] = true,
		["Modal"] = false,
		["Selected"] = false,
		["Style"] = Enum.ButtonStyle.Custom,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(1, 0, 0.498039),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 0,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(1, -2, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "b_sn",
		["Parent"] = v311
	})
	v309("TextLabel", {
		["Font"] = Enum.Font.Gotham,
		["FontSize"] = Enum.FontSize.Size14,
		["Text"] = "OFF",
		["TextColor3"] = Color3.new(1, 0, 0),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Right,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(1, 1, 1),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = false,
		["Size"] = UDim2.new(0, 18, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "v",
		["Parent"] = v317
	})
	local v318 = v309("TextButton", {
		["Font"] = Enum.Font.SourceSans,
		["FontSize"] = Enum.FontSize.Size18,
		["Text"] = "Show distance",
		["TextColor3"] = Color3.new(1, 0, 0.498039),
		["TextScaled"] = false,
		["TextSize"] = 16,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["AutoButtonColor"] = true,
		["Modal"] = false,
		["Selected"] = false,
		["Style"] = Enum.ButtonStyle.Custom,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(1, 0, 0.498039),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 0,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(1, -2, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "b_sd",
		["Parent"] = v311
	})
	v309("TextLabel", {
		["Font"] = Enum.Font.Gotham,
		["FontSize"] = Enum.FontSize.Size14,
		["Text"] = "OFF",
		["TextColor3"] = Color3.new(1, 0, 0),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Right,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(1, 1, 1),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = false,
		["Size"] = UDim2.new(0, 18, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "v",
		["Parent"] = v318
	})
	local v319 = v309("TextButton", {
		["Font"] = Enum.Font.SourceSans,
		["FontSize"] = Enum.FontSize.Size18,
		["Text"] = "Show health",
		["TextColor3"] = Color3.new(1, 0, 0.498039),
		["TextScaled"] = false,
		["TextSize"] = 16,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["AutoButtonColor"] = true,
		["Modal"] = false,
		["Selected"] = false,
		["Style"] = Enum.ButtonStyle.Custom,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(1, 0, 0.498039),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 0,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(1, -2, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "b_sh",
		["Parent"] = v311
	})
	v309("TextLabel", {
		["Font"] = Enum.Font.Gotham,
		["FontSize"] = Enum.FontSize.Size14,
		["Text"] = "OFF",
		["TextColor3"] = Color3.new(1, 0, 0),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Right,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(1, 1, 1),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = false,
		["Size"] = UDim2.new(0, 18, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "v",
		["Parent"] = v319
	})
	local v320 = v309("TextButton", {
		["Font"] = Enum.Font.SourceSans,
		["FontSize"] = Enum.FontSize.Size18,
		["Text"] = "Health type",
		["TextColor3"] = Color3.new(1, 0, 0.498039),
		["TextScaled"] = false,
		["TextSize"] = 16,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["AutoButtonColor"] = true,
		["Modal"] = false,
		["Selected"] = false,
		["Style"] = Enum.ButtonStyle.Custom,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(1, 0, 0.498039),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 0,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(1, -2, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "b_ht",
		["Parent"] = v311
	})
	v309("TextLabel", {
		["Font"] = Enum.Font.SourceSans,
		["FontSize"] = Enum.FontSize.Size18,
		["Text"] = "Text",
		["TextColor3"] = Color3.new(0, 1, 1),
		["TextScaled"] = false,
		["TextSize"] = 16,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Right,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(1, 1, 1),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = false,
		["Size"] = UDim2.new(0, 18, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "v",
		["Parent"] = v320
	})
	local v321 = v309("TextButton", {
		["Font"] = Enum.Font.SourceSans,
		["FontSize"] = Enum.FontSize.Size18,
		["Text"] = "Fill transparency",
		["TextColor3"] = Color3.new(1, 0, 0.498039),
		["TextScaled"] = false,
		["TextSize"] = 16,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["AutoButtonColor"] = true,
		["Modal"] = false,
		["Selected"] = false,
		["Style"] = Enum.ButtonStyle.Custom,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(1, 0, 0.498039),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 0,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(1, -2, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "b_f_t",
		["Parent"] = v311
	})
	v309("TextLabel", {
		["Font"] = Enum.Font.Gotham,
		["FontSize"] = Enum.FontSize.Size14,
		["Text"] = "1",
		["TextColor3"] = Color3.new(0, 1, 1),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Right,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(1, 1, 1),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = false,
		["Size"] = UDim2.new(0, 18, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "v",
		["Parent"] = v321
	})
	local v322 = v309("TextLabel", {
		["Font"] = Enum.Font.SourceSansBold,
		["FontSize"] = Enum.FontSize.Size18,
		["Text"] = "ESP",
		["TextColor3"] = Color3.new(1, 0, 0.498039),
		["TextScaled"] = false,
		["TextSize"] = 18,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(0.121569, 0.12549, 0.172549),
		["BackgroundTransparency"] = 0,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(1, 0, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "title1_2",
		["Parent"] = v311
	})
	local v323 = v309("TextLabel", {
		["Font"] = Enum.Font.SourceSans,
		["FontSize"] = Enum.FontSize.Size18,
		["Text"] = "Team color",
		["TextColor3"] = Color3.new(1, 0, 0.498039),
		["TextScaled"] = false,
		["TextSize"] = 16,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(1, 0, 0.498039),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 0,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(1, -2, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "b_ct",
		["Parent"] = v311
	})
	local v_u_324 = v309("TextBox", {
		["ClearTextOnFocus"] = true,
		["Font"] = Enum.Font.Gotham,
		["FontSize"] = Enum.FontSize.Size14,
		["MultiLine"] = false,
		["Text"] = "",
		["TextColor3"] = Color3.new(0, 0, 1),
		["PlaceholderText"] = "",
		["PlaceholderColor3"] = Color3.new(0, 0, 1),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Center,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = true,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(0.121569, 0.12549, 0.172549),
		["BackgroundTransparency"] = 0,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, -2, 0, 2),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(0, 27, 0, 14),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "ct_b",
		["Parent"] = v323
	})
	local v_u_325 = v309("TextBox", {
		["ClearTextOnFocus"] = true,
		["Font"] = Enum.Font.Gotham,
		["FontSize"] = Enum.FontSize.Size14,
		["MultiLine"] = false,
		["Text"] = "",
		["TextColor3"] = Color3.new(0, 1, 0),
		["PlaceholderText"] = "",
		["PlaceholderColor3"] = Color3.new(0, 1, 0),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Center,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = true,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(0.121569, 0.12549, 0.172549),
		["BackgroundTransparency"] = 0,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, -29, 0, 2),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(0, 27, 0, 14),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "ct_g",
		["Parent"] = v323
	})
	local v_u_326 = v309("TextBox", {
		["ClearTextOnFocus"] = true,
		["Font"] = Enum.Font.Gotham,
		["FontSize"] = Enum.FontSize.Size14,
		["MultiLine"] = false,
		["Text"] = "",
		["TextColor3"] = Color3.new(1, 0, 0),
		["PlaceholderText"] = "",
		["PlaceholderColor3"] = Color3.new(1, 0, 0),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Center,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = true,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(0.121569, 0.12549, 0.172549),
		["BackgroundTransparency"] = 0,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, -56, 0, 2),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(0, 27, 0, 14),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "ct_r",
		["Parent"] = v323
	})
	local v327 = v309("TextLabel", {
		["Font"] = Enum.Font.SourceSans,
		["FontSize"] = Enum.FontSize.Size18,
		["Text"] = "Enemy color",
		["TextColor3"] = Color3.new(1, 0, 0.498039),
		["TextScaled"] = false,
		["TextSize"] = 16,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(1, 0, 0.498039),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 0,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 0, 0, 0),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(1, -2, 0, 18),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "b_ce",
		["Parent"] = v311
	})
	local v_u_328 = v309("TextBox", {
		["ClearTextOnFocus"] = true,
		["Font"] = Enum.Font.Gotham,
		["FontSize"] = Enum.FontSize.Size14,
		["MultiLine"] = false,
		["Text"] = "",
		["TextColor3"] = Color3.new(0, 0, 1),
		["PlaceholderText"] = "",
		["PlaceholderColor3"] = Color3.new(0, 0, 1),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Center,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = true,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(0.121569, 0.12549, 0.172549),
		["BackgroundTransparency"] = 0,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, -2, 0, 2),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(0, 27, 0, 14),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "ce_b",
		["Parent"] = v327
	})
	local v_u_329 = v309("TextBox", {
		["ClearTextOnFocus"] = true,
		["Font"] = Enum.Font.Gotham,
		["FontSize"] = Enum.FontSize.Size14,
		["MultiLine"] = false,
		["Text"] = "",
		["TextColor3"] = Color3.new(0, 1, 0),
		["PlaceholderText"] = "",
		["PlaceholderColor3"] = Color3.new(0, 1, 0),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Center,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = true,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(0.121569, 0.12549, 0.172549),
		["BackgroundTransparency"] = 0,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, -29, 0, 2),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(0, 27, 0, 14),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "ce_g",
		["Parent"] = v327
	})
	local v_u_330 = v309("TextBox", {
		["ClearTextOnFocus"] = true,
		["Font"] = Enum.Font.Gotham,
		["FontSize"] = Enum.FontSize.Size14,
		["MultiLine"] = false,
		["Text"] = "",
		["TextColor3"] = Color3.new(1, 0, 0),
		["PlaceholderText"] = "",
		["PlaceholderColor3"] = Color3.new(1, 0, 0),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Center,
		["TextYAlignment"] = Enum.TextYAlignment.Center,
		["Active"] = true,
		["AnchorPoint"] = Vector2.new(1, 0),
		["BackgroundColor3"] = Color3.new(0.121569, 0.12549, 0.172549),
		["BackgroundTransparency"] = 0,
		["BorderColor3"] = Color3.new(1, 0, 0.498039),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(1, -56, 0, 2),
		["Rotation"] = 0,
		["Selectable"] = true,
		["Size"] = UDim2.new(0, 27, 0, 14),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 1,
		["Name"] = "ce_r",
		["Parent"] = v327
	})
	local v331 = v309("TextLabel", {
		["Font"] = Enum.Font.Code,
		["FontSize"] = Enum.FontSize.Size14,
		["Text"] = "lamehaxx v0.01",
		["TextColor3"] = Color3.new(0, 0, 0),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 1,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Top,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(1, 1, 1),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, 2, 0, -34),
		["Rotation"] = 0,
		["Selectable"] = false,
		["Size"] = UDim2.new(0, 200, 0, 20),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 20,
		["Name"] = "watermark",
		["Parent"] = v_u_310
	})
	v309("TextLabel", {
		["Font"] = Enum.Font.Code,
		["FontSize"] = Enum.FontSize.Size14,
		["Text"] = "lamehaxx v0.01",
		["TextColor3"] = Color3.new(1, 0, 0.498039),
		["TextScaled"] = false,
		["TextSize"] = 14,
		["TextStrokeColor3"] = Color3.new(0, 0, 0),
		["TextStrokeTransparency"] = 0,
		["TextTransparency"] = 0,
		["TextWrapped"] = false,
		["TextXAlignment"] = Enum.TextXAlignment.Left,
		["TextYAlignment"] = Enum.TextYAlignment.Top,
		["Active"] = false,
		["AnchorPoint"] = Vector2.new(0, 0),
		["BackgroundColor3"] = Color3.new(1, 1, 1),
		["BackgroundTransparency"] = 1,
		["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843),
		["BorderSizePixel"] = 1,
		["ClipsDescendants"] = false,
		["Draggable"] = false,
		["Position"] = UDim2.new(0, -2, 0, -2),
		["Rotation"] = 0,
		["Selectable"] = false,
		["Size"] = UDim2.new(0, 200, 0, 20),
		["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
		["Visible"] = true,
		["ZIndex"] = 20,
		["Name"] = "watermark1",
		["Parent"] = v331
	})
	v311.Draggable = true
	v312.LayoutOrder = 0
	v322.LayoutOrder = 1
	v313.LayoutOrder = 1
	v314.LayoutOrder = 2
	v321.LayoutOrder = 3
	v318.LayoutOrder = 4
	v317.LayoutOrder = 5
	v319.LayoutOrder = 6
	v320.LayoutOrder = 7
	v315.LayoutOrder = 8
	v316.LayoutOrder = 9
	v323.LayoutOrder = 10
	v327.LayoutOrder = 11
	local v_u_332 = game:GetService("Players").LocalPlayer
	game:GetService("UserInputService")
	local v_u_333 = {
		["b_b"] = false,
		["b_f"] = false,
		["b_f_t"] = 1,
		["b_sd"] = false,
		["b_sn"] = false,
		["b_sh"] = false,
		["b_ht"] = "Text",
		["b_rt"] = false,
		["b_tc"] = false
	}
	local v334 = Instance.new("Folder", game.CoreGui)
	v334.Name = "cheats"
	local v_u_335 = Instance.new("Folder", v334)
	v_u_335.Name = "esp"
	function addEsp(p_u_336)
		-- upvalues: (ref) v_u_335, (ref) v_u_332, (ref) v_u_333, (ref) v_u_326, (ref) v_u_325, (ref) v_u_324, (ref) v_u_330, (ref) v_u_329, (ref) v_u_328
		local v_u_337 = Instance.new("BillboardGui", v_u_335)
		v_u_337.Name = p_u_336.Name
		v_u_337.AlwaysOnTop = true
		v_u_337.Size = UDim2.new(4, 0, 5.4, 0)
		v_u_337.ClipsDescendants = false
		local v_u_338 = Instance.new("Frame", v_u_337)
		v_u_338.Size = UDim2.new(1, 0, 1, 0)
		v_u_338.BorderSizePixel = 0
		v_u_338.BackgroundTransparency = 1
		local v_u_339 = Instance.new("Frame", v_u_338)
		v_u_339.BorderSizePixel = 0
		v_u_339.Size = UDim2.new(0, 1, 1, 0)
		local v340 = v_u_339
		local v_u_341 = v_u_339.Clone(v340)
		v_u_341.Parent = v_u_338
		v_u_341.Size = UDim2.new(0, -1, 1, 0)
		v_u_341.Position = UDim2.new(1, 0, 0, 0)
		local v342 = v_u_339
		local v_u_343 = v_u_339.Clone(v342)
		v_u_343.Parent = v_u_338
		v_u_343.Size = UDim2.new(1, 0, 0, 1)
		local v344 = v_u_339
		local v_u_345 = v_u_339.Clone(v344)
		v_u_345.Parent = v_u_338
		v_u_345.Size = UDim2.new(1, 0, 0, -1)
		v_u_345.Position = UDim2.new(0, 0, 1, 0)
		local v_u_346 = Instance.new("BillboardGui", v_u_337)
		v_u_346.Name = "info"
		v_u_346.Size = UDim2.new(3, 0, 0, 54)
		v_u_346.StudsOffset = Vector3.new(3.6, -3, 0)
		v_u_346.AlwaysOnTop = true
		v_u_346.ClipsDescendants = false
		local v_u_347 = Instance.new("TextLabel", v_u_346)
		v_u_347.Name = "namelabel"
		v_u_347.BackgroundTransparency = 1
		v_u_347.TextStrokeTransparency = 0
		v_u_347.TextXAlignment = Enum.TextXAlignment.Left
		v_u_347.Size = UDim2.new(0, 100, 0, 18)
		v_u_347.Position = UDim2.new(0, 0, 0, 0)
		v_u_347.Text = p_u_336.Name
		local v_u_348 = Instance.new("TextLabel", v_u_346)
		v_u_348.Name = "distancelabel"
		v_u_348.BackgroundTransparency = 1
		v_u_348.TextStrokeTransparency = 0
		v_u_348.TextXAlignment = Enum.TextXAlignment.Left
		v_u_348.Size = UDim2.new(0, 100, 0, 18)
		v_u_348.Position = UDim2.new(0, 0, 0, 18)
		local v_u_349 = Instance.new("TextLabel", v_u_346)
		v_u_349.Name = "healthlabel"
		v_u_349.BackgroundTransparency = 1
		v_u_349.TextStrokeTransparency = 0
		v_u_349.TextXAlignment = Enum.TextXAlignment.Left
		v_u_349.Size = UDim2.new(0, 100, 0, 18)
		v_u_349.Position = UDim2.new(0, 0, 0, 36)
		Instance.new("UIListLayout", v_u_346)
		local v_u_350 = Instance.new("BillboardGui", v_u_337)
		v_u_350.Name = "forhealth"
		v_u_350.Size = UDim2.new(5, 0, 6, 0)
		v_u_350.AlwaysOnTop = true
		v_u_350.ClipsDescendants = false
		local v_u_351 = Instance.new("Frame", v_u_350)
		v_u_351.Name = "healthbar"
		v_u_351.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		v_u_351.BorderColor3 = Color3.fromRGB(0, 0, 0)
		v_u_351.Size = UDim2.new(0.04, 0, 0.9, 0)
		v_u_351.Position = UDim2.new(0, 0, 0.05, 0)
		local v_u_352 = Instance.new("Frame", v_u_351)
		v_u_352.Name = "bar"
		v_u_352.BorderSizePixel = 0
		v_u_352.BackgroundColor3 = Color3.fromRGB(94, 255, 69)
		v_u_352.AnchorPoint = Vector2.new(0, 1)
		v_u_352.Position = UDim2.new(0, 0, 1, 0)
		v_u_352.Size = UDim2.new(1, 0, 1, 0)
		local v353 = coroutine.create(function()
			-- upvalues: (ref) p_u_336, (ref) v_u_337, (ref) v_u_346, (ref) v_u_350, (ref) v_u_332, (ref) v_u_338, (ref) v_u_339, (ref) v_u_341, (ref) v_u_343, (ref) v_u_345, (ref) v_u_349, (ref) v_u_348, (ref) v_u_347, (ref) v_u_352, (ref) v_u_351, (ref) v_u_333, (ref) v_u_326, (ref) v_u_325, (ref) v_u_324, (ref) v_u_330, (ref) v_u_329, (ref) v_u_328, (ref) v_u_335
			while wait(0.1) do
				if p_u_336.Character and p_u_336.Character:FindFirstChild("HumanoidRootPart") then
					v_u_337.Adornee = p_u_336.Character.HumanoidRootPart
					v_u_346.Adornee = p_u_336.Character.HumanoidRootPart
					v_u_350.Adornee = p_u_336.Character.HumanoidRootPart
					if p_u_336.Team ~= v_u_332.Team then
						v_u_337.Enabled = true
						v_u_346.Enabled = true
						v_u_350.Enabled = true
					end
					if p_u_336.Character:FindFirstChild("ForceField") then
						v_u_338.BackgroundTransparency = 0.4
						v_u_339.BackgroundTransparency = 0.4
						v_u_341.BackgroundTransparency = 0.4
						v_u_343.BackgroundTransparency = 0.4
						v_u_345.BackgroundTransparency = 0.4
						v_u_349.TextTransparency = 0.4
						v_u_349.TextStrokeTransparency = 0.8
						v_u_348.TextTransparency = 0.4
						v_u_348.TextStrokeTransparency = 0.8
						v_u_347.TextTransparency = 0.4
						v_u_347.TextStrokeTransparency = 0.8
						v_u_352.BackgroundTransparency = 0.4
						v_u_351.BackgroundTransparency = 0.8
					else
						v_u_338.BackgroundTransparency = 0
						v_u_339.BackgroundTransparency = 0
						v_u_341.BackgroundTransparency = 0
						v_u_343.BackgroundTransparency = 0
						v_u_345.BackgroundTransparency = 0
						v_u_349.TextTransparency = 0
						v_u_349.TextStrokeTransparency = 0
						v_u_348.TextTransparency = 0
						v_u_348.TextStrokeTransparency = 0
						v_u_347.TextTransparency = 0
						v_u_347.TextStrokeTransparency = 0
						v_u_352.BackgroundTransparency = 0
						v_u_351.BackgroundTransparency = 0
					end
					if v_u_333.b_b ~= true then
						v_u_338.Visible = false
					else
						v_u_338.Visible = true
					end
					if v_u_333.b_f ~= true then
						v_u_338.BackgroundTransparency = 1
					elseif p_u_336.Character:FindFirstChild("ForceField") then
						v_u_338.BackgroundTransparency = 0.9
					else
						v_u_338.BackgroundTransparency = v_u_333.b_f_t
					end
					if v_u_333.b_sh ~= true then
						v_u_349.Visible = false
						v_u_351.Visible = false
					else
						if p_u_336.Character:FindFirstChild("Humanoid") then
							v_u_349.Text = "Health: " .. math.floor(p_u_336.Character:FindFirstChild("Humanoid").Health)
							v_u_351.bar.Size = UDim2.new(1, 0, p_u_336.Character:FindFirstChild("Humanoid").Health / p_u_336.Character:FindFirstChild("Humanoid").MaxHealth, 0)
						end
						if v_u_333.b_ht == "Text" then
							v_u_351.Visible = false
							v_u_349.Visible = true
						end
						if v_u_333.b_ht == "Bar" then
							v_u_349.Visible = false
							v_u_351.Visible = true
						end
						if v_u_333.b_ht == "Both" then
							v_u_349.Visible = true
							v_u_351.Visible = true
						end
					end
					if v_u_333.b_sn then
						v_u_347.Visible = true
					else
						v_u_347.Visible = false
					end
					if v_u_333.b_sd ~= true then
						v_u_348.Visible = false
					else
						v_u_348.Visible = true
						if v_u_332.Character and v_u_332.Character:FindFirstChild("HumanoidRootPart") then
							v_u_348.Text = "Distance: " .. math.floor(0.5 + (v_u_332.Character:FindFirstChild("HumanoidRootPart").Position - p_u_336.Character:FindFirstChild("HumanoidRootPart").Position).magnitude)
						end
					end
					if v_u_333.b_rt ~= true then
						if p_u_336.Team == v_u_332.Team then
							v_u_337.Enabled = false
							v_u_346.Enabled = false
							v_u_350.Enabled = false
						end
					elseif p_u_336.Team == v_u_332.Team then
						v_u_337.Enabled = true
						v_u_346.Enabled = true
						v_u_350.Enabled = true
					end
					if v_u_333.b_tc ~= true then
						if p_u_336.Team ~= v_u_332.Team then
							v_u_338.BackgroundColor3 = Color3.fromRGB(v_u_330.Text, v_u_329.Text, v_u_328.Text)
							v_u_339.BackgroundColor3 = Color3.fromRGB(v_u_330.Text, v_u_329.Text, v_u_328.Text)
							v_u_341.BackgroundColor3 = Color3.fromRGB(v_u_330.Text, v_u_329.Text, v_u_328.Text)
							v_u_343.BackgroundColor3 = Color3.fromRGB(v_u_330.Text, v_u_329.Text, v_u_328.Text)
							v_u_345.BackgroundColor3 = Color3.fromRGB(v_u_330.Text, v_u_329.Text, v_u_328.Text)
							v_u_349.TextColor3 = Color3.fromRGB(v_u_330.Text, v_u_329.Text, v_u_328.Text)
							v_u_348.TextColor3 = Color3.fromRGB(v_u_330.Text, v_u_329.Text, v_u_328.Text)
							v_u_347.TextColor3 = Color3.fromRGB(v_u_330.Text, v_u_329.Text, v_u_328.Text)
						else
							v_u_338.BackgroundColor3 = Color3.fromRGB(v_u_326.Text, v_u_325.Text, v_u_324.Text)
							v_u_339.BackgroundColor3 = Color3.fromRGB(v_u_326.Text, v_u_325.Text, v_u_324.Text)
							v_u_341.BackgroundColor3 = Color3.fromRGB(v_u_326.Text, v_u_325.Text, v_u_324.Text)
							v_u_343.BackgroundColor3 = Color3.fromRGB(v_u_326.Text, v_u_325.Text, v_u_324.Text)
							v_u_345.BackgroundColor3 = Color3.fromRGB(v_u_326.Text, v_u_325.Text, v_u_324.Text)
							v_u_349.TextColor3 = Color3.fromRGB(v_u_326.Text, v_u_325.Text, v_u_324.Text)
							v_u_348.TextColor3 = Color3.fromRGB(v_u_326.Text, v_u_325.Text, v_u_324.Text)
							v_u_347.TextColor3 = Color3.fromRGB(v_u_326.Text, v_u_325.Text, v_u_324.Text)
						end
					else
						v_u_338.BackgroundColor3 = p_u_336.TeamColor.Color
						v_u_339.BackgroundColor3 = p_u_336.TeamColor.Color
						v_u_341.BackgroundColor3 = p_u_336.TeamColor.Color
						v_u_343.BackgroundColor3 = p_u_336.TeamColor.Color
						v_u_345.BackgroundColor3 = p_u_336.TeamColor.Color
						v_u_349.TextColor3 = p_u_336.TeamColor.Color
						v_u_348.TextColor3 = p_u_336.TeamColor.Color
						v_u_347.TextColor3 = p_u_336.TeamColor.Color
					end
				end
				if not game:GetService("Players"):FindFirstChild(p_u_336.Name) then
					print(p_u_336.Name .. " has left. Clearing esp.")
					v_u_335:FindFirstChild(p_u_336.Name):Destroy()
					coroutine.yield()
				end
			end
		end)
		coroutine.resume(v353)
	end
	wait(2)
	local v354, v355, v356 = pairs(v_u_310:GetDescendants())
	local v357 = v_u_335
	local v358 = v_u_332
	local v_u_359 = v_u_333
	while true do
		local v_u_360
		v356, v_u_360 = v354(v355, v356)
		if v356 == nil then
			break
		end
		if v_u_360:IsA("TextButton") then
			v_u_360.MouseButton1Click:connect(function()
				-- upvalues: (ref) v_u_360, (ref) v_u_359
				if v_u_360.Name ~= "b_f_t" then
					if v_u_360.Name ~= "b_ht" then
						if v_u_359[v_u_360.Name] ~= true then
							v_u_359[v_u_360.Name] = true
							v_u_360.v.Text = "ON"
							v_u_360.v.TextColor3 = Color3.fromRGB(0, 255, 0)
						else
							v_u_359[v_u_360.Name] = false
							v_u_360.v.Text = "OFF"
							v_u_360.v.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						if v_u_359.b_ht ~= "Text" then
							if v_u_359.b_ht ~= "Bar" then
								v_u_359.b_ht = "Text"
							else
								v_u_359.b_ht = "Both"
							end
						else
							v_u_359.b_ht = "Bar"
						end
						v_u_360.v.Text = v_u_359.b_ht
					end
				else
					if v_u_359.b_f_t >= 0 then
						v_u_359.b_f_t = v_u_359.b_f_t + 0.1
						if v_u_359.b_f_t > 1 then
							v_u_359.b_f_t = 0
						end
					end
					v_u_360.v.Text = v_u_359.b_f_t
				end
			end)
		end
	end
	local v361, v362, v363 = pairs(game:GetService("Players"):GetChildren())
	while true do
		local v364
		v363, v364 = v361(v362, v363)
		if v363 == nil then
			break
		end
		if v364.Name ~= v358.Name and not v357:FindFirstChild(v364.Name) then
			addEsp(v364)
		end
	end
	game:GetService("UserInputService").InputBegan:connect(function(p365, p366)
		-- upvalues: (ref) v_u_310
		if p365.KeyCode == Enum.KeyCode.KeypadOne and not p366 then
			v_u_310.Enabled = not v_u_310.Enabled
		end
	end)
	while wait(10) do
		local v367, v368, v369 = pairs(game:GetService("Players"):GetChildren())
		while true do
			local v370
			v369, v370 = v367(v368, v369)
			if v369 == nil then
				break
			end
			if v370.Name ~= v358.Name and not v357:FindFirstChild(v370.Name) then
				addEsp(v370)
			end
		end
	end
end)
v9:CreateButton("Lagar Servidor Models", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/GameLeaks2/RobloxScripts/main/CrashServer", true))()
end)
v9:CreateButton("Hub Troll V1.5", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Arthurkla/teste/main/ViethinScript2", true))()
end)
v9:CreateButton("Fling Player", function()
	local v_u_371 = game:FindService("Players").LocalPlayer
	local function v_u_391(p372)
		-- upvalues: (ref) v_u_371
		local v373 = {}
		local v374 = p372:lower()
		if v374 == "all" then
			local v375, v376, v377 = pairs(game:FindService("Players"):GetPlayers())
			while true do
				local v378
				v377, v378 = v375(v376, v377)
				if v377 == nil then
					break
				end
				table.insert(v373, v378)
			end
		elseif v374 == "others" then
			local v379, v380, v381 = pairs(game:FindService("Players"):GetPlayers())
			while true do
				local v382
				v381, v382 = v379(v380, v381)
				if v381 == nil then
					break
				end
				if v382.Name ~= v_u_371.Name then
					table.insert(v373, v382)
				end
			end
		elseif v374 == "me" then
			local v383, v384, v385 = pairs(game:FindService("Players"):GetPlayers())
			while true do
				local v386
				v385, v386 = v383(v384, v385)
				if v385 == nil then
					break
				end
				if v386.Name == v_u_371.Name then
					table.insert(v373, v386)
				end
			end
		else
			local v387, v388, v389 = pairs(game:FindService("Players"):GetPlayers())
			while true do
				local v390
				v389, v390 = v387(v388, v389)
				if v389 == nil then
					break
				end
				if v390.Name:lower():sub(1, #p372) == p372:lower() then
					table.insert(v373, v390)
				end
			end
		end
		return v373
	end
	local function v_u_394(p392, p393)
		game:FindService("StarterGui"):SetCore("SendNotification", {
			["Title"] = "Fling Player Carregado!",
			["Text"] = p392,
			["Icon"] = "rbxassetid://2005276185",
			["Duration"] = p393 or 3
		})
	end
	local v395 = Instance.new("ScreenGui")
	local v396 = Instance.new("ImageLabel")
	local v397 = Instance.new("Frame")
	local v398 = Instance.new("TextLabel")
	local v_u_399 = Instance.new("TextBox")
	local v400 = Instance.new("TextButton")
	v395.Name = "h"
	v395.Parent = game:GetService("CoreGui")
	v395.ResetOnSpawn = false
	v396.Name = "Main"
	v396.Parent = v395
	v396.Active = true
	v396.Draggable = true
	v396.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v396.BorderSizePixel = 0
	v396.Position = UDim2.new(0.174545452, 0, 0.459574461, 0)
	v396.Size = UDim2.new(0, 454, 0, 218)
	v396.Image = "rbxassetid://2005276185"
	v397.Name = "Top"
	v397.Parent = v396
	v397.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
	v397.BorderSizePixel = 0
	v397.Size = UDim2.new(0, 454, 0, 44)
	v398.Name = "Title"
	v398.Parent = v397
	v398.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
	v398.BorderSizePixel = 0
	v398.Position = UDim2.new(0, 0, 0.295454562, 0)
	v398.Size = UDim2.new(0, 454, 0, 30)
	v398.Font = Enum.Font.SourceSans
	v398.Text = "Fling Players Troll (Pedroxz Menu)"
	v398.TextColor3 = Color3.fromRGB(255, 255, 255)
	v398.TextScaled = true
	v398.TextSize = 14
	v398.TextWrapped = true
	v_u_399.Parent = v396
	v_u_399.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
	v_u_399.BorderSizePixel = 0
	v_u_399.Position = UDim2.new(0.0704845786, 0, 0.270642221, 0)
	v_u_399.Size = UDim2.new(0, 388, 0, 62)
	v_u_399.Font = Enum.Font.SourceSans
	v_u_399.PlaceholderText = "Nome do player aqui!"
	v_u_399.Text = ""
	v_u_399.TextColor3 = Color3.fromRGB(255, 255, 255)
	v_u_399.TextScaled = true
	v_u_399.TextSize = 14
	v_u_399.TextWrapped = true
	v400.Parent = v396
	v400.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
	v400.BorderSizePixel = 0
	v400.Position = UDim2.new(0.10352423, 0, 0.596330225, 0)
	v400.Size = UDim2.new(0, 359, 0, 50)
	v400.Font = Enum.Font.SourceSans
	v400.Text = "Cheese em\'"
	v400.TextColor3 = Color3.fromRGB(255, 255, 255)
	v400.TextScaled = true
	v400.TextSize = 14
	v400.TextWrapped = true
	v400.MouseButton1Click:Connect(function()
		-- upvalues: (ref) v_u_391, (ref) v_u_399, (ref) v_u_371, (ref) v_u_394
		local v401 = v_u_391(v_u_399.Text)
		if v401[1] then
			local v402 = v401[1]
			local v403 = Instance.new("BodyThrust", v_u_371.Character.HumanoidRootPart)
			v403.Force = Vector3.new(9999, 9999, 9999)
			v403.Name = "YeetForce"
			repeat
				v_u_371.Character.HumanoidRootPart.CFrame = v402.Character.HumanoidRootPart.CFrame
				v403.Location = v402.Character.HumanoidRootPart.Position
				game:FindService("RunService").Heartbeat:wait()
			until not v402.Character:FindFirstChild("Head")
		else
			v_u_394("Invalid player")
		end
	end)
	v_u_394("Fling carregado, use com sabedoria! By: Pedroxz (nao sei quem fez ent vai ficar assim)", 5)
end)
v9:CreateButton("Negativar Dinheiro All", function()
	if game:service("ReplicatedStorage").ACS_Engine.Events:FindFirstChild("Refil") then
		local v404 = game:service("ReplicatedStorage").ACS_Engine.Events:FindFirstChild("Refil")
		local v405, v406, v407 = pairs(game:GetDescendants())
		local v408 = -9.9999999999999e19
		while true do
			local v409
			v407, v409 = v405(v406, v407)
			if v407 == nil then
				break
			end
			if v409:IsA("IntValue") or v409:IsA("NumberValue") then
				v404:FireServer(v409, -(v408 - v409.Value))
			end
		end
	else
		game:FindService("StarterGui"):SetCore("SendNotification", {
			["Title"] = "Remote",
			["Text"] = "N\195\163o Encontrado",
			["Duration"] = 5
		})
	end
end)
v9:CreateButton("Som Server", function()
	local v410 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Consistt/Ui/main/UnLeaked"))()
	local v_u_411 = nil
	local v_u_412 = nil
	local v_u_413 = nil
	v410.title = "Main"
	local v414 = v410:Init():NewTab("FE Sound")
	v414:NewSection("Main")
	v414:NewTextbox("Sound Id", "", "xxx", "all", "small", true, false, function(p415)
		-- upvalues: (ref) v_u_411
		v_u_411 = "rbxassetid://" .. p415
	end)
	v414:NewSlider("Pith", "", true, "/", {
		["min"] = 0,
		["max"] = 10,
		["default"] = 0
	}, function(p416)
		-- upvalues: (ref) v_u_412
		v_u_412 = p416
	end)
	v414:NewSlider("Volume", "", true, "/", {
		["min"] = 0,
		["max"] = 10,
		["default"] = 0
	}, function(p417)
		-- upvalues: (ref) v_u_413
		v_u_413 = p417
	end)
	local v_u_418 = "SomSpawnado"
	v414:NewToggle("Play", false, function(p419)
		-- upvalues: (ref) v_u_418, (ref) v_u_411, (ref) v_u_412, (ref) v_u_413
		local v420 = game:FindFirstChild("AC6_FE_Sounds", true)
		v420:FireServer("newSound", v_u_418, workspace, v_u_411, v_u_412, v_u_413, true)
		v420:FireServer("playSound", v_u_418)
		if not p419 then
			v420:FireServer("stopSound", v_u_418)
		end
	end)
end)
v9:CreateButton("Btools", function()
	local v421 = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
	local v422 = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
	v421.BinType = "Clone"
	v422.BinType = "Hammer"
end)
v9:CreateButton("Escanear Falha Delete", function()
	loadstring(game:HttpGet("https://gist.github.com/someunknowndude/38cecea5be9d75cb743eac8b1eaf6758/raw"))()
end)
v9:CreateButton("Kill All (Manual)", function()
	local v423 = game.Players.LocalPlayer
	local v424, v425, v426 = pairs(game.Players:GetChildren())
	local v427 = false
	local v428 = 2
	while true do
		local v429
		v426, v429 = v424(v425, v426)
		if v426 == nil then
			break
		end
		if v427 then
			if v429.Character:FindFirstChild("HumanoidRootPart") and v429.Team.Name ~= v423.Team.Name then
				v428 = v428 + 2
				v429.Character.Head.Anchored = true
				v429.Character.Head.Position = v423.Character.HumanoidRootPart.Position + v423.Character.HumanoidRootPart.CFrame.LookVector * v428
			end
		elseif v429.Character:FindFirstChild("HumanoidRootPart") and v429.Name ~= v423.Name then
			v428 = v428 + 2
			v429.Character.Head.Anchored = true
			v429.Character.Head.Position = v423.Character.HumanoidRootPart.Position + v423.Character.HumanoidRootPart.CFrame.LookVector * v428
		end
	end
end)
v10:CreateButton("Infinite Yield", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
v10:CreateButton("Pedroxz Menu V1", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/GameLeaks2/RobloxScripts/main/CrashServer", true))()
end)
v10:CreateButton("Pedroxz Menu V2.0.1", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Pedroxz63/PedroxzMenuV2xzzz/refs/heads/main/README.md"))()
end)

v12:CreateButton("Fly", function()
	local v443 = Instance.new("ScreenGui")
	local v444 = Instance.new("Frame")
	local v445 = Instance.new("TextButton")
	local v446 = Instance.new("TextButton")
	local v447 = Instance.new("TextButton")
	local v448 = Instance.new("TextLabel")
	local v449 = Instance.new("TextButton")
	local v_u_450 = Instance.new("TextLabel")
	local v451 = Instance.new("TextButton")
	v443.Name = "main"
	v443.Parent = game.CoreGui
	v443.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	v444.Parent = v443
	v444.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
	v444.BorderColor3 = Color3.fromRGB(103, 221, 213)
	v444.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
	v444.Size = UDim2.new(0, 190, 0, 57)
	v445.Name = "up"
	v445.Parent = v444
	v445.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
	v445.Size = UDim2.new(0, 44, 0, 28)
	v445.Font = Enum.Font.SourceSans
	v445.Text = "UP"
	v445.TextColor3 = Color3.fromRGB(0, 0, 0)
	v445.TextSize = 14
	v446.Name = "down"
	v446.Parent = v444
	v446.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
	v446.Position = UDim2.new(0, 0, 0.491228074, 0)
	v446.Size = UDim2.new(0, 44, 0, 28)
	v446.Font = Enum.Font.SourceSans
	v446.Text = "DOWN"
	v446.TextColor3 = Color3.fromRGB(0, 0, 0)
	v446.TextSize = 14
	v447.Name = "onof"
	v447.Parent = v444
	v447.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
	v447.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
	v447.Size = UDim2.new(0, 56, 0, 28)
	v447.Font = Enum.Font.SourceSans
	v447.Text = "fly"
	v447.TextColor3 = Color3.fromRGB(0, 0, 0)
	v447.TextSize = 14
	v448.Parent = v444
	v448.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
	v448.Position = UDim2.new(0.469327301, 0, 0, 0)
	v448.Size = UDim2.new(0, 100, 0, 28)
	v448.Font = Enum.Font.SourceSans
	v448.Text = "gui by me_ozoneYT"
	v448.TextColor3 = Color3.fromRGB(0, 0, 0)
	v448.TextScaled = true
	v448.TextSize = 14
	v448.TextWrapped = true
	v449.Name = "plus"
	v449.Parent = v444
	v449.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
	v449.Position = UDim2.new(0.231578946, 0, 0, 0)
	v449.Size = UDim2.new(0, 45, 0, 28)
	v449.Font = Enum.Font.SourceSans
	v449.Text = "+"
	v449.TextColor3 = Color3.fromRGB(0, 0, 0)
	v449.TextScaled = true
	v449.TextSize = 14
	v449.TextWrapped = true
	v_u_450.Name = "speed"
	v_u_450.Parent = v444
	v_u_450.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
	v_u_450.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
	v_u_450.Size = UDim2.new(0, 44, 0, 28)
	v_u_450.Font = Enum.Font.SourceSans
	v_u_450.Text = "1"
	v_u_450.TextColor3 = Color3.fromRGB(0, 0, 0)
	v_u_450.TextScaled = true
	v_u_450.TextSize = 14
	v_u_450.TextWrapped = true
	v451.Name = "mine"
	v451.Parent = v444
	v451.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
	v451.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
	v451.Size = UDim2.new(0, 45, 0, 29)
	v451.Font = Enum.Font.SourceSans
	v451.Text = "-"
	v451.TextColor3 = Color3.fromRGB(0, 0, 0)
	v451.TextScaled = true
	v451.TextSize = 14
	v451.TextWrapped = true
	speeds = 1
	local v_u_452 = game:GetService("Players").LocalPlayer
	local v453 = game.Players.LocalPlayer.Character
	if v453 then
		v453:FindFirstChildWhichIsA("Humanoid")
	end
	nowe = false
	game:GetService("StarterGui"):SetCore("SendNotification", {
		["Title"] = "GO SUB TO HIM",
		["Text"] = "fly gui by me_ozoneYT",
		["Icon"] = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"
	})
	Duration = 16
	v444.Active = true
	v444.Draggable = true
	v447.MouseButton1Down:connect(function()
		-- upvalues: (ref) v_u_452
		if nowe ~= true then
			nowe = true
			for _ = 1, speeds do
				spawn(function()
					local v454 = game:GetService("RunService").Heartbeat
					tpwalking = true
					local v455 = game.Players.LocalPlayer.Character
					local v456
					if v455 then
						v456 = v455:FindFirstChildWhichIsA("Humanoid")
					else
						v456 = v455
					end
					while tpwalking and (v454:Wait() and (v455 and (v456 and v456.Parent))) do
						if v456.MoveDirection.Magnitude > 0 then
							v455:TranslateBy(v456.MoveDirection)
						end
					end
				end)
			end
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			local v457 = game.Players.LocalPlayer.Character
			local v458 = v457:FindFirstChildOfClass("Humanoid") or v457:FindFirstChildOfClass("AnimationController")
			local v459 = next
			local v460, v461 = v458:GetPlayingAnimationTracks()
			while true do
				local v462
				v461, v462 = v459(v460, v461)
				if v461 == nil then
					break
				end
				v462:AdjustSpeed(0)
			end
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
			v_u_452.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
		else
			nowe = false
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)
			v_u_452.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
			v_u_452.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
		end
		if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType ~= Enum.HumanoidRigType.R6 then
			local v463 = game.Players.LocalPlayer
			local v464 = v463.Character.UpperTorso
			local v465 = {
				["f"] = 0,
				["b"] = 0,
				["l"] = 0,
				["r"] = 0
			}
			local v466 = {
				["f"] = 0,
				["b"] = 0,
				["l"] = 0,
				["r"] = 0
			}
			local v467 = 50
			local v468 = 0
			local v469 = Instance.new("BodyGyro", v464)
			v469.P = 90000
			v469.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
			v469.cframe = v464.CFrame
			local v470 = Instance.new("BodyVelocity", v464)
			v470.velocity = Vector3.new(0, 0.1, 0)
			v470.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
			if nowe == true then
				v463.Character.Humanoid.PlatformStand = true
			end
			while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
				wait()
				if v465.l + v465.r ~= 0 or v465.f + v465.b ~= 0 then
					v468 = v468 + 0.5 + v468 / v467
					if v467 < v468 then
						v468 = v467
					end
				elseif v465.l + v465.r == 0 and (v465.f + v465.b == 0 and v468 ~= 0) then
					local v471 = v468 - 1
					v468 = v471 < 0 and 0 or v471
				end
				if v465.l + v465.r ~= 0 or v465.f + v465.b ~= 0 then
					v470.velocity = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (v465.f + v465.b) + (game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(v465.l + v465.r, (v465.f + v465.b) * 0.2, 0).p - game.Workspace.CurrentCamera.CoordinateFrame.p)) * v468
					v466 = {
						["f"] = v465.f,
						["b"] = v465.b,
						["l"] = v465.l,
						["r"] = v465.r
					}
				elseif v465.l + v465.r ~= 0 or (v465.f + v465.b ~= 0 or v468 == 0) then
					v470.velocity = Vector3.new(0, 0, 0)
				else
					v470.velocity = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (v466.f + v466.b) + (game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(v466.l + v466.r, (v466.f + v466.b) * 0.2, 0).p - game.Workspace.CurrentCamera.CoordinateFrame.p)) * v468
				end
				v469.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((v465.f + v465.b) * 50 * v468 / v467), 0, 0)
			end
			v469:Destroy()
			v470:Destroy()
			v463.Character.Humanoid.PlatformStand = false
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			tpwalking = false
		else
			local v472 = game.Players.LocalPlayer
			local v473 = v472.Character.Torso
			local v474 = {
				["f"] = 0,
				["b"] = 0,
				["l"] = 0,
				["r"] = 0
			}
			local v475 = {
				["f"] = 0,
				["b"] = 0,
				["l"] = 0,
				["r"] = 0
			}
			local v476 = 50
			local v477 = 0
			local v478 = Instance.new("BodyGyro", v473)
			v478.P = 90000
			v478.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
			v478.cframe = v473.CFrame
			local v479 = Instance.new("BodyVelocity", v473)
			v479.velocity = Vector3.new(0, 0.1, 0)
			v479.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
			if nowe == true then
				v472.Character.Humanoid.PlatformStand = true
			end
			while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
				game:GetService("RunService").RenderStepped:Wait()
				if v474.l + v474.r ~= 0 or v474.f + v474.b ~= 0 then
					v477 = v477 + 0.5 + v477 / v476
					if v476 < v477 then
						v477 = v476
					end
				elseif v474.l + v474.r == 0 and (v474.f + v474.b == 0 and v477 ~= 0) then
					local v480 = v477 - 1
					v477 = v480 < 0 and 0 or v480
				end
				if v474.l + v474.r ~= 0 or v474.f + v474.b ~= 0 then
					v479.velocity = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (v474.f + v474.b) + (game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(v474.l + v474.r, (v474.f + v474.b) * 0.2, 0).p - game.Workspace.CurrentCamera.CoordinateFrame.p)) * v477
					v475 = {
						["f"] = v474.f,
						["b"] = v474.b,
						["l"] = v474.l,
						["r"] = v474.r
					}
				elseif v474.l + v474.r ~= 0 or (v474.f + v474.b ~= 0 or v477 == 0) then
					v479.velocity = Vector3.new(0, 0, 0)
				else
					v479.velocity = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (v475.f + v475.b) + (game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(v475.l + v475.r, (v475.f + v475.b) * 0.2, 0).p - game.Workspace.CurrentCamera.CoordinateFrame.p)) * v477
				end
				v478.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((v474.f + v474.b) * 50 * v477 / v476), 0, 0)
			end
			v478:Destroy()
			v479:Destroy()
			v472.Character.Humanoid.PlatformStand = false
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			tpwalking = false
		end
	end)
	v445.MouseButton1Down:connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 2, 0)
	end)
	v446.MouseButton1Down:connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -2, 0)
	end)
	game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(_)
		wait(0.7)
		game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
	end)
	v449.MouseButton1Down:connect(function()
		-- upvalues: (ref) v_u_450
		speeds = speeds + 1
		v_u_450.Text = speeds
		if nowe == true then
			tpwalking = false
			for _ = 1, speeds do
				spawn(function()
					local v481 = game:GetService("RunService").Heartbeat
					tpwalking = true
					local v482 = game.Players.LocalPlayer.Character
					local v483
					if v482 then
						v483 = v482:FindFirstChildWhichIsA("Humanoid")
					else
						v483 = v482
					end
					while tpwalking and (v481:Wait() and (v482 and (v483 and v483.Parent))) do
						if v483.MoveDirection.Magnitude > 0 then
							v482:TranslateBy(v483.MoveDirection)
						end
					end
				end)
			end
		end
	end)
	v451.MouseButton1Down:connect(function()
		-- upvalues: (ref) v_u_450
		if speeds ~= 1 then
			speeds = speeds - 1
			v_u_450.Text = speeds
			if nowe == true then
				tpwalking = false
				for _ = 1, speeds do
					spawn(function()
						local v484 = game:GetService("RunService").Heartbeat
						tpwalking = true
						local v485 = game.Players.LocalPlayer.Character
						local v486
						if v485 then
							v486 = v485:FindFirstChildWhichIsA("Humanoid")
						else
							v486 = v485
						end
						while tpwalking and (v484:Wait() and (v485 and (v486 and v486.Parent))) do
							if v486.MoveDirection.Magnitude > 0 then
								v485:TranslateBy(v486.MoveDirection)
							end
						end
					end)
				end
			end
		else
			v_u_450.Text = "can not be less than 1"
			wait(1)
			v_u_450.Text = speeds
		end
	end)
end)
v12:CreateButton("AutoRevistar KeyBind Z", function()
	local v_u_487 = game.Players.LocalPlayer:GetMouse()
	game.UserInputService.InputBegan:Connect(function(p488)
		-- upvalues: (ref) v_u_487
		if p488.KeyCode == Enum.KeyCode.Z then
			if v_u_487.Target.Name == "HumanoidRootPart" or (v_u_487.Target.Name == "Torso" or (v_u_487.Target.Name == "Right Leg" or (v_u_487.Target.Name == "Right Arm" or (v_u_487.Target.Name == "Left Leg" or (v_u_487.Target.Name == "Left Arm" or v_u_487.Target.Name == "Head"))))) then
				game:GetService("TextChatService").ChatInputBarConfiguration.TargetTextChannel:SendAsync("/revistar")
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v_u_487.Target.CFrame
				local v489 = game:GetService("RunService").Stepped:Connect(function()
					game:GetService("ReplicatedStorage").Modules.InvRemotes.InvRequest:InvokeServer("mudaInv", "2", "Uzi", "1")
					game:GetService("ReplicatedStorage").Modules.InvRemotes.InvRequest:InvokeServer("mudaInv", "2", "AK47", "1")
					game:GetService("ReplicatedStorage").Modules.InvRemotes.InvRequest:InvokeServer("mudaInv", "2", "G3", "1")
					game:GetService("ReplicatedStorage").Modules.InvRemotes.InvRequest:InvokeServer("mudaInv", "2", "IA2", "1")
					game:GetService("ReplicatedStorage").Modules.InvRemotes.InvRequest:InvokeServer("mudaInv", "2", "AR-15", "1")
					game:GetService("ReplicatedStorage").Modules.InvRemotes.InvRequest:InvokeServer("mudaInv", "2", "Escudo", "1")
					game:GetService("ReplicatedStorage").Modules.InvRemotes.InvRequest:InvokeServer("mudaInv", "2", "Glock 17", "1")
					game:GetService("ReplicatedStorage").Modules.InvRemotes.InvRequest:InvokeServer("mudaInv", "2", "PARAFAL", "1")
					game:GetService("ReplicatedStorage").Modules.InvRemotes.InvRequest:InvokeServer("mudaInv", "2", "Natalina", "1")
				end)
				task.wait(1)
				v489:Disconnect()
			else
				print("Nada")
			end
		end
	end)
end)
v12:CreateButton("Aimbot AutoRevistar", function()
	local v490 = Instance.new("ScreenGui")
	local v_u_491 = Instance.new("Frame")
	local v492 = Instance.new("Frame")
	local v493 = Instance.new("TextLabel")
	local v_u_494 = Instance.new("TextButton")
	local v_u_495 = Instance.new("TextButton")
	local v496 = Instance.new("TextLabel")
	v490.Parent = game.CoreGui
	v490.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	v_u_491.Parent = v490
	v_u_491.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	v_u_491.BorderColor3 = Color3.fromRGB(16, 16, 16)
	v_u_491.Position = UDim2.new(0.326547235, 0, 0.442340851, 0)
	v_u_491.Size = UDim2.new(0.346905529, 0, 0.194492236, 0)
	v492.Parent = v_u_491
	v492.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	v492.BorderColor3 = Color3.fromRGB(16, 16, 16)
	v492.Size = UDim2.new(1, 0, 0.26777932, 0)
	v493.Parent = v492
	v493.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v493.BackgroundTransparency = 1
	v493.Size = UDim2.new(1.00234735, 0, 1.08253634, 0)
	v493.Font = Enum.Font.SourceSansSemibold
	v493.Text = "Arceus | Aimbot"
	v493.TextColor3 = Color3.fromRGB(255, 255, 255)
	v493.TextSize = 16
	v_u_494.Parent = v492
	v_u_494.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v_u_494.BackgroundTransparency = 1
	v_u_494.Position = UDim2.new(0.92957741, 0, 0, 0)
	v_u_494.Size = UDim2.new(0.0697798356, 0, 0.991438508, 0)
	v_u_494.Font = Enum.Font.SourceSansSemibold
	v_u_494.Text = "_"
	v_u_494.TextColor3 = Color3.fromRGB(255, 255, 255)
	v_u_494.TextSize = 14
	v_u_495.Parent = v_u_491
	v_u_495.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	v_u_495.BorderColor3 = Color3.fromRGB(20, 20, 20)
	v_u_495.Position = UDim2.new(0.0492957756, 0, 0.495575249, 0)
	v_u_495.Size = UDim2.new(0.0469483584, 0, 0.176991165, 0)
	v_u_495.Font = Enum.Font.SourceSansSemibold
	v_u_495.Text = ""
	v_u_495.TextColor3 = Color3.fromRGB(255, 255, 255)
	v_u_495.TextScaled = true
	v_u_495.TextSize = 20
	v_u_495.TextWrapped = true
	v496.Parent = v_u_495
	v496.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v496.BackgroundTransparency = 1
	v496.Position = UDim2.new(1.54999995, 0, 0, 0)
	v496.Size = UDim2.new(17.7999992, 0, 1, 0)
	v496.Font = Enum.Font.SourceSansSemibold
	v496.Text = "Aimbot"
	v496.TextColor3 = Color3.fromRGB(255, 255, 255)
	v496.TextSize = 16
	v496.TextWrapped = true
	v496.TextXAlignment = Enum.TextXAlignment.Left
	local function v508()
		-- upvalues: (ref) v_u_494
		local v_u_497 = Instance.new("LocalScript", v_u_494)
		local v_u_498 = true
		v_u_497.Parent.MouseButton1Down:Connect(function()
			-- upvalues: (ref) v_u_498, (ref) v_u_497
			print("t")
			v_u_498 = not v_u_498
			local v499 = v_u_497.Parent.Parent.AbsoluteSize
			UDim2.new(0, v499.X, 0, v499.Y)
			if v_u_498 then
				v_u_497.Parent.Text = "_"
				game:GetService("TweenService"):Create(v_u_497.Parent.Parent.Parent, TweenInfo.new(0.5, Enum.EasingStyle.Linear), {
					["BackgroundTransparency"] = 0
				}):Play()
				local v500, v501, v502 = pairs(v_u_497.Parent.Parent.Parent:GetChildren())
				while true do
					local v503
					v502, v503 = v500(v501, v502)
					if v502 == nil then
						break
					end
					if v503:IsA("TextButton") then
						v503.Visible = true
						v503.TextLabel.Visible = true
					end
				end
			else
				v_u_497.Parent.Text = "+"
				game:GetService("TweenService"):Create(v_u_497.Parent.Parent.Parent, TweenInfo.new(0.5, Enum.EasingStyle.Linear), {
					["BackgroundTransparency"] = 1
				}):Play()
				local v504, v505, v506 = pairs(v_u_497.Parent.Parent.Parent:GetChildren())
				while true do
					local v507
					v506, v507 = v504(v505, v506)
					if v506 == nil then
						break
					end
					if v507:IsA("TextButton") then
						v507.Visible = false
						v507.TextLabel.Visible = false
					end
				end
			end
		end)
	end
	coroutine.wrap(v508)()
	local function v526()
		-- upvalues: (ref) v_u_495
		local v_u_509 = Instance.new("LocalScript", v_u_495)
		local v_u_510 = false
		v_u_509.Parent.MouseButton1Down:Connect(function()
			-- upvalues: (ref) v_u_510, (ref) v_u_509
			v_u_510 = not v_u_510
			if v_u_510 then
				v_u_509.Parent.Text = "x"
			else
				v_u_509.Parent.Text = ""
			end
		end)
		local v_u_511 = workspace.CurrentCamera
		local v_u_512 = true
		function lookAt(p513, p514)
			-- upvalues: (ref) v_u_511
			v_u_511.CFrame = CFrame.new(p513, p514)
		end
		function getClosestPlayerToCursor(p515)
			-- upvalues: (ref) v_u_512
			local v516 = math.huge
			local v517, v518, v519 = pairs(game.Players:GetPlayers())
			local v520 = nil
			while true do
				local v521
				v519, v521 = v517(v518, v519)
				if v519 == nil then
					break
				end
				if v521 ~= game.Players.LocalPlayer and (game.Players.LocalPlayer.Character and v521.Character) and (v521.Character:FindFirstChild(p515) and game.Players.LocalPlayer.Character:FindFirstChild(p515)) then
					local v522, v523 = workspace.CurrentCamera:WorldToViewportPoint(v521.Character[p515].Position)
					local v524 = (Vector2.new(v522.x, v522.y) - Vector2.new(workspace.CurrentCamera.ViewportSize.x / 2, workspace.CurrentCamera.ViewportSize.y / 2)).magnitude
					if v524 < v516 and (v523 and v_u_512) then
						if v524 < 400 then
							v520 = v521
							v516 = v524
						end
					end
				end
			end
			return v520
		end
		game:GetService("RunService").RenderStepped:Connect(function()
			-- upvalues: (ref) v_u_510, (ref) v_u_511
			local v525 = getClosestPlayerToCursor("Head")
			if v_u_510 and v525 and v525.Character:FindFirstChild("Head") then
				lookAt(v_u_511.CFrame.p, v525.Character:FindFirstChild("Head").Position)
			end
		end)
	end
	coroutine.wrap(v526)()
	local function v528()
		-- upvalues: (ref) v_u_491
		local v527 = Instance.new("LocalScript", v_u_491)
		v527.Parent.Active = true
		v527.Parent.Selectable = true
		v527.Parent.Draggable = true
	end
	coroutine.wrap(v528)()
end)
v12:CreateButton("Aimbot DeleteMob V1", function()
	loadstring(game:HttpGet("https://paste.ee/r/HtyW6"))()
end)
v12:CreateButton("Tirar Dano De Queda", function()
	game.Players.LocalPlayer.Character.DanoQueda.Disabled = true
end)
v12:CreateButton("AutoCL", function()
	game:GetService("RunService").Stepped:Connect(function()
		if game.Players.LocalPlayer.Character.Humanoid.Health < 20 then
			game.Players.LocalPlayer:Kick("AutoCL")
		end
	end)
end)
v12:CreateButton("AutoCL Rapido", function()
	game:GetService("RunService").Stepped:Connect(function()
		if game.Players.LocalPlayer.Character.Humanoid.Health < 70 then
			game.Players.LocalPlayer:Kick("AutoCL")
		end
	end)
end)
v12:CreateDropdown("Empregos", {
	["List"] = {
		"Civil",
		"Gari",
		"Mecanico",
		"Entregador de gas",
		"Pescador",
		"Fazendeiro",
		"Minerador"
	},
	["Default"] = "Nenhum"
}, function(p529)
	if p529 == "Civil" then
		game:GetService("ReplicatedStorage"):WaitForChild("RemoteNovos"):WaitForChild("mercadinmote"):FireServer("trabalhosTimes", { "Civil" })
	elseif p529 == "Gari" then
		game:GetService("ReplicatedStorage"):WaitForChild("RemoteNovos"):WaitForChild("mercadinmote"):FireServer("trabalhosTimes", { "Gari" })
	elseif p529 == "Mecanico" then
		game:GetService("ReplicatedStorage"):WaitForChild("RemoteNovos"):WaitForChild("mercadinmote"):FireServer("trabalhosTimes", { "Mecanico" })
	elseif p529 == "Entregador de gas" then
		game:GetService("ReplicatedStorage"):WaitForChild("RemoteNovos"):WaitForChild("mercadinmote"):FireServer("trabalhosTimes", { "Entregador de G\195\161s" })
	elseif p529 == "Pescador" then
		game:GetService("ReplicatedStorage"):WaitForChild("RemoteNovos"):WaitForChild("mercadinmote"):FireServer("trabalhosTimes", { "Pescador" })
	elseif p529 == "Fazendeiro" then
		game:GetService("ReplicatedStorage"):WaitForChild("RemoteNovos"):WaitForChild("mercadinmote"):FireServer("trabalhosTimes", { "Fazendeiro" })
	elseif p529 == "Minerador" then
		game:GetService("ReplicatedStorage"):WaitForChild("RemoteNovos"):WaitForChild("mercadinmote"):FireServer("trabalhosTimes", { "Minerador" })
	end
end)
v12:CreateButton("AutoFarm Gari", function()
	-- upvalues: (ref) v_u_4
	if v_u_4 then
		game.StarterGui:SetCore("SendNotification", {
			["Title"] = "AutoFarm Gari",
			["Text"] = "Desativado",
			["Duration"] = 5
		})
		v_u_4 = false
	else
		v_u_4 = true
		game.StarterGui:SetCore("SendNotification", {
			["Title"] = "AutoFarm Gari",
			["Text"] = "Ativado",
			["Duration"] = 5
		})
		while v_u_4 do
			local v530, v531, v532 = pairs(game.Workspace.MapaGeral.Gari.Lixos:GetChildren())
			while true do
				local v533
				v532, v533 = v530(v531, v532)
				if v532 == nil then
					break
				end
				if v533.Name == "LEXOS" and v533:IsA("Part") then
					game.Players.LocalPlayer.Character["Right Leg"].CFrame = v533.CFrame
					task.wait(0.2)
					fireproximityprompt(v533.ProximityPrompt)
					task.wait(2.9)
				end
			end
			task.wait(0.1)
		end
	end
end)
v12:CreateButton("Destrancar Carros", function()
	local v534, v535, v536 = pairs(game.Workspace.MapaGeral.Estacionamentox:GetDescendants())
	while true do
		local v_u_537
		v536, v_u_537 = v534(v535, v536)
		if v536 == nil then
			break
		end
		if v_u_537:IsA("ProximityPrompt") and v_u_537.Name == "DrivePrompt" then
			v_u_537.Triggered:Connect(function()
				-- upvalues: (ref) v_u_537
				v_u_537.Parent.Parent:Sit(game.Players.LocalPlayer.Character.Humanoid)
			end)
		end
	end
end)
task.wait()
if game:GetService("UserInputService").TouchEnabled then
	game.CoreGui.PedroxzMenu.Container.Active = true
	game.CoreGui.PedroxzMenu.Container.Draggable = true
	local v538 = Instance.new("ImageButton")
	local v539 = Instance.new("UICorner")
	v538.Parent = game.CoreGui.PedroxzMenu
	v538.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v538.BorderColor3 = Color3.fromRGB(0, 0, 0)
	v538.BorderSizePixel = 0
	v538.Position = UDim2.new(0.477477491, 0, 0.14973262, 0)
	v538.Size = UDim2.new(0, 30, 0, 30)
	v538.Image = "rbxassetid://87961549680889"
	v538.MouseButton1Click:Connect(function()
		-- upvalues: (ref) v_u_3
		if v_u_3 then
			game.CoreGui.PedroxzMenu.Container.Visible = false
			v_u_3 = false
		else
			game.CoreGui.PedroxzMenu.Container.Visible = true
			v_u_3 = true
		end
	end)
	v539.CornerRadius = UDim.new(0.899999976, 0)
	v539.Parent = v538
else
	game.UserInputService.InputBegan:Connect(function(p540)
		-- upvalues: (ref) v_u_3
		if p540.KeyCode == Enum.KeyCode.Three then
			if v_u_3 then
				game.CoreGui.PedroxzMenu.Container.Visible = false
				v_u_3 = false
			else
				game.CoreGui.PedroxzMenu.Container.Visible = true
				v_u_3 = true
			end
		end
	end)
end
