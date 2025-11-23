local v_u_1 = {}
local v_u_2 = false
local v_u_3 = game:GetService("HttpService")
local v_u_4 = game:GetService("TweenService")
local v_u_5 = {
	["Name"] = "<font color=\"rgb(13, 252, 77)\">Zv_yz</font> - Auto JJs",
	["Template"] = " - <font color=\"rgb(%s)\">%s</font>"
}
local v6 = {
	[25] = {
		["Type"] = "Normal",
		["Duration"] = 12,
		["Text"] = "Feito por Zv_yz, para mais informa\195\167\195\181es entre no nosso Discord: https://discord.gg/ZmJHV4yg3y"
	},
	[1] = {
		["Type"] = "Warning",
		["Duration"] = 6,
		["Text"] = "O n\195\186mero n\195\163o pode ser negativo."
	},
	[2] = {
		["Type"] = "Warning",
		["Duration"] = 6,
		["Text"] = "Limite de n\195\186mero antigido."
	},
	[5] = {
		["Type"] = "Success",
		["Duration"] = 6,
		["Text"] = "Iniciado com sucesso."
	},
	[6] = {
		["Type"] = "Success",
		["Duration"] = 6,
		["Text"] = "Terminado com sucesso."
	},
	[12] = {
		["Type"] = "Warning",
		["Duration"] = 6,
		["Text"] = "A tarefa n\195\163o foi conclu\195\173da."
	},
	[35] = {
		["Type"] = "Warning",
		["Duration"] = 6,
		["Text"] = "You\"re running experimental modules!"
	}
}
v_u_5.Codes = v6
local v7 = {
	["Error"] = {
		["Text"] = "Error",
		["Color"] = Color3.fromRGB(255, 87, 87)
	},
	["Warning"] = {
		["Text"] = "Warning",
		["Color"] = Color3.fromRGB(255, 255, 127)
	},
	["Success"] = {
		["Text"] = "Success",
		["Color"] = Color3.fromRGB(85, 255, 127)
	},
	["Normal"] = {
		["Text"] = "",
		["Color"] = Color3.fromRGB(255, 255, 255)
	}
}
v_u_5.Types = v7
v_u_5.Translate = {
	["Default"] = 25,
	["Negative"] = 1,
	["Limit"] = 2,
	["Started"] = 5,
	["Finished"] = 6,
	["Failed"] = 12,
	["Experimental"] = 35
}
v_u_1.Connections = {}
v_u_1.__index = v_u_1
function Generate(p8)
	local v9 = {}
	for _ = 1, p8 or 12 do
		table.insert(v9, string.char(math.random(1, 255)))
	end
	return table.concat(v9)
end
function Color3ToString(p10)
	return string.format("%d, %d, %d", math.floor(p10.R * 255 + 0.5), math.floor(p10.G * 255 + 0.5), math.floor(p10.B * 255 + 0.5))
end
function Tween(p11, p12, p13, p14, p15, p16)
	-- upvalues: (ref) v_u_4
	local v_u_17 = v_u_4:Create(p11, TweenInfo.new(p12, Enum.EasingStyle[p13], Enum.EasingDirection[p14]), p15)
	if p16 then
		return v_u_17
	end
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_17
		v_u_17:Play()
	end)()
end
function GetProperties(p_u_18)
	local v19, v20, v_u_21 = p_u_18:GetAttributes()
	local v_u_22 = {}
	while true do
		v_u_21 = v19(v20, v_u_21)
		if v_u_21 == nil then
			break
		end
		pcall(function()
			-- upvalues: (ref) p_u_18, (ref) v_u_21, (ref) v_u_22
			if p_u_18[v_u_21] then
				v_u_22[v_u_21] = p_u_18[v_u_21]
			end
		end)
	end
	return v_u_22
