-- INF JUMP
local Button = MainTab:CreateButton({
    Name = "INF JUMP",
    Callback = function()

        local Player = game:GetService("Players").LocalPlayer
        local UIS = game:GetService("UserInputService")

        _G.JumpHeight = 50

        local function Action(Object, Function)
            if Object ~= nil then
                Function(Object)
            end
        end

        UIS.InputBegan:Connect(function(UserInput)
            if UserInput.UserInputType == Enum.UserInputType.Keyboard 
            and UserInput.KeyCode == Enum.KeyCode.Space then

                Action(Player.Character and Player.Character:FindFirstChild("Humanoid"), function(self)
                    if self:GetState() == Enum.HumanoidStateType.Jumping 
                    or self:GetState() == Enum.HumanoidStateType.Freefall then

                        Action(self.Parent:FindFirstChild("HumanoidRootPart"), function(hrp)
                            hrp.Velocity = Vector3.new(0, _G.JumpHeight, 0)
                        end)
                    end
                end)
            end
        end)
    end,
})

-- SPEED SLIDER
local Slider = MainTab:CreateSlider({
    Name = "Speed",
    Range = {0, 1000},
    Increment = 2,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "Slider1",
    Callback = function(Value)
        local char = local Button = MainTab:CreateButton({
   Name = "INF JUMP",
   Callback = function()
   local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
 
_G.JumpHeight = 50;
 
function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
UIS.InputBegan:Connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "Speed",
   Range = {0, 1000},
   Increment = 2,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
   end,
})
        if char and char:FindFirstChild("Humanoid") then
            char.Humanoid.WalkSpeed = Value
        end
    end,
})
