local Keybind = Enum.KeyCode.T

local CFNew, CFAng, CFtoObjectSpace = CFrame.new, CFrame.Angles, CFrame.new().toObjectSpace

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local on = false

local Connection = nil

local Config = {
    turnAngle = 70,
    
    hasSpinBot = true,
    hasHead = true,
}

local function ToggleSpinBot()
    while wait() do
        if Connection == false then
            break
        end
        
        for i = 1, Config.turnAngle do
            game.TweenService:Create(humanoidRootPart, TweenInfo.new(0.05), {CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(150), 0)}):Play()
            task.wait()
        end
        for i = 1, Config.turnAngle do
            game.TweenService:Create(humanoidRootPart, TweenInfo.new(0.05), {CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, -math.rad(150), 0)}):Play()
            task.wait()
        end
    end
end

local gmt = getrawmetatable(game)
if gmt then
    setreadonly(gmt, false)
    local oldNamecall = gmt.__namecall

    gmt.__namecall = newcclosure(function(self, ...)
        local args = {...}
        local method = getnamecallmethod()

        if tostring(method) == "FireServer" and tostring(self) == "MOVZREP" then
            if on and Config.hasHead then
                args[1][1][3] = CFtoObjectSpace(humanoidRootPart.CFrame, workspace.CurrentCamera.CFrame).LookVector.Unit * Vector3.new(0, -50, 0)
            end
        end

        return oldNamecall(self, unpack(args))
    end)
    setreadonly(gmt, true)
end

game.UserInputService.InputBegan:Connect(function(input, gp)
    if gp then
        return
    end
    
    if input.KeyCode == Keybind then
        
            on = not on
        
        if Config.hasSpinBot then
            if on then
                Connection = true
                ToggleSpinBot()
            else
                Connection = false
            end
        end
    end
end)