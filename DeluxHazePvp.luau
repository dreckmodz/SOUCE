local v_u_1 = game:GetService("Players")
local v2 = game:GetService("RunService")
local v_u_3 = game:GetService("UserInputService")
local v_u_4 = v_u_1.LocalPlayer
local v5 = v_u_4:WaitForChild("PlayerGui")
local v_u_6 = workspace.CurrentCamera
local v7 = v5:FindFirstChild("CustomUI")
if v7 then
	v7:Destroy()
end
local v8 = Instance.new("ScreenGui")
v8.Name = "CustomUI"
v8.ResetOnSpawn = false
v8.Parent = v5
local v_u_9 = Instance.new("Frame")
v_u_9.Name = "LoginFrame"
v_u_9.Size = UDim2.new(0, 300, 0, 180)
v_u_9.Position = UDim2.new(0.5, -150, 0.5, -90)
v_u_9.BackgroundColor3 = Color3.fromHex("#101010")
v_u_9.ClipsDescendants = true
v_u_9.Parent = v8
local v10 = Instance.new("UICorner")
v10.CornerRadius = UDim.new(0, 10)
v10.Parent = v_u_9
local v11 = Instance.new("Frame")
v11.Name = "Head"
v11.Size = UDim2.new(1, 0, 0, 35)
v11.Position = UDim2.new(0, 0, 0, 0)
v11.BackgroundColor3 = Color3.fromHex("#1f1f1f")
v11.Parent = v_u_9
local v12 = Instance.new("UICorner")
v12.CornerRadius = UDim.new(0, 10)
v12.Parent = v11
local v13 = Instance.new("TextLabel")
v13.Parent = v11
v13.Size = UDim2.new(1, -10, 1, 0)
v13.Position = UDim2.new(0, 10, 0, 0)
v13.BackgroundTransparency = 1
v13.Text = "DELUX | LOGIN"
v13.TextColor3 = Color3.fromHex("#FFFFFF")
v13.TextSize = 18
v13.Font = Enum.Font.GothamBold
v13.TextXAlignment = Enum.TextXAlignment.Left
v13.TextYAlignment = Enum.TextYAlignment.Center
local v_u_14 = Instance.new("TextBox")
v_u_14.Size = UDim2.new(1, -20, 0, 35)
v_u_14.Position = UDim2.new(0, 10, 0, 60)
v_u_14.BackgroundColor3 = Color3.fromHex("#1f1f1f")
v_u_14.TextColor3 = Color3.fromHex("#FFFFFF")
v_u_14.Text = ""
v_u_14.PlaceholderText = "Digite sua Key"
v_u_14.Font = Enum.Font.Gotham
v_u_14.TextSize = 18
v_u_14.ClearTextOnFocus = true
v_u_14.Parent = v_u_9
local v15 = Instance.new("UICorner")
v15.CornerRadius = UDim.new(0, 6)
v15.Parent = v_u_14
local v16 = Instance.new("TextButton")
v16.Size = UDim2.new(1, -20, 0, 35)
v16.Position = UDim2.new(0, 10, 0, 110)
v16.BackgroundColor3 = Color3.fromHex("#1f1f1f")
v16.BorderSizePixel = 0
v16.Text = "Entrar"
v16.TextColor3 = Color3.fromHex("#FFFFFF")
v16.Font = Enum.Font.GothamBold
v16.TextSize = 18
v16.Parent = v_u_9
local v17 = Instance.new("UICorner")
v17.CornerRadius = UDim.new(0, 6)
v17.Parent = v16
local v_u_18 = "FREE-BETAV1"
local v_u_19 = Instance.new("Frame")
v_u_19.Size = UDim2.new(0, 220, 0, 240)
v_u_19.Position = UDim2.new(0.5, -110, 0.5, -150)
v_u_19.BackgroundColor3 = Color3.fromHex("#101010")
v_u_19.ClipsDescendants = true
v_u_19.Visible = false
v_u_19.Parent = v8
local v20 = Instance.new("UICorner")
v20.CornerRadius = UDim.new(0, 10)
v20.Parent = v_u_19
local v21 = Instance.new("Frame")
v21.Size = UDim2.new(1, 0, 0, 35)
v21.BackgroundColor3 = Color3.fromHex("#1f1f1f")
v21.Parent = v_u_19
local v22 = Instance.new("UICorner")
v22.CornerRadius = UDim.new(0, 10)
v22.Parent = v21
local v23 = Instance.new("TextLabel")
v23.Parent = v21
v23.Size = UDim2.new(0.7, -5, 1, 0)
v23.Position = UDim2.new(0, 30, 0, 0)
v23.BackgroundTransparency = 1
v23.Text = "DELUX | HAZE PVP"
v23.TextColor3 = Color3.fromHex("#FFFFFF")
v23.TextSize = 15
v23.Font = Enum.Font.GothamBold
v23.TextXAlignment = Enum.TextXAlignment.Left
v23.TextYAlignment = Enum.TextYAlignment.Center
local v24 = Instance.new("ImageButton")
v24.Parent = v21
v24.Size = UDim2.new(0, 23, 0, 23)
v24.Position = UDim2.new(1, -28, 0.5, -11)
v24.BackgroundTransparency = 1
v24.Image = "rbxassetid://71129528045728"
v24.ScaleType = Enum.ScaleType.Fit
local v25 = Instance.new("Frame")
v25.Parent = v_u_19
v25.Size = UDim2.new(1, -20, 0, 200)
v25.Position = UDim2.new(0, 10, 0, 40)
v25.BackgroundTransparency = 1
local v26 = Instance.new("UIListLayout")
v26.Parent = v25
v26.Padding = UDim.new(0, 10)
v26.SortOrder = Enum.SortOrder.LayoutOrder
local function v40(p27, p28, p29, p_u_30)
	local v31 = Instance.new("Frame")
	v31.Size = UDim2.new(1, 0, 0, 30)
	v31.BackgroundTransparency = 1
	v31.Parent = p27
	local v32 = Instance.new("Frame")
	v32.Size = UDim2.new(0, 30, 0, 30)
	v32.BackgroundColor3 = Color3.fromHex("#1f1f1f")
	v32.BorderSizePixel = 0
	v32.Parent = v31
	local v33 = Instance.new("UICorner")
	v33.CornerRadius = UDim.new(0, 6)
	v33.Parent = v32
	local v_u_34 = Instance.new("ImageLabel")
	v_u_34.Size = UDim2.new(0, 22, 0, 22)
	v_u_34.Position = UDim2.new(0.5, 0, 0.5, 0)
	v_u_34.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_34.BackgroundTransparency = 1
	v_u_34.Image = "rbxassetid://92033106542824"
	v_u_34.Visible = p29
	v_u_34.Parent = v32
	local v35 = Instance.new("TextButton")
	v35.Size = UDim2.new(1, 0, 1, 0)
	v35.BackgroundTransparency = 1
	v35.Text = ""
	v35.Parent = v32
	local v36 = Instance.new("TextLabel")
	v36.Size = UDim2.new(1, -40, 1, 0)
	v36.Position = UDim2.new(0, 40, 0, 0)
	v36.BackgroundTransparency = 1
	v36.Text = p28
	v36.TextColor3 = Color3.fromRGB(255, 255, 255)
	v36.Font = Enum.Font.SourceSans
	v36.TextSize = 20
	v36.TextXAlignment = Enum.TextXAlignment.Left
	v36.Parent = v31
	local v_u_37 = p29
	local function v_u_38()
		-- upvalues: (ref) v_u_34, (ref) v_u_37, (ref) p_u_30
		v_u_34.Visible = v_u_37
		if p_u_30 then
			p_u_30(v_u_37)
		end
	end
	v35.MouseButton1Click:Connect(function()
		-- upvalues: (ref) v_u_37, (ref) v_u_38
		v_u_37 = not v_u_37
		v_u_38()
	end)
	return {
		["Container"] = v31,
		["Get"] = function()
			-- upvalues: (ref) v_u_37
			return v_u_37
		end,
		["Set"] = function(p39)
			-- upvalues: (ref) v_u_37, (ref) v_u_38
			v_u_37 = p39
			v_u_38()
		end
	}