end
local v_u_23 = {
	["Main"] = {
		["Init"] = Instance.new("Frame"),
		["_UIListLayout"] = Instance.new("UIListLayout"),
		["_UIPadding"] = Instance.new("UIPadding")
	},
	["Notification"] = {
		["_Notification"] = Instance.new("TextButton"),
		["_UICorner"] = Instance.new("UICorner"),
		["_UIStroke"] = Instance.new("UIStroke"),
		["_Header"] = Instance.new("Frame"),
		["_UICorner1"] = Instance.new("UICorner"),
		["_Title"] = Instance.new("TextLabel"),
		["_UIGradient"] = Instance.new("UIGradient"),
		["_Frame1"] = Instance.new("Frame"),
		["_Frame2"] = Instance.new("Frame"),
		["_Frame3"] = Instance.new("Frame"),
		["_UICorner2"] = Instance.new("UICorner"),
		["_LineHeader"] = Instance.new("Frame"),
		["_UIListLayout"] = Instance.new("UIListLayout"),
		["_Line"] = Instance.new("Frame"),
		["_Message"] = Instance.new("TextLabel"),
		["_UITextSizeConstraint1"] = Instance.new("UITextSizeConstraint"),
		["_UITextSizeConstraint2"] = Instance.new("UITextSizeConstraint"),
		["_ShadowImage"] = Instance.new("ImageLabel"),
		["_UICorner3"] = Instance.new("UICorner")
	}
}
v_u_23.Main.Init.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_23.Main.Init.BackgroundTransparency = 1
v_u_23.Main.Init.BorderSizePixel = 0
v_u_23.Main.Init.Position = UDim2.new(0.915616393, 0, 0.5, 0)
v_u_23.Main.Init.Size = UDim2.new(0.167767271, 0, 1, 0)
v_u_23.Main._UIListLayout.Padding = UDim.new(0, 15)
v_u_23.Main._UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
v_u_23.Main._UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
v_u_23.Main._UIListLayout.Parent = v_u_23.Main.Init
v_u_23.Main._UIPadding.PaddingBottom = UDim.new(0, 20)
v_u_23.Main._UIPadding.PaddingTop = UDim.new(0, 20)
v_u_23.Main._UIPadding.Parent = v_u_23.Main.Init
v_u_23.Notification._Notification.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_23.Notification._Notification.BackgroundColor3 = Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871)
v_u_23.Notification._Notification.BackgroundTransparency = 1
v_u_23.Notification._Notification.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_23.Notification._Notification.BorderSizePixel = 0
v_u_23.Notification._Notification.Position = UDim2.new(0.505962551, 0, 0.944316745, 0)
v_u_23.Notification._Notification.Size = UDim2.new(0.911924839, 0, 0.11136657, 0)
v_u_23.Notification._Notification.TextTransparency = 1
v_u_23.Notification._Notification.AutoButtonColor = false
v_u_23.Notification._Notification:SetAttribute("BackgroundTransparency", 0)
v_u_23.Notification._UICorner.CornerRadius = UDim.new(0.0500000007, 0)
v_u_23.Notification._UICorner.Parent = v_u_23.Notification._Notification
v_u_23.Notification._UIStroke.Color = Color3.fromRGB(100.00000163912773, 100.00000163912773, 100.00000163912773)
v_u_23.Notification._UIStroke.Parent = v_u_23.Notification._Notification
v_u_23.Notification._UIStroke.Transparency = 1
v_u_23.Notification._UIStroke.Name = "_UIStroke"
v_u_23.Notification._UIStroke:SetAttribute("Transparency", 1)
v_u_23.Notification._Header.BackgroundColor3 = Color3.fromRGB(50.000000819563866, 50.000000819563866, 50.000000819563866)
v_u_23.Notification._Header.BackgroundTransparency = 1
v_u_23.Notification._Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_23.Notification._Header.BorderSizePixel = 0
v_u_23.Notification._Header.Size = UDim2.new(1, 0, 0.264859766, 0)
v_u_23.Notification._Header.Name = "_Header"
v_u_23.Notification._Header.Parent = v_u_23.Notification._Notification
v_u_23.Notification._Header:SetAttribute("BackgroundTransparency", 0)
v_u_23.Notification._UICorner1.CornerRadius = UDim.new(0.349999994, 0)
v_u_23.Notification._UICorner1.Parent = v_u_23.Notification._Header
v_u_23.Notification._Title.Font = Enum.Font.Code
v_u_23.Notification._Title.RichText = true
v_u_23.Notification._Title.Text = string.format("%s%s", v_u_5.Name, v_u_5.Template)
v_u_23.Notification._Title.TextColor3 = Color3.fromRGB(255, 255, 255)
v_u_23.Notification._Title.TextTransparency = 1
v_u_23.Notification._Title.TextScaled = true
v_u_23.Notification._Title.TextSize = 14
v_u_23.Notification._Title.TextWrapped = true
v_u_23.Notification._Title.TextXAlignment = Enum.TextXAlignment.Left
v_u_23.Notification._Title.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_23.Notification._Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v_u_23.Notification._Title.BackgroundTransparency = 1
v_u_23.Notification._Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_23.Notification._Title.BorderSizePixel = 0
v_u_23.Notification._Title.Position = UDim2.new(0.522755802, 0, 0.519999981, 0)
v_u_23.Notification._Title.Size = UDim2.new(0.954487801, 0, 0.685080886, 0)
v_u_23.Notification._Title.ZIndex = 2
v_u_23.Notification._Title.Name = "_Title"
v_u_23.Notification._Title.Parent = v_u_23.Notification._Header
v_u_23.Notification._Title:SetAttribute("TextTransparency", 0)
v_u_23.Notification._Frame1.AnchorPoint = Vector2.new(0, 1)
v_u_23.Notification._Frame1.BackgroundColor3 = Color3.fromRGB(50.000000819563866, 50.000000819563866, 50.000000819563866)
v_u_23.Notification._Frame1.BackgroundTransparency = 1
v_u_23.Notification._Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_23.Notification._Frame1.BorderSizePixel = 0
v_u_23.Notification._Frame1.Position = UDim2.new(0, 0, 1, 0)
v_u_23.Notification._Frame1.Size = UDim2.new(1, 0, 0.400000006, 0)
v_u_23.Notification._Frame1.Parent = v_u_23.Notification._Header
v_u_23.Notification._Frame1.Name = "_Frame1"
v_u_23.Notification._Frame1:SetAttribute("BackgroundTransparency", 0)
v_u_23.Notification._Frame2.AnchorPoint = Vector2.new(0, 1)
v_u_23.Notification._Frame2.BackgroundColor3 = Color3.fromRGB(50.000000819563866, 50.000000819563866, 50.000000819563866)
v_u_23.Notification._Frame2.BackgroundTransparency = 1
v_u_23.Notification._Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_23.Notification._Frame2.BorderSizePixel = 0
v_u_23.Notification._Frame2.Position = UDim2.new(0, 0, 0.427625746, 0)
v_u_23.Notification._Frame2.Size = UDim2.new(1.00000012, 0, 0.427625746, 0)
v_u_23.Notification._Frame2.Parent = v_u_23.Notification._Header
v_u_23.Notification._Frame2.Name = "_Frame2"
v_u_23.Notification._Frame2:SetAttribute("BackgroundTransparency", 0)
v_u_23.Notification._Frame3.BackgroundColor3 = Color3.fromRGB(20.000000707805157, 20.000000707805157, 20.000000707805157)
v_u_23.Notification._Frame3.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_23.Notification._Frame3.BackgroundTransparency = 1
v_u_23.Notification._Frame3.BorderSizePixel = 0
v_u_23.Notification._Frame3.Position = UDim2.new(0, 0, 1, 0)
v_u_23.Notification._Frame3.Size = UDim2.new(1, 0, 0.400000006, 0)
v_u_23.Notification._Frame3.Parent = v_u_23.Notification._Header
v_u_23.Notification._Frame3.Name = "_Frame3"
v_u_23.Notification._Frame3:SetAttribute("BackgroundTransparency", 0)
v_u_23.Notification._UICorner2.CornerRadius = UDim.new(0.349999994, 0)
v_u_23.Notification._UICorner2.Parent = v_u_23.Notification._Frame2
v_u_23.Notification._UIGradient.Rotation = 90
v_u_23.Notification._UIGradient.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1) })
v_u_23.Notification._UIGradient.Parent = v_u_23.Notification._Frame3
v_u_23.Notification._LineHeader.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_23.Notification._LineHeader.BackgroundColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 73.00000324845314)
v_u_23.Notification._LineHeader.BackgroundTransparency = 1
v_u_23.Notification._LineHeader.BorderSizePixel = 0
v_u_23.Notification._LineHeader.Position = UDim2.new(0.5, 0, 0.930000007, 0)
v_u_23.Notification._LineHeader.Size = UDim2.new(0.9278, 0, 0, 1)
v_u_23.Notification._LineHeader.ZIndex = 2
v_u_23.Notification._LineHeader.Name = "_LineHeader"
v_u_23.Notification._LineHeader.Parent = v_u_23.Notification._Notification
v_u_23.Notification._UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
v_u_23.Notification._UIListLayout.Parent = v_u_23.Notification._LineHeader
v_u_23.Notification._Line.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_23.Notification._Line.BackgroundColor3 = Color3.fromRGB(85.0000025331974, 255, 127.00000002980232)
v_u_23.Notification._Line.BackgroundTransparency = 1
v_u_23.Notification._Line.BorderSizePixel = 0
v_u_23.Notification._Line.Size = UDim2.new(1, 0, 1, 0)
v_u_23.Notification._Line.ZIndex = 2
v_u_23.Notification._Line.Name = "_Line"
v_u_23.Notification._Line.Parent = v_u_23.Notification._LineHeader
v_u_23.Notification._Line:SetAttribute("BackgroundTransparency", 0)
v_u_23.Notification._Message.Font = Enum.Font.GothamMedium
v_u_23.Notification._Message.Text = "Message"
v_u_23.Notification._Message.TextColor3 = Color3.fromRGB(255, 255, 255)
v_u_23.Notification._Message.TextTransparency = 1
v_u_23.Notification._Message.TextScaled = true
v_u_23.Notification._Message.TextSize = 14
v_u_23.Notification._Message.TextWrapped = true
v_u_23.Notification._Message.RichText = true
v_u_23.Notification._Message.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_23.Notification._Message.BackgroundTransparency = 1
v_u_23.Notification._Message.BorderSizePixel = 0
v_u_23.Notification._Message.Position = UDim2.new(0.4856098, 0, 0.58392942, 0)
v_u_23.Notification._Message.Size = UDim2.new(0.931843162, 0, 0.441579729, 0)
v_u_23.Notification._Message.ZIndex = 2
v_u_23.Notification._Message.Name = "_Message"
v_u_23.Notification._Message.Parent = v_u_23.Notification._Notification
v_u_23.Notification._Message:SetAttribute("TextTransparency", 0)
v_u_23.Notification._UITextSizeConstraint1.MaxTextSize = 14
v_u_23.Notification._UITextSizeConstraint1.Parent = v_u_23.Notification._Message
v_u_23.Notification._UITextSizeConstraint2.MaxTextSize = 14
v_u_23.Notification._UITextSizeConstraint2.Parent = v_u_23.Notification._Title
v_u_23.Notification._ShadowImage.Image = "rbxassetid://7912134082"
v_u_23.Notification._ShadowImage.ImageTransparency = 1
v_u_23.Notification._ShadowImage.ScaleType = Enum.ScaleType.Slice
v_u_23.Notification._ShadowImage.SliceCenter = Rect.new(95, 95, 205, 205)
v_u_23.Notification._ShadowImage.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_23.Notification._ShadowImage.BackgroundTransparency = 1
v_u_23.Notification._ShadowImage.BorderSizePixel = 0
v_u_23.Notification._ShadowImage.Position = UDim2.new(0.5, 0, 0.512000024, 0)
v_u_23.Notification._ShadowImage.Size = UDim2.new(1.05299997, 0, 1.13499999, 0)
v_u_23.Notification._ShadowImage.ZIndex = -1
v_u_23.Notification._ShadowImage.Name = "_ShadowImage"
v_u_23.Notification._ShadowImage.Parent = v_u_23.Notification._Notification
v_u_23.Notification._ShadowImage:SetAttribute("ImageTransparency", 0.5)
v_u_23.Notification._UICorner3.CornerRadius = UDim.new(0, 5)
v_u_23.Notification._UICorner3.Parent = v_u_23.Notification._ShadowImage
local v24, v25, v26 = pairs(v_u_23.Main)
while true do
	local v27
	v26, v27 = v24(v25, v26)
	if v26 == nil then
		break
	end
	v27.Name = Generate(math.random(16, 24))
