local v_u_1 = {}
local v_u_2 = {
	["Title"] = "<font color=\"rgb(13, 252, 77)\">Zv_yz</font> - Auto JJs",
	["Version"] = 2.1
}
game:GetService("HttpService")
local v_u_3 = game:GetService("UserInputService")
local v_u_4 = game:GetService("TweenService")
v_u_1.Connections = {}
v_u_1.Keybind = Enum.KeyCode.Home
v_u_1.__index = v_u_1
function Generate(p5)
	local v6 = {}
	for _ = 1, p5 or 12 do
		table.insert(v6, string.char(math.random(1, 255)))
	end
	return table.concat(v6)
end
function Draggable(p_u_7, p8)
	-- upvalues: (ref) v_u_4, (ref) v_u_1, (ref) v_u_3
	local v_u_9 = false
	local v_u_10 = nil
	local v_u_11 = nil
	local v_u_12 = nil
	local v_u_13 = nil
	local function v_u_16(p14)
		-- upvalues: (ref) v_u_12, (ref) v_u_4, (ref) p_u_7, (ref) v_u_11
		local v15 = p14.Position - v_u_12
		v_u_4:Create(p_u_7, TweenInfo.new(0.25), {
			["Position"] = UDim2.new(v_u_11.X.Scale, v_u_11.X.Offset + v15.X, v_u_11.Y.Scale, v_u_11.Y.Offset + v15.Y)
		}):Play()
	end
	table.insert(v_u_1.Connections, p8.InputBegan:Connect(function(p_u_17)
		-- upvalues: (ref) v_u_3, (ref) v_u_9, (ref) v_u_12, (ref) v_u_11, (ref) p_u_7, (ref) v_u_13
		if table.find({ Enum.UserInputType.MouseButton1, Enum.UserInputType.Touch }, p_u_17.UserInputType) then
			if v_u_3:GetFocusedTextBox() == nil then
				v_u_9 = true
				v_u_12 = p_u_17.Position
				v_u_11 = p_u_7.Position
				if v_u_13 then
					v_u_13:Disconnect()
					v_u_13 = nil
				end
				v_u_13 = p_u_17.Changed:Connect(function()
					-- upvalues: (ref) p_u_17, (ref) v_u_9
					if p_u_17.UserInputState == Enum.UserInputState.End then
						v_u_9 = false
					end
				end)
			end
		else
			return
		end
	end))
	table.insert(v_u_1.Connections, p8.InputChanged:Connect(function(p18)
		-- upvalues: (ref) v_u_10
		if table.find({ Enum.UserInputType.MouseMovement, Enum.UserInputType.Touch }, p18.UserInputType) then
			v_u_10 = p18
		end
	end))
	table.insert(v_u_1.Connections, v_u_3.InputChanged:Connect(function(p19)
		-- upvalues: (ref) v_u_10, (ref) v_u_9, (ref) v_u_16
		if p19 == v_u_10 then
			if v_u_9 then
				v_u_16(p19)
			end
		else
			return
		end
	end))