end
local v_u_41 = nil
local v_u_42 = nil
local function v_u_46(p43)
	-- upvalues: (ref) v_u_4, (ref) v_u_41, (ref) v_u_42
	if p43 ~= v_u_4 and p43.Character then
		local v44 = p43.Character:FindFirstChild("Cabesa")
		if v44 then
			if v_u_41:Get() then
				if not v44:GetAttribute("OriginalSize") then
					v44:SetAttribute("OriginalSize", v44.Size)
				end
				local v45 = v_u_42
				v44.Size = v44:GetAttribute("OriginalSize") * v45:GetValue()
				v44.CanCollide = true
			elseif v44:GetAttribute("OriginalSize") then
				v44.Size = v44:GetAttribute("OriginalSize")
			end
		end
	end
end
local v_u_47 = false
local v_u_48 = {}
local v_u_49 = {}
local function v_u_51()
	local v50 = Drawing.new("Square")
	v50.Thickness = 1
	v50.Color = Color3.fromRGB(0, 255, 0)
	v50.Filled = false
	v50.Visible = false
	return v50
end
local function v_u_53()
	local v52 = Drawing.new("Line")
	v52.Thickness = 1
	v52.Color = Color3.fromRGB(0, 255, 0)
	v52.Visible = false
	return v52
