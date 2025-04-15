-- THIS SCRIPT IS NOT MINE! Taken from: https://pastebin.com/0GTnF2hN

local TweenService = game:GetService("TweenService")
local ContentProvider = game:GetService("ContentProvider")
local plr = game.Players.LocalPlayer
local rs = game:GetService("ReplicatedStorage")
local guiyyy = Instance.new("ScreenGui")

local letsgo = true
local loadscript = Instance.new("BoolValue")
loadscript.Name = "LoadScriptOrNo"
loadscript.Parent = rs

for _, file in pairs(rs:GetChildren()) do
  if file:IsA("BoolValue") then
    if file.Value == true then
      if file.Name == "LoadScriptOrNo" then
        letsgo = false
        loadscript:Destroy()
      end
    end
  end
end


if loadscript.Value == false and letsgo == true then
  loadscript.Value = true
  guiyyy.Name = "LoadScreen"
  guiyyy.Parent = game.CoreGui

  local loadscreen = Instance.new("ImageLabel", guiyyy)
  Instance.new("UICorner", loadscreen)
   
  local label = Instance.new("TextLabel", guiyyy) 
  label.Size = UDim2.new(0.233,0,0.075,0)
  label.Position = UDim2.new(0.5,0,0.740,0)
  label.BackgroundTransparency = 1
  label.TextTransparency = 1
  label.AnchorPoint = Vector2.new(0.5,0.5)
  label.Text = "Fake WallHop"
  label.TextScaled = true
  label.Font = Enum.Font.Gotham
  label.TextColor3 = Color3.fromRGB(255, 255, 255)
  
  loadscreen.UICorner.CornerRadius = UDim.new(0.125,0)
  loadscreen.Size = UDim2.new(0.233,0,0.4,0)
  loadscreen.Image = "http://www.roblox.com/asset/?id=14890616326"
  loadscreen.Position = UDim2.new(0.5,0,0.5,0)
  loadscreen.AnchorPoint = Vector2.new(0.5,0.5)
  loadscreen.BorderSizePixel = 0
  loadscreen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  loadscreen.ImageTransparency = 1
  loadscreen.BackgroundTransparency = 1

  task.wait(0.5)

  TweenService:Create(loadscreen, TweenInfo.new(1.5), {ImageTransparency = 0, BackgroundTransparency = 0}):Play()
  TweenService:Create(label, TweenInfo.new(1.5), {TextTransparency = 0}):Play()
  task.wait(3)
  TweenService:Create(loadscreen, TweenInfo.new(1.5), {ImageTransparency = 1, BackgroundTransparency = 1}):Play()
  TweenService:Create(label, TweenInfo.new(1.5), {TextTransparency = 1}):Play()
  task.wait(1.5)
  guiyyy:Destroy()

  local toggle = false
  local menu = Instance.new("Frame")
  local button = Instance.new("TextButton", menu)

  menu.Size = UDim2.new(0.125,0,0.075,0)
  menu.BackgroundTransparency = 0.85
  menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

  button.Size = UDim2.new(0.820,0,0.65,0)
  button.Position = UDim2.new(0.5,0,0.5,0)
  button.BackgroundTransparency = 0.85
  button.AnchorPoint = Vector2.new(0.5,0.5)
  button.Text = "Walking"
  button.TextScaled = true
  button.Font = Enum.Font.Gotham
  button.TextColor3 = Color3.fromRGB(0, 0, 0)
  button.BorderSizePixel = 0
  button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

  Instance.new("UICorner", menu)
  Instance.new("UICorner", button)

  local UserInputService = game:GetService("UserInputService")

  local gui = menu

  local dragging
  local dragInput
  local dragStart
  local startPos

  local function update(input)
    local delta = input.Position - dragStart
    gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
  end

  gui.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
      dragging = true
      dragStart = input.Position
      startPos = gui.Position

      input.Changed:Connect(function()
        if input.UserInputState == Enum.UserInputState.End then
          dragging = false
        end
      end)
    end
  end)

  gui.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
      dragInput = input
    end
  end)

  UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
      update(input)
    end
  end)

  button.MouseButton1Click:Connect(function()
    if toggle == false then
      toggle = true
      button.Text = "WallHop"
    else
      toggle = false
      button.Text = "Walking"
    end
  end)

  local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
    if toggle == true then
      if InfiniteJumpEnabled == true then  
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        InfiniteJumpEnabled = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, -1, 0)
        wait(0.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, 1, 0)
        InfiniteJumpEnabled = true
      end
    end
  end)

  local guiyy = Instance.new("ScreenGui")
  guiyy.Name = "WallHopGui"
  guiyy.Parent = game.CoreGui

  menu.Parent = guiyy
end