end
local v_u_20 = {
	["Init"] = Instance.new("ScreenGui"),
	["_Main"] = Instance.new("Frame"),
	["_UICorner"] = Instance.new("UICorner"),
	["_UIStroke"] = Instance.new("UIStroke"),
	["_Header"] = Instance.new("Frame"),
	["_UICorner1"] = Instance.new("UICorner"),
	["_Title"] = Instance.new("TextLabel"),
	["_Version"] = Instance.new("TextLabel"),
	["_Frame"] = Instance.new("Frame"),
	["_Frame1"] = Instance.new("Frame"),
	["_UIGradient"] = Instance.new("UIGradient"),
	["_EndFrame"] = Instance.new("Frame"),
	["_Range"] = Instance.new("TextLabel"),
	["_UIGradient1"] = Instance.new("UIGradient"),
	["_Box"] = Instance.new("TextBox"),
	["_UICorner2"] = Instance.new("UICorner"),
	["_UIStroke1"] = Instance.new("UIStroke"),
	["_PrefixFrame"] = Instance.new("Frame"),
	["_Box1"] = Instance.new("TextBox"),
	["_UICorner3"] = Instance.new("UICorner"),
	["_UIStroke2"] = Instance.new("UIStroke"),
	["_Prefix"] = Instance.new("TextLabel"),
	["_UIGradient2"] = Instance.new("UIGradient"),
	["_JumpFrame"] = Instance.new("Frame"),
	["_Jump"] = Instance.new("TextLabel"),
	["_UIGradient3"] = Instance.new("UIGradient"),
	["_Slide"] = Instance.new("Frame"),
	["_UICorner4"] = Instance.new("UICorner"),
	["_UIStroke3"] = Instance.new("UIStroke"),
	["_Circle"] = Instance.new("ImageButton"),
	["_UICorner5"] = Instance.new("UICorner"),
	["_UIAspectRatioConstraint"] = Instance.new("UIAspectRatioConstraint"),
	["_StartFrame"] = Instance.new("Frame"),
	["_Start"] = Instance.new("TextLabel"),
	["_UIGradient4"] = Instance.new("UIGradient"),
	["_Box2"] = Instance.new("TextBox"),
	["_UICorner6"] = Instance.new("UICorner"),
	["_UIStroke4"] = Instance.new("UIStroke"),
	["_Play"] = Instance.new("TextButton"),
	["_UICorner7"] = Instance.new("UICorner"),
	["_UIStroke5"] = Instance.new("UIStroke"),
	["_ImageLabel"] = Instance.new("ImageLabel"),
	["_UIGradient5"] = Instance.new("UIGradient"),
	["_shadowHolder"] = Instance.new("Frame"),
	["_umbraShadow"] = Instance.new("ImageLabel"),
	["_penumbraShadow"] = Instance.new("ImageLabel"),
	["_ambientShadow"] = Instance.new("ImageLabel"),
	["_UITextSizeConstraint1"] = Instance.new("UITextSizeConstraint"),
	["_UITextSizeConstraint2"] = Instance.new("UITextSizeConstraint")
}
v_u_1.UIGradients = {
	v_u_20._UIGradient1,
	v_u_20._UIGradient2,
	v_u_20._UIGradient3,
	v_u_20._UIGradient4,
	v_u_20._UIGradient5
}
local v21 = {
	["Box"] = {
		["Prefix"] = v_u_20._Box1,
		["Start"] = v_u_20._Box2,
		["End"] = v_u_20._Box
	},
	["Slide"] = v_u_20._Slide,
	["Circle"] = v_u_20._Circle,
	["Play"] = v_u_20._Play
}
v_u_1.UIElements = v21
v_u_20.Init.IgnoreGuiInset = true
v_u_20.Init.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
v_u_20.Init.ResetOnSpawn = false
v_u_20.Init.ZIndexBehavior = Enum.ZIndexBehavior.Global
v_u_20._Main.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_20._Main.BackgroundColor3 = Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871)
v_u_20._Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Main.BorderSizePixel = 0
v_u_20._Main.Position = UDim2.new(0.339863181, 0, 0.453703701, 0)
v_u_20._Main.Size = UDim2.new(0.140437812, 0, 0.418071985, 0)
v_u_20._Main.Parent = v_u_20.Init
v_u_20._UICorner.CornerRadius = UDim.new(0.0500000007, 0)
v_u_20._UICorner.Parent = v_u_20._Main
v_u_20._UIStroke.Color = Color3.fromRGB(100.00000163912773, 100.00000163912773, 100.00000163912773)
v_u_20._UIStroke.Parent = v_u_20._Main
v_u_20._Header.BackgroundColor3 = Color3.fromRGB(50.000000819563866, 50.000000819563866, 50.000000819563866)
v_u_20._Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Header.BorderSizePixel = 0
v_u_20._Header.Size = UDim2.new(1, 0, 0.100000001, 0)
v_u_20._Header.Parent = v_u_20._Main
v_u_20._UICorner1.CornerRadius = UDim.new(0.349999994, 0)
v_u_20._UICorner1.Parent = v_u_20._Header
v_u_20._Title.Font = Enum.Font.Code
v_u_20._Title.RichText = true
v_u_20._Title.Text = v_u_2.Title
v_u_20._Title.TextColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Title.TextScaled = true
v_u_20._Title.TextSize = 14
v_u_20._Title.TextWrapped = true
v_u_20._Title.TextXAlignment = Enum.TextXAlignment.Left
v_u_20._Title.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_20._Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Title.BackgroundTransparency = 1
v_u_20._Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Title.BorderSizePixel = 0
v_u_20._Title.Position = UDim2.new(0.522755802, 0, 0.519999981, 0)
v_u_20._Title.Size = UDim2.new(0.954487801, 0, 0.685080886, 0)
v_u_20._Title.ZIndex = 2
v_u_20._Title.Parent = v_u_20._Header
v_u_20._Version.Font = Enum.Font.Code
v_u_20._Version.RichText = true
v_u_20._Version.Text = string.format("<font color=\"rgb(209, 24, 0)\">[v%.1f]</font>", v_u_2.Version)
v_u_20._Version.TextColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Version.TextScaled = true
v_u_20._Version.TextSize = 14
v_u_20._Version.TextWrapped = true
v_u_20._Version.TextXAlignment = Enum.TextXAlignment.Right
v_u_20._Version.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_20._Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Version.BackgroundTransparency = 1
v_u_20._Version.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Version.BorderSizePixel = 0
v_u_20._Version.Position = UDim2.new(0.879999995, 0, 0.519999981, 0)
v_u_20._Version.Size = UDim2.new(0.209999993, 0, 0.685000002, 0)
v_u_20._Version.ZIndex = 2
v_u_20._Version.Parent = v_u_20._Header
v_u_20._UITextSizeConstraint1.MaxTextSize = 14
v_u_20._UITextSizeConstraint1.Parent = v_u_20._Title
v_u_20._UITextSizeConstraint2.MaxTextSize = 14
v_u_20._UITextSizeConstraint2.Parent = v_u_20._Version
v_u_20._Frame.AnchorPoint = Vector2.new(0, 1)
v_u_20._Frame.BackgroundColor3 = Color3.fromRGB(50.000000819563866, 50.000000819563866, 50.000000819563866)
v_u_20._Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Frame.BorderSizePixel = 0
v_u_20._Frame.Position = UDim2.new(0, 0, 1, 0)
v_u_20._Frame.Size = UDim2.new(1, 0, 0.400000006, 0)
v_u_20._Frame.Parent = v_u_20._Header
v_u_20._Frame1.BackgroundColor3 = Color3.fromRGB(20.000000707805157, 20.000000707805157, 20.000000707805157)
v_u_20._Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Frame1.BorderSizePixel = 0
v_u_20._Frame1.Position = UDim2.new(0, 0, 1, 0)
v_u_20._Frame1.Size = UDim2.new(1, 0, 0.400000006, 0)
v_u_20._Frame1.Parent = v_u_20._Header
v_u_20._UIGradient.Rotation = 90
v_u_20._UIGradient.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1) })
v_u_20._UIGradient.Parent = v_u_20._Frame1
v_u_20._EndFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._EndFrame.BackgroundTransparency = 1
v_u_20._EndFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._EndFrame.BorderSizePixel = 0
v_u_20._EndFrame.Position = UDim2.new(0, 0, 0.300000012, 0)
v_u_20._EndFrame.Size = UDim2.new(1, 0, 0.100000001, 0)
v_u_20._EndFrame.Parent = v_u_20._Main
v_u_20._Range.Font = Enum.Font.Gotham
v_u_20._Range.Text = "Finish at:"
v_u_20._Range.TextColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Range.TextScaled = true
v_u_20._Range.TextSize = 14
v_u_20._Range.TextWrapped = true
v_u_20._Range.TextXAlignment = Enum.TextXAlignment.Left
v_u_20._Range.AnchorPoint = Vector2.new(0, 0.5)
v_u_20._Range.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Range.BackgroundTransparency = 1
v_u_20._Range.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Range.BorderSizePixel = 0
v_u_20._Range.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
v_u_20._Range.Size = UDim2.new(0.300000012, 0, 0.400000006, 0)
v_u_20._Range.Parent = v_u_20._EndFrame
v_u_20._UIGradient1.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 123.0000002682209, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(135.00000715255737, 217.0000022649765, 255)) })
v_u_20._UIGradient1.Enabled = false
v_u_20._UIGradient1.Rotation = 135
v_u_20._UIGradient1.Parent = v_u_20._Range
v_u_20._Box.Font = Enum.Font.SourceSansBold
v_u_20._Box.PlaceholderColor3 = Color3.fromRGB(188.0000039935112, 188.0000039935112, 188.0000039935112)
v_u_20._Box.PlaceholderText = "2"
v_u_20._Box.Text = ""
v_u_20._Box.TextColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Box.TextSize = 25
v_u_20._Box.TextStrokeTransparency = 0
v_u_20._Box.TextWrapped = true
v_u_20._Box.BackgroundColor3 = Color3.fromRGB(20.000000707805157, 20.000000707805157, 20.000000707805157)
v_u_20._Box.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Box.BorderSizePixel = 0
v_u_20._Box.Position = UDim2.new(0.400000006, 0, 0, 0)
v_u_20._Box.Size = UDim2.new(0.550000012, 0, 1, 0)
v_u_20._Box.Parent = v_u_20._EndFrame
v_u_20._Box:SetAttribute("IntBox", true)
v_u_20._UICorner2.CornerRadius = UDim.new(0.300000012, 0)
v_u_20._UICorner2.Parent = v_u_20._Box
v_u_20._UIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
v_u_20._UIStroke1.Color = Color3.fromRGB(50.000000819563866, 50.000000819563866, 50.000000819563866)
v_u_20._UIStroke1.Parent = v_u_20._Box
v_u_20._PrefixFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._PrefixFrame.BackgroundTransparency = 1
v_u_20._PrefixFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._PrefixFrame.BorderSizePixel = 0
v_u_20._PrefixFrame.Position = UDim2.new(0, 0, 0.449999988, 0)
v_u_20._PrefixFrame.Size = UDim2.new(1, 0, 0.100000001, 0)
v_u_20._PrefixFrame.Parent = v_u_20._Main
v_u_20._Box1.Font = Enum.Font.SourceSansBold
v_u_20._Box1.PlaceholderColor3 = Color3.fromRGB(188.0000039935112, 188.0000039935112, 188.0000039935112)
v_u_20._Box1.PlaceholderText = "!"
v_u_20._Box1.Text = ""
v_u_20._Box1.TextColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Box1.TextSize = 25
v_u_20._Box1.TextStrokeTransparency = 0
v_u_20._Box1.TextWrapped = true
v_u_20._Box1.BackgroundColor3 = Color3.fromRGB(20.000000707805157, 20.000000707805157, 20.000000707805157)
v_u_20._Box1.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Box1.BorderSizePixel = 0
v_u_20._Box1.Position = UDim2.new(0.400000006, 0, 0, 0)
v_u_20._Box1.Size = UDim2.new(0.550000012, 0, 1, 0)
v_u_20._Box1.Parent = v_u_20._PrefixFrame
v_u_20._UICorner3.CornerRadius = UDim.new(0.300000012, 0)
v_u_20._UICorner3.Parent = v_u_20._Box1
v_u_20._UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
v_u_20._UIStroke2.Color = Color3.fromRGB(50.000000819563866, 50.000000819563866, 50.000000819563866)
v_u_20._UIStroke2.Parent = v_u_20._Box1
v_u_20._Prefix.Font = Enum.Font.Gotham
v_u_20._Prefix.Text = "End Prefix:"
v_u_20._Prefix.TextColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Prefix.TextScaled = true
v_u_20._Prefix.TextSize = 14
v_u_20._Prefix.TextWrapped = true
v_u_20._Prefix.TextXAlignment = Enum.TextXAlignment.Left
v_u_20._Prefix.AnchorPoint = Vector2.new(0, 0.5)
v_u_20._Prefix.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Prefix.BackgroundTransparency = 1
v_u_20._Prefix.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Prefix.BorderSizePixel = 0
v_u_20._Prefix.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
v_u_20._Prefix.Size = UDim2.new(0.300000012, 0, 0.400000006, 0)
v_u_20._Prefix.Parent = v_u_20._PrefixFrame
v_u_20._UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 123.0000002682209, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(234.00000125169754, 0, 255)) })
v_u_20._UIGradient2.Enabled = false
v_u_20._UIGradient2.Rotation = 135
v_u_20._UIGradient2.Parent = v_u_20._Prefix
v_u_20._JumpFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._JumpFrame.BackgroundTransparency = 1
v_u_20._JumpFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._JumpFrame.BorderSizePixel = 0
v_u_20._JumpFrame.Position = UDim2.new(0, 0, 0.600000024, 0)
v_u_20._JumpFrame.Size = UDim2.new(1, 0, 0.100000001, 0)
v_u_20._JumpFrame.Parent = v_u_20._Main
v_u_20._Jump.Font = Enum.Font.Gotham
v_u_20._Jump.Text = "Jump:"
v_u_20._Jump.TextColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Jump.TextScaled = true
v_u_20._Jump.TextSize = 14
v_u_20._Jump.TextWrapped = true
v_u_20._Jump.TextXAlignment = Enum.TextXAlignment.Left
v_u_20._Jump.AnchorPoint = Vector2.new(0, 0.5)
v_u_20._Jump.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Jump.BackgroundTransparency = 1
v_u_20._Jump.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Jump.BorderSizePixel = 0
v_u_20._Jump.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
v_u_20._Jump.Size = UDim2.new(0.300000012, 0, 0.400000006, 0)
v_u_20._Jump.Parent = v_u_20._JumpFrame
v_u_20._UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(234.00000125169754, 0, 255)) })
v_u_20._UIGradient3.Enabled = false
v_u_20._UIGradient3.Rotation = 90
v_u_20._UIGradient3.Parent = v_u_20._Jump
v_u_20._Slide.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_20._Slide.BackgroundColor3 = Color3.fromRGB(20.000000707805157, 20.000000707805157, 20.000000707805157)
v_u_20._Slide.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Slide.BorderSizePixel = 0
v_u_20._Slide.Position = UDim2.new(0.674999774, 0, 0.485235006, 0)
v_u_20._Slide.Size = UDim2.new(0.300999999, 0, 0.911409914, 0)
v_u_20._Slide.Parent = v_u_20._JumpFrame
v_u_20._UICorner4.CornerRadius = UDim.new(1, 0)
v_u_20._UICorner4.Parent = v_u_20._Slide
v_u_20._UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
v_u_20._UIStroke3.Color = Color3.fromRGB(50.000000819563866, 50.000000819563866, 50.000000819563866)
v_u_20._UIStroke3.Parent = v_u_20._Slide
v_u_20._Circle.Active = false
v_u_20._Circle.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_20._Circle.BackgroundColor3 = Color3.fromRGB(50.000000819563866, 50.000000819563866, 50.000000819563866)
v_u_20._Circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Circle.BorderSizePixel = 0
v_u_20._Circle.ClipsDescendants = true
v_u_20._Circle.Position = UDim2.new(0.219999999, 0, 0.5, 0)
v_u_20._Circle.Selectable = false
v_u_20._Circle.Size = UDim2.new(0.452000022, 0, 0.999999344, 0)
v_u_20._Circle.Parent = v_u_20._Slide
v_u_20._UICorner5.CornerRadius = UDim.new(1, 0)
v_u_20._UICorner5.Parent = v_u_20._Circle
v_u_20._UIAspectRatioConstraint.AspectRatio = 0.6579999923706055
v_u_20._UIAspectRatioConstraint.Parent = v_u_20._Main
v_u_20._StartFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._StartFrame.BackgroundTransparency = 1
v_u_20._StartFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._StartFrame.BorderSizePixel = 0
v_u_20._StartFrame.Position = UDim2.new(0, 0, 0.150000006, 0)
v_u_20._StartFrame.Size = UDim2.new(1, 0, 0.100000001, 0)
v_u_20._StartFrame.Parent = v_u_20._Main
v_u_20._Start.Font = Enum.Font.Gotham
v_u_20._Start.Text = "Start at:"
v_u_20._Start.TextColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Start.TextScaled = true
v_u_20._Start.TextSize = 14
v_u_20._Start.TextWrapped = true
v_u_20._Start.TextXAlignment = Enum.TextXAlignment.Left
v_u_20._Start.AnchorPoint = Vector2.new(0, 0.5)
v_u_20._Start.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Start.BackgroundTransparency = 1
v_u_20._Start.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Start.BorderSizePixel = 0
v_u_20._Start.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
v_u_20._Start.Size = UDim2.new(0.300000012, 0, 0.400000006, 0)
v_u_20._Start.Parent = v_u_20._StartFrame
v_u_20._UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(6.000000117346644, 255, 214.00000244379044)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 249.00000035762787, 89.00000229477882)) })
v_u_20._UIGradient4.Enabled = false
v_u_20._UIGradient4.Rotation = 135
v_u_20._UIGradient4.Parent = v_u_20._Start
v_u_20._Box2.Font = Enum.Font.SourceSansBold
v_u_20._Box2.PlaceholderColor3 = Color3.fromRGB(188.0000039935112, 188.0000039935112, 188.0000039935112)
v_u_20._Box2.PlaceholderText = "1"
v_u_20._Box2.Text = ""
v_u_20._Box2.TextColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._Box2.TextSize = 25
v_u_20._Box2.TextStrokeTransparency = 0
v_u_20._Box2.TextWrapped = true
v_u_20._Box2.BackgroundColor3 = Color3.fromRGB(20.000000707805157, 20.000000707805157, 20.000000707805157)
v_u_20._Box2.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Box2.BorderSizePixel = 0
v_u_20._Box2.Position = UDim2.new(0.400000006, 0, 0, 0)
v_u_20._Box2.Size = UDim2.new(0.550000012, 0, 1, 0)
v_u_20._Box2.Parent = v_u_20._StartFrame
v_u_20._Box2:SetAttribute("IntBox", true)
v_u_20._UICorner6.CornerRadius = UDim.new(0.300000012, 0)
v_u_20._UICorner6.Parent = v_u_20._Box2
v_u_20._UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
v_u_20._UIStroke4.Color = Color3.fromRGB(50.000000819563866, 50.000000819563866, 50.000000819563866)
v_u_20._UIStroke4.Parent = v_u_20._Box2
v_u_20._Play.Active = false
v_u_20._Play.AnchorPoint = Vector2.new(0.5, 0)
v_u_20._Play.BackgroundColor3 = Color3.fromRGB(20.000000707805157, 20.000000707805157, 20.000000707805157)
v_u_20._Play.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._Play.BorderSizePixel = 0
v_u_20._Play.Position = UDim2.new(0.5, 0, 0.800000012, 0)
v_u_20._Play.Selectable = false
v_u_20._Play.Size = UDim2.new(0.75, 0, 0.129999995, 0)
v_u_20._Play.Text = ""
v_u_20._Play.Parent = v_u_20._Main
v_u_20._UICorner7.CornerRadius = UDim.new(1, 0)
v_u_20._UICorner7.Parent = v_u_20._Play
v_u_20._UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
v_u_20._UIStroke5.Color = Color3.fromRGB(50.000000819563866, 50.000000819563866, 50.000000819563866)
v_u_20._UIStroke5.Parent = v_u_20._Play
v_u_20._ImageLabel.Image = "rbxassetid://10392248278"
v_u_20._ImageLabel.ScaleType = Enum.ScaleType.Fit
v_u_20._ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_20._ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v_u_20._ImageLabel.BackgroundTransparency = 1
v_u_20._ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._ImageLabel.BorderSizePixel = 0
v_u_20._ImageLabel.Position = UDim2.new(0.500000119, 0, 0.499999791, 0)
v_u_20._ImageLabel.Size = UDim2.new(0.199999988, 0, 0.545430839, 0)
v_u_20._ImageLabel.Parent = v_u_20._Play
v_u_20._UIGradient5.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 123.0000002682209, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(234.00000125169754, 0, 255)) })
v_u_20._UIGradient5.Enabled = false
v_u_20._UIGradient5.Rotation = 135
v_u_20._UIGradient5.Parent = v_u_20._ImageLabel
v_u_20._shadowHolder.BackgroundTransparency = 1
v_u_20._shadowHolder.Size = UDim2.new(1, 0, 1, 0)
v_u_20._shadowHolder.ZIndex = -1
v_u_20._shadowHolder.Parent = v_u_20._Main
v_u_20._umbraShadow.Image = "rbxassetid://1316045217"
v_u_20._umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._umbraShadow.ImageTransparency = 0.8600000143051147
v_u_20._umbraShadow.ScaleType = Enum.ScaleType.Slice
v_u_20._umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
v_u_20._umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_20._umbraShadow.BackgroundTransparency = 1
v_u_20._umbraShadow.Position = UDim2.new(0.5, 0, 0.483758479, 6)
v_u_20._umbraShadow.Size = UDim2.new(1, 10, 0.967516959, 10)
v_u_20._umbraShadow.ZIndex = -1
v_u_20._umbraShadow.Parent = v_u_20._shadowHolder
v_u_20._penumbraShadow.Image = "rbxassetid://1316045217"
v_u_20._penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._penumbraShadow.ImageTransparency = 0.8799999952316284
v_u_20._penumbraShadow.ScaleType = Enum.ScaleType.Slice
v_u_20._penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
v_u_20._penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_20._penumbraShadow.BackgroundTransparency = 1
v_u_20._penumbraShadow.Position = UDim2.new(0.5, 0, 0.483758479, 6)
v_u_20._penumbraShadow.Size = UDim2.new(1, 10, 0.967516959, 10)
v_u_20._penumbraShadow.ZIndex = -1
v_u_20._penumbraShadow.Parent = v_u_20._shadowHolder
v_u_20._ambientShadow.Image = "rbxassetid://1316045217"
v_u_20._ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
v_u_20._ambientShadow.ImageTransparency = 0.8799999952316284
v_u_20._ambientShadow.ScaleType = Enum.ScaleType.Slice
v_u_20._ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)
v_u_20._ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
v_u_20._ambientShadow.BackgroundTransparency = 1
v_u_20._ambientShadow.Position = UDim2.new(0.5, 0, 0.483758479, 6)
v_u_20._ambientShadow.Size = UDim2.new(1, 10, 0.967516959, 10)
v_u_20._ambientShadow.ZIndex = -1
v_u_20._ambientShadow.Parent = v_u_20._shadowHolder
v_u_20._Title:GetPropertyChangedSignal("Text"):Connect(function()
	-- upvalues: (ref) v_u_20, (ref) v_u_2
	v_u_20._Title.Text = v_u_2.Title
end)
v_u_20._Version:GetPropertyChangedSignal("Text"):Connect(function()
	-- upvalues: (ref) v_u_20, (ref) v_u_2
	v_u_20._Version.Text = string.format("<font color=\"rgb(209, 24, 0)\">[v%.1f]</font>", v_u_2.Version)
end)
local v22, v23, v24 = pairs(v_u_20)
local v_u_25 = v_u_2
local v_u_26 = v_u_1
local v_u_27 = v_u_20
while true do
	local v28
	v24, v28 = v22(v23, v24)
	if v24 == nil then
		break
	end
	v28.Name = Generate(math.random(16, 24))