end
local function v_u_57(p54)
	-- upvalues: (ref) v_u_6
	local v55, v56 = v_u_6:WorldToViewportPoint(p54)
	return Vector2.new(v55.X, v55.Y), v56
end
local function v_u_71(p58)
	-- upvalues: (ref) v_u_57
	local v59, v60, v61 = ipairs(p58:GetChildren())
	local v62 = {}
	while true do
		local v63
		v61, v63 = v59(v60, v61)
		if v61 == nil then
			break
		end
		if v63:IsA("BasePart") then
			local v64 = {
				Vector3.new(1, 1, 1),
				Vector3.new(1, 1, -1),
				Vector3.new(1, -1, 1),
				Vector3.new(1, -1, -1),
				Vector3.new(-1, 1, 1),
				Vector3.new(-1, 1, -1),
				Vector3.new(-1, -1, 1),
				Vector3.new(-1, -1, -1)
			}
			local v65, v66, v67 = ipairs(v64)
			while true do
				local v68
				v67, v68 = v65(v66, v67)
				if v67 == nil then
					break
				end
				local v69, v70 = v_u_57((v63.CFrame:PointToWorldSpace(v68 * (v63.Size / 2))))
				if v70 then
					table.insert(v62, v69)
				end
			end
		end
	end
	return v62