end
function v_u_1.SetParent(_, p_u_28)
	-- upvalues: (ref) v_u_23
	pcall(function()
		-- upvalues: (ref) v_u_23, (ref) p_u_28
		v_u_23.Main.Init.Parent = p_u_28
	end)
end
function v_u_1.SetLang(_, p29)
	-- upvalues: (ref) v_u_5
	local v30, v31, v32 = pairs(p29)
	while true do
		local v33
		v32, v33 = v30(v31, v32)
		if v32 == nil then
			break
		end
		if v_u_5.Translate[v32] then
			v_u_5.Codes[v_u_5.Translate[v32]].Text = v33
		end
	end
end
function v_u_1.Notify(p_u_34, p35, p36, p37, p_u_38)
	-- upvalues: (ref) v_u_5, (ref) v_u_3, (ref) v_u_23, (ref) v_u_1
	local v_u_39 = {}
	local v40
	if v_u_5.Codes[p35] then
		v40 = v_u_5.Codes[p35].Text
		p36 = v_u_5.Codes[p35].Type
		p37 = v_u_5.Codes[p35].Duration
	else
		v40 = p35
	end
	local v41 = v_u_5.Types[p36]
	if v41 then
		local v_u_42 = false
		local v_u_43 = v_u_3:GenerateGUID(false)
		local v_u_44 = v_u_23.Notification._Notification:Clone()
		v_u_1.Connections[v_u_43] = v_u_39
		local v_u_45 = {
			["Init"] = v_u_44,
			["Header"] = v_u_44._Header,
			["Title"] = v_u_44._Header._Title,
			["Message"] = v_u_44._Message,
			["Line"] = v_u_44._LineHeader._Line,
			["ShadowImage"] = v_u_44._ShadowImage,
			["UIStroke"] = v_u_44._UIStroke,
			["Frame1"] = v_u_44._Header._Frame1,
			["Frame2"] = v_u_44._Header._Frame2,
			["Frame3"] = v_u_44._Header._Frame3
		}
		local v_u_46 = Tween(v_u_45.Line, p37, "Sine", "Out", {
			["Size"] = UDim2.new(0, 0, 1, 0)
		}, true)
		local v_u_47 = {}
		v_u_45.Line.BackgroundColor3 = v41.Color
		v_u_45.ShadowImage.ImageColor3 = v41.Color
		v_u_45.Title.Text = v41.Text ~= "" and string.format(string.format("%s%s", v_u_5.Name, v_u_5.Template), Color3ToString(v41.Color), v41.Text) or v_u_5.Name
		v_u_45.Message.Text = v40
		v_u_45.Init.Parent = v_u_23.Main.Init
		table.insert(v_u_39, task.spawn(function()
			-- upvalues: (ref) v_u_44
			v_u_44.Name = Generate(math.random(16, 24))
			local v48 = v_u_44
			local v49, v50, v51 = pairs(v48:GetDescendants())
			while true do
				local v52
				v51, v52 = v49(v50, v51)
				if v51 == nil then
					break
				end
				v52.Name = Generate(math.random(16, 24))
			end
		end))
		table.insert(v_u_39, task.spawn(function()
			-- upvalues: (ref) v_u_45, (ref) v_u_39
			local v53, v54, v55 = ipairs({ v_u_45.Message, v_u_45.Title })
			while true do
				local v_u_56
				v55, v_u_56 = v53(v54, v55)
				if v55 == nil then
					break
				end
				local v_u_57 = v_u_56.Text
				table.insert(v_u_39, v_u_56:GetPropertyChangedSignal("Text"):Connect(function()
					-- upvalues: (ref) v_u_56, (ref) v_u_57
					v_u_56.Text = v_u_57
				end))
			end
		end))
		table.insert(v_u_39, task.spawn(function()
			-- upvalues: (ref) v_u_44, (ref) v_u_47, (ref) v_u_45, (ref) v_u_39, (ref) v_u_46, (ref) v_u_42, (ref) p_u_34, (ref) v_u_43, (ref) p_u_38
			local v58 = GetProperties(v_u_44)
			if v58 then
				v_u_47[v_u_44] = v58
				local v59 = v_u_44
				task.spawn(Tween, v_u_44, 0.25, "Quad", "In", v59:GetAttributes())
			end
			local v60 = v_u_44
			local v61, v62, v63 = pairs(v60:GetDescendants())
			while true do
				local v64
				v63, v64 = v61(v62, v63)
				if v63 == nil then
					break
				end
				local v65 = GetProperties(v64)
				if v65 and not v64:GetAttribute("Hidden") then
					v_u_47[v64] = v65
					task.spawn(Tween, v64, 0.25, "Quad", "In", v64:GetAttributes())
				end
			end
			task.wait(0.1)
			v_u_45.ShadowImage:SetAttribute("Hidden", nil)
			Tween(v_u_45.ShadowImage, 0.25, "Quad", "In", v_u_45.ShadowImage:GetAttributes())
			table.insert(v_u_39, v_u_46.Completed:Connect(function()
				-- upvalues: (ref) v_u_42, (ref) v_u_45, (ref) v_u_47, (ref) p_u_34, (ref) v_u_43
				if not v_u_42 then
					v_u_42 = true
					task.spawn(Tween, v_u_45.ShadowImage, 0.1, "Quad", "Out", {
						["ImageTransparency"] = 1
					})
					local v66, v67, v68 = pairs(v_u_47)
					while true do
						local v69
						v68, v69 = v66(v67, v68)
						if v68 == nil then
							break
						end
						task.spawn(Tween, v68, 0.25, "Quad", "Out", v69)
					end
					task.wait(2)
					v_u_45.Init:Destroy()
					if p_u_34 and (p_u_34.Connections and p_u_34.Connections[v_u_43]) then
						local v70, v71, v72 = ipairs(p_u_34.Connections)
						while true do
							local v73
							v72, v73 = v70(v71, v72)
							if v72 == nil then
								break
							end
							if typeof(v73) ~= "thread" then
								if typeof(v73) == "function" then
									task.spawn(v73.Disconnect, v73)
								end
							else
								task.cancel(v73)
							end
						end
						p_u_34.Connections[v_u_43] = nil
					end
				end
			end))
			v_u_46:Play()
			table.insert(v_u_39, v_u_45.Init.MouseEnter:Connect(function()
				-- upvalues: (ref) v_u_46
				if v_u_46.PlaybackState == Enum.PlaybackState.Playing then
					v_u_46:Pause()
				end
			end))
			table.insert(v_u_39, v_u_45.Init.MouseLeave:Connect(function()
				-- upvalues: (ref) v_u_46
				if v_u_46.PlaybackState == Enum.PlaybackState.Paused then
					v_u_46:Play()
				end
			end))
			table.insert(v_u_39, v_u_45.Init.MouseButton1Click:Connect(function()
				-- upvalues: (ref) v_u_46, (ref) p_u_38
				v_u_46:Cancel()
				if p_u_38 then
					p_u_38()
				end
			end))
		end))
	end
