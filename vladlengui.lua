sgui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
sgui.ResetOnSpawn = false
frame = Instance.new("Frame", sgui)
frame.Size = UDim2.fromScale(0.19,0.67)
frame.BackgroundColor3 = Color3.new(255,255,255)
frame.Position = UDim2.fromScale(0.04,0.17)
uill = Instance.new("UIListLayout", frame)
gavno = Instance.new("TextButton")
gavno.TextScaled = true
gavno.Size = UDim2.fromScale(1,0.2)
gavno.BackgroundColor3 = Color3.new(255, 0, 0)
gavno.Position = UDim2.fromScale(0.5, 0.4)
gavno1 = gavno:Clone()
gavno1.Parent = frame
gavno1.Text = "navalit govna"
gavno2 = gavno:Clone()
gavno2.Parent = frame
gavno2.Text = "zapustit govna"
gavno3 = gavno:Clone()
gavno3.Parent = frame
gavno3.Text = "ostanovit govna"
gavno4 = gavno:Clone()
gavno4.Parent = frame
gavno4.Text = "razgon down"
gavno5 = gavno:Clone()
gavno5.Parent = frame
gavno5.Text = "razgon up"

bebra1 = false
bebra2 = false
bebra3 = false
bebra4 = false
bebra5 = false

function gavnoclick1()
	if not bebra1 then
		gavno1.BackgroundColor3 = Color3.new(0, 255, 0)
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
		gavno1.BackgroundColor3 = Color3.new(255, 0, 0)
		bebra1 = false
	end
end

function gavnoclick2()
	if not bebra2 then
		gavno2.BackgroundColor3 = Color3.new(0, 255, 0)
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
		gavno2.BackgroundColor3 = Color3.new(255, 0, 0)
		bebra2 = false
	end
end

function gavnoclick3()
	if not bebra3 then
		gavno3.BackgroundColor3 = Color3.new(0, 255, 0)
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
		gavno3.BackgroundColor3 = Color3.new(255, 0, 0)
		bebra3 = false
	end
end

function gavnoclick4()
	if not bebra4 then
		gavno4.BackgroundColor3 = Color3.new(0, 255, 0)
		bebra4 = true
		while bebra4 do
			wait(0.25)
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ClickDetector") and v.Parent.Name == "Down" then
					fireclickdetector(v)
				end
			end
		end
	else
		gavno4.BackgroundColor3 = Color3.new(255, 0, 0)
		bebra4 = false
	end
end

function gavnoclick5()
	if not bebra5 then
		gavno5.BackgroundColor3 = Color3.new(0, 255, 0)
		bebra5 = true
		while bebra5 do
			wait(0.25)
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ClickDetector") and v.Parent.Name == "Up" then
					fireclickdetector(v)
				end
			end
		end
	else
		gavno5.BackgroundColor3 = Color3.new(255, 0, 0)
		bebra5 = false
	end
end

gavno1.MouseButton1Click:Connect(gavnoclick1)
gavno2.MouseButton1Click:Connect(gavnoclick2)
gavno3.MouseButton1Click:Connect(gavnoclick3)
gavno4.MouseButton1Click:Connect(gavnoclick4)
gavno5.MouseButton1Click:Connect(gavnoclick5)