end
v2.RenderStepped:Connect(function()
	-- upvalues: (ref) v_u_1, (ref) v_u_4, (ref) v_u_46, (ref) v_u_47, (ref) v_u_6, (ref) v_u_71, (ref) v_u_48, (ref) v_u_51, (ref) v_u_49, (ref) v_u_53
	local v72 = v_u_1
	local v73, v74, v75 = ipairs(v72:GetPlayers())
	while true do
		while true do
			local v76
			v75, v76 = v73(v74, v75)
			if v75 == nil then
				return
			end
			if v76 == v_u_4 or not v76.Character then
				break
			end
			v_u_46(v76)
			
			local v77 = v76.Character:FindFirstChild("HumanoidRootPart")
			if not v77 or (v_u_6.CFrame.Position - v77.Position).Magnitude > 150 then
				-- -- goto l5
			end
			local v78 = v_u_71(v76.Character)
			if #v78 < 1 then
				-- -- goto l5
			end
			local v79 = math.huge
			local v80 = math.huge
			local v81 = -math.huge
			local v82 = -math.huge
			local v83, v84, v85 = ipairs(v78)
			while true do
				local v86
				v85, v86 = v83(v84, v85)
				if v85 == nil then
					break
				end
				v79 = math.min(v79, v86.X)
				v80 = math.min(v80, v86.Y)
				v81 = math.max(v81, v86.X)
				v82 = math.max(v82, v86.Y)
			end
			local v87 = (v79 + v81) / 2
			local v88 = (v80 + v82) / 2
			if not v_u_48[v76] then
				v_u_48[v76] = v_u_51()
			end
			if not v_u_49[v76] then
				v_u_49[v76] = v_u_53()
			end
			local v89 = v_u_48[v76]
			local v90 = v_u_49[v76]
			v89.Position = Vector2.new(v79, v80)
			v89.Size = Vector2.new(v81 - v79, v82 - v80)
			v89.Visible = true
			v90.From = Vector2.new(v_u_6.ViewportSize.X / 2, 0)
			v90.To = Vector2.new(v87, v88)
			v90.Visible = true
		end
		
		if v_u_48[v76] then
			v_u_48[v76].Visible = false
		end
		if v_u_49[v76] then
			v_u_49[v76].Visible = false
		end
	end
end)
v_u_1.PlayerRemoving:Connect(function(p91)
	-- upvalues: (ref) v_u_48, (ref) v_u_49
	if v_u_48[p91] then
		v_u_48[p91]:Remove()
		v_u_48[p91] = nil
	end
	if v_u_49[p91] then
		v_u_49[p91]:Remove()
		v_u_49[p91] = nil
	end
end)
v_u_41 = v40(v25, "Big Head", false)
v_u_42 = (function(p92, p_u_93, p_u_94, p_u_95, p96, p_u_97)
	-- upvalues: (ref) v_u_3
	local v98 = Instance.new("Frame")
	v98.Size = UDim2.new(1, 0, 0, 50)
	v98.BackgroundTransparency = 1
	v98.Parent = p92
	local v_u_99 = Instance.new("TextLabel")
	v_u_99.Size = UDim2.new(1, 0, 0, 20)
	v_u_99.Position = UDim2.new(0, 0, 0, 0)
	v_u_99.BackgroundTransparency = 1
	v_u_99.Text = p_u_93 .. ": " .. p96
	v_u_99.TextColor3 = Color3.fromRGB(255, 255, 255)
	v_u_99.Font = Enum.Font.SourceSans
	v_u_99.TextSize = 18
	v_u_99.TextXAlignment = Enum.TextXAlignment.Left
	v_u_99.Parent = v98
	local v_u_100 = Instance.new("Frame")
	v_u_100.Size = UDim2.new(1, -20, 0, 8)
	v_u_100.Position = UDim2.new(0, 10, 0, 30)
	v_u_100.BackgroundColor3 = Color3.fromHex("#1f1f1f")
	v_u_100.BorderSizePixel = 0
	v_u_100.Parent = v98
	local v101 = Instance.new("UICorner")
	v101.CornerRadius = UDim.new(1, 0)
	v101.Parent = v_u_100
	local v_u_102 = Instance.new("Frame")
	v_u_102.Size = UDim2.new((p96 - p_u_94) / (p_u_95 - p_u_94), 0, 1, 0)
	v_u_102.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v_u_102.BorderSizePixel = 0
	v_u_102.Parent = v_u_100
	local v103 = Instance.new("UICorner")
	v103.CornerRadius = UDim.new(1, 0)
	v103.Parent = v_u_102
	local v_u_104 = Instance.new("TextButton")
	v_u_104.Size = UDim2.new(0, 16, 0, 16)
	v_u_104.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_104.Position = UDim2.new((p96 - p_u_94) / (p_u_95 - p_u_94), 0, 0.5, 0)
	v_u_104.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v_u_104.Text = ""
	v_u_104.AutoButtonColor = true
	v_u_104.Parent = v_u_100
	local v105 = Instance.new("UICorner")
	v105.CornerRadius = UDim.new(1, 0)
	v105.Parent = v_u_104
	local v_u_106 = false
	local v_u_107 = p96
	local function v_u_110(p108)
		-- upvalues: (ref) v_u_100, (ref) v_u_107, (ref) p_u_94, (ref) p_u_95, (ref) v_u_102, (ref) v_u_104, (ref) v_u_99, (ref) p_u_93, (ref) p_u_97
		local v109 = math.clamp((p108 - v_u_100.AbsolutePosition.X) / v_u_100.AbsoluteSize.X, 0, 1)
		v_u_107 = math.clamp(math.floor(p_u_94 + (p_u_95 - p_u_94) * v109 + 0.5), p_u_94, p_u_95)
		v_u_102.Size = UDim2.new((v_u_107 - p_u_94) / (p_u_95 - p_u_94), 0, 1, 0)
		v_u_104.Position = UDim2.new((v_u_107 - p_u_94) / (p_u_95 - p_u_94), 0, 0.5, 0)
		v_u_99.Text = p_u_93 .. ": " .. v_u_107
		if p_u_97 then
			p_u_97(v_u_107)
		end
	end
	v_u_104.MouseButton1Down:Connect(function()
		-- upvalues: (ref) v_u_106
		v_u_106 = true
	end)
	v_u_100.InputBegan:Connect(function(p111)
		-- upvalues: (ref) v_u_106, (ref) v_u_110
		if p111.UserInputType == Enum.UserInputType.MouseButton1 or p111.UserInputType == Enum.UserInputType.Touch then
			v_u_106 = true
			v_u_110(p111.Position.X)
		end
	end)
	v_u_3.InputChanged:Connect(function(p112)
		-- upvalues: (ref) v_u_106, (ref) v_u_110
		if v_u_106 and (p112.UserInputType == Enum.UserInputType.MouseMovement or p112.UserInputType == Enum.UserInputType.Touch) then
			v_u_110(p112.Position.X)
		end
	end)
	v_u_3.InputEnded:Connect(function(p113)
		-- upvalues: (ref) v_u_106
		if p113.UserInputType == Enum.UserInputType.MouseButton1 or p113.UserInputType == Enum.UserInputType.Touch then
			v_u_106 = false
		end
	end)
	return {
		["Container"] = v98,
		["GetValue"] = function()
			-- upvalues: (ref) v_u_107
			return v_u_107
		end
	}
end)(v25, "Head Config", 1, 6, 1)
v40(v25, "ESP Box", false, function(p114)
	-- upvalues: (ref) v_u_47
	v_u_47 = p114
end)
local function v116(p_u_115)
	-- upvalues: (ref) v_u_4, (ref) v_u_46
	if p_u_115 ~= v_u_4 then
		p_u_115.CharacterAdded:Connect(function(_)
			-- upvalues: (ref) v_u_46, (ref) p_u_115
			task.wait(0.5)
			v_u_46(p_u_115)
		end)
		if p_u_115.Character then
			v_u_46(p_u_115)
		end
	end
