ScreenGui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
ScreenGui.Name = "vladlengui"
ScreenGui.ResetOnSpawn = false
Frame1 = Instance.new("Frame", ScreenGui)
Frame1.Size = UDim2.fromScale(0.2,0.35)
Frame1.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
Frame1.Position = UDim2.fromScale(0.34,0.17)
Frame1.Selectable = true
Frame1.Active = true
Frame1.Draggable = true
UICorner = Instance.new("UICorner", Frame1)
TextLabel = Instance.new("TextLabel", Frame1)
TextLabel.Size = UDim2.fromScale(1,0.16)
TextLabel.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
TextLabel.Position = UDim2.fromScale(0,0)
TextLabel.Text = "vladlengui"
TextLabel.TextSize = 32
TextLabel.Font = Enum.Font.ArialBold
TextLabel.TextColor3 = Color3.new(1, 1, 1)
UICorner:Clone().Parent = TextLabel
TextButton1 = Instance.new("TextButton", TextLabel)
TextButton1.Size = UDim2.fromScale(0.119,0.69)
TextButton1.BackgroundColor3 = Color3.new(1, 0.266667, 0.2)
TextButton1.Position = UDim2.fromScale(0.851,0.144)
TextButton1.Text = ""
UICorner:Clone().Parent = TextButton1
Frame2 = Instance.new("Frame", Frame1)
Frame2.Size = UDim2.fromScale(0.948,0.804)
Frame2.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
Frame2.Position = UDim2.fromScale(0.023,0.178)
UICorner:Clone().Parent = Frame2
UIListLayout = Instance.new("UIListLayout", Frame2)
UIListLayout.Padding = UDim.new(0.02,0)
UIListLayout.FillDirection = Enum.FillDirection.Vertical
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
TextButtonTemplate = Instance.new("TextButton")
TextButtonTemplate.Size = UDim2.fromScale(0.975,0.178)
TextButtonTemplate.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
TextButtonTemplate.TextScaled = true
TextButtonTemplate.Font = Enum.Font.ArialBold
TextButtonTemplate.TextColor3 = Color3.new(1, 1, 1)
UICorner:Clone().Parent = TextButtonTemplate
TextButton2 = TextButtonTemplate:Clone()
TextButton2.Parent = Frame2
TextButton2.Text = "navalit govna"
TextButton3 = TextButtonTemplate:Clone()
TextButton3.Parent = Frame2
TextButton3.Text = "zapustit govna"
TextButton4 = TextButtonTemplate:Clone()
TextButton4.Parent = Frame2
TextButton4.Text = "ostanovit govna"
TextButton5 = TextButtonTemplate:Clone()
TextButton5.Parent = Frame2
TextButton5.Text = "razgon up"
TextButton6 = TextButtonTemplate:Clone()
TextButton6.Parent = Frame2
TextButton6.Text = "razgon down"

TextButton1.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

TextButton2.MouseButton1Click:Connect(function()
	if not bebra1 then
		TextButton2.BackgroundColor3 = Color3.new(0.52549, 0.52549, 0.52549)
		bebra1 = true
		while bebra1 do
			wait(1)
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ClickDetector") and v.Parent.Name == "Head" then
					fireclickdetector(v)
				end
			end
		end
	else
		TextButton2.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
		bebra1 = false
	end
end)

TextButton3.MouseButton1Click:Connect(function()
	if not bebra2 then
		TextButton3.BackgroundColor3 = Color3.new(0.52549, 0.52549, 0.52549)
		bebra2 = true
		while bebra2 do
			wait(0.25)
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ClickDetector") and v.Parent.Name == "On" and v.Parent.BrickColor == BrickColor.new("Bright red") then
					fireclickdetector(v)
				end
			end
		end
	else
		TextButton3.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
		bebra2 = false
	end
end)

TextButton4.MouseButton1Click:Connect(function()
	if not bebra3 then
		TextButton4.BackgroundColor3 = Color3.new(0.52549, 0.52549, 0.52549)
		bebra3 = true
		while bebra3 do
			wait(0.25)
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ClickDetector") and v.Parent.Name == "On" and v.Parent.BrickColor == BrickColor.new("Dark green") then
					fireclickdetector(v)
				end
			end
		end
	else
		TextButton4.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
		bebra3 = false
	end
end)

TextButton5.MouseButton1Click:Connect(function()
	if not bebra4 then
		TextButton5.BackgroundColor3 = Color3.new(0.52549, 0.52549, 0.52549)
		bebra4 = true
		while bebra4 do
			wait(0.25)
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ClickDetector") and v.Parent.Name == "Up" then
					fireclickdetector(v)
				end
			end
		end
	else
		TextButton5.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
		bebra4 = false
	end
end)

TextButton6.MouseButton1Click:Connect(function()
	if not bebra5 then
		TextButton6.BackgroundColor3 = Color3.new(0.52549, 0.52549, 0.52549)
		bebra5 = true
		while bebra5 do
			wait(0.25)
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ClickDetector") and v.Parent.Name == "Down" then
					fireclickdetector(v)
				end
			end
		end
	else
		TextButton6.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
		bebra5 = false
	end
end)
