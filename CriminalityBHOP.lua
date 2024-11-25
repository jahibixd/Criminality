local UserInputService = game:GetService('UserInputService')
        local Jumping = false
        
        local connection = nil
        local connection2 = nil
        
        local allowed = false
        
        UserInputService.InputBegan:Connect(function(i,g)
            if g then return end
            
            if i.KeyCode == Enum.KeyCode.Space then
                if not allowed then return end
                Jumping = true
                
                local LinearVelocity = Instance.new('LinearVelocity')
                LinearVelocity.Attachment0 = game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').RootAttachment
                LinearVelocity.MaxForce = 2000
                LinearVelocity.Parent = game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                connection2 = game.Players.LocalPlayer.Character.Humanoid.StateChanged:Connect(function(_,newState)
                    if Jumping then
                        if newState == Enum.HumanoidStateType.Landed then
                            game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        end
                    end
                end)
                
                connection = game:GetService('RunService').RenderStepped:Connect(function()
                    if Jumping then
                        LinearVelocity.VectorVelocity = game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame.lookVector * 100
                    end
                end)
            elseif i.KeyCode == Enum.KeyCode.V then
                if allowed then
                    allowed = false
                else
                    allowed = true
                end
            end
        end)
        
        UserInputService.InputEnded:Connect(function(i,g)
            if g then return end
        
            if i.KeyCode == Enum.KeyCode.Space then
                Jumping = false
                
                if game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart'):FindFirstChild('LinearVelocity') then
                    game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart'):FindFirstChild('LinearVelocity'):Destroy()
                end
                if connection then
                    connection:Disconnect()
                    connection = nil
                end
                if connection2 then
                    connection2:Disconnect()
                    connection2 = nil
                end
            end
        end)