end
local v117, v118, v119 = ipairs(v_u_1:GetPlayers())
while true do
	local v120
	v119, v120 = v117(v118, v119)
	if v119 == nil then
		break
	end
	v116(v120)
end
v_u_1.PlayerAdded:Connect(v116)
local v_u_121 = Instance.new("ImageButton")
v_u_121.Name = "OpenButton"
v_u_121.Size = UDim2.new(0, 70, 0, 70)
v_u_121.Position = UDim2.new(0, 20, 0, 20)
v_u_121.BackgroundColor3 = Color3.fromHex("#1f1f1f")
v_u_121.BorderSizePixel = 0
v_u_121.Image = "rbxassetid://136362426728732"
v_u_121.ZIndex = 5
v_u_121.Parent = v8
local v122 = Instance.new("UICorner")
v122.CornerRadius = UDim.new(0, 10)
v122.Parent = v_u_121
v_u_121.Visible = false
v_u_121.MouseButton1Click:Connect(function()
	-- upvalues: (ref) v_u_19, (ref) v_u_121
	v_u_19.Visible = true
	v_u_121.Visible = false
end)
v24.MouseButton1Click:Connect(function()
	-- upvalues: (ref) v_u_19, (ref) v_u_121
	v_u_19.Visible = false
	v_u_121.Visible = true
end)
local v_u_123 = nil
local v_u_124 = nil
local v_u_125 = nil
local v_u_126 = nil
local function v_u_129(p127)
	-- upvalues: (ref) v_u_125, (ref) v_u_19, (ref) v_u_126
	local v128 = p127.Position - v_u_125
	v_u_19.Position = UDim2.new(v_u_126.X.Scale, v_u_126.X.Offset + v128.X, v_u_126.Y.Scale, v_u_126.Y.Offset + v128.Y)