end
function v_u_1.Clear(_)
	-- upvalues: (ref) v_u_23
	local v74, v75, v76 = pairs(v_u_23.Main.Init:GetChildren())
	while true do
		local v77
		v76, v77 = v74(v75, v76)
		if v76 == nil then
			break
		end
		if v77:IsA("TextButton") then
			v77:Destroy()
		end
	end
end
function v_u_1.Destroy(p78)
	-- upvalues: (ref) v_u_23
	local v79, v80, v81 = pairs(p78.Connections)
	while true do
		local v82
		v81, v82 = v79(v80, v81)
		if v81 == nil then
			break
		end
		local v83, v84, v85 = pairs(v82)
		while true do
			local v86
			v85, v86 = v83(v84, v85)
			if v85 == nil then
				break
			end
			if typeof(v86) ~= "thread" then
				if typeof(v86) == "function" then
					task.spawn(v86.Disconnect, v86)
				end
			else
				task.cancel(v86)
			end
		end
	end
	local v87, v88, v89
	if v_u_23.Main.Init then
		v_u_23.Main.Init:Destroy()
		v87 = p78
		v88 = nil
		v89 = nil
	else
		v87 = p78
		v88 = nil
		v89 = nil
	end
	while true do
		v89 = p78(v88, v89)
		if v89 == nil then
			break
		end
		v87[v89] = nil
	end
	setmetatable(v87, nil)
end
function v_u_1.SetupJJs(p90)
	-- upvalues: (ref) v_u_2
	if not v_u_2 then
		v_u_2 = true
		p90:Notify(25, nil, nil, function()
			pcall(setclipboard, "https://discord.gg/ZmJHV4yg3y")
		end)
	end
end
return setmetatable({}, v_u_1)