end
task.spawn(Draggable, v_u_27._Main, v_u_27._Header)
function v_u_26.getUI()
	-- upvalues: (ref) v_u_27
	return v_u_27.Init
end
function v_u_26.SetVersion(_, p29)
	-- upvalues: (ref) v_u_25, (ref) v_u_27
	local v30 = tonumber(p29)
	if v30 then
		v_u_25.TitleText = "<font color=\"rgb(13, 252, 77)\">Zv_yz</font> - Auto JJs"
		v_u_25.Version = v30
		v_u_27._Title.Text = v_u_25.Title
		v_u_27._Version.Text = string.format("<font color=\"rgb(209, 24, 0)\">[v%.1f]</font>", v_u_25.Version)
	end
end
function v_u_26.SetKeybind(p31, p32)
	local v33 = Enum.KeyCode[p32]
	if v33 then
		p31.Keybind = v33
	end
end
function v_u_26.SetParent(_, p_u_34)
	-- upvalues: (ref) v_u_27
	if p_u_34 then
		pcall(function()
			-- upvalues: (ref) v_u_27, (ref) p_u_34
			v_u_27.Init.Parent = p_u_34
		end)
	end
end
function v_u_26.SetLanguage(_, p35)
	-- upvalues: (ref) v_u_27
	if p35 then
		local v36, v37, v38 = pairs(p35)
		while true do
			local v39
			v38, v39 = v36(v37, v38)
			if v38 == nil then
				break
			end
			v_u_27[string.format("_%s", v38)].Text = string.format("%s:", v39)
		end
	end
end
function v_u_26.SetRainbow(_, p40)
	-- upvalues: (ref) v_u_26
	for v41 = 1, #v_u_26.UIGradients do
		v_u_26.UIGradients[v41].Enabled = p40 or false
	end
end
function v_u_26.Destroy(p42)
	-- upvalues: (ref) v_u_27
	local v43, v44, v45 = ipairs(p42.Connections)
	while true do
		local v46
		v45, v46 = v43(v44, v45)
		if v45 == nil then
			break
		end
		task.spawn(v46.Disconnect, v46)
	end
	local v47, v48, v49
	if v_u_27.Init then
		v_u_27.Init:Destroy()
		v47 = p42
		v48 = nil
		v49 = nil
	else
		v47 = p42
		v48 = nil
		v49 = nil
	end
	while true do
		v49 = p42(v48, v49)
		if v49 == nil then
			break
		end
		v47[v49] = nil
	end
	setmetatable(v47, nil)
end
return setmetatable({}, v_u_26)