end
v21.InputBegan:Connect(function(p_u_130)
	-- upvalues: (ref) v_u_123, (ref) v_u_125, (ref) v_u_126, (ref) v_u_19
	if p_u_130.UserInputType == Enum.UserInputType.MouseButton1 or p_u_130.UserInputType == Enum.UserInputType.Touch then
		v_u_123 = true
		v_u_125 = p_u_130.Position
		v_u_126 = v_u_19.Position
		p_u_130.Changed:Connect(function()
			-- upvalues: (ref) p_u_130, (ref) v_u_123
			if p_u_130.UserInputState == Enum.UserInputState.End then
				v_u_123 = false
			end
		end)
	end
end)
v21.InputChanged:Connect(function(p131)
	-- upvalues: (ref) v_u_124
	if p131.UserInputType == Enum.UserInputType.MouseMovement or p131.UserInputType == Enum.UserInputType.Touch then
		v_u_124 = p131
	end
end)
v_u_3.InputChanged:Connect(function(p132)
	-- upvalues: (ref) v_u_124, (ref) v_u_123, (ref) v_u_129
	if p132 == v_u_124 and v_u_123 then
		v_u_129(p132)
	end
end)
v_u_9:Destroy()
v_u_121.Visible = true
local v133 = Instance.new("TextButton")
v133.Size = UDim2.new(1, -20, 0, 35)
v133.Position = UDim2.new(0, 10, 1, -45)
v133.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
v133.BorderSizePixel = 0
v133.Text = ""
v133.Parent = v_u_19
local v134 = Instance.new("UICorner")
v134.CornerRadius = UDim.new(0, 6)
v134.Parent = v133
local v135 = Instance.new("ImageLabel")
v135.Size = UDim2.new(0, 20, 0, 20)
v135.Position = UDim2.new(0, 5, 0.5, -10)
v135.BackgroundTransparency = 1
v135.Image = "rbxassetid://86378746853664"
v135.Parent = v133
local v136 = Instance.new("TextLabel")
v136.Size = UDim2.new(1, -35, 1, 0)
v136.Position = UDim2.new(0, 45, 0, 0)
v136.BackgroundTransparency = 1
v136.Text = "Join Discord"
v136.TextColor3 = Color3.fromRGB(255, 255, 255)
v136.Font = Enum.Font.GothamSemibold
v136.TextSize = 20
v136.TextXAlignment = Enum.TextXAlignment.Left
v136.Parent = v133
v133.MouseButton1Click:Connect(function()
	local v137 = "https://discord.gg/kT8Aff6bza"
	if setclipboard then
		setclipboard(v137)
		game:GetService("StarterGui"):SetCore("SendNotification", {
			["Title"] = "Discord",
			["Text"] = "Link copiado!",
			["Duration"] = 5
		})
	else
		game:GetService("StarterGui"):SetCore("SendNotification", {
			["Title"] = "Discord",
			["Text"] = "Use o link: " .. v137,
			["Duration"] = 5
		})
		print("Link do Discord: " .. v137)
	end
end)
