local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.KeyDown:Connect(function(k) 
        if k == "t" then

        local A_1 = "__--r"
        local A_2 = Vector3.new(1555.178057461977005, 80000.45867919921875, 1654.940984725952148)
        local A_3 = CFrame.new(4622.77637, 1474.090881, 7744.0441208, 3566.999935508, 2456.06157474e-08, -0.0113573903, 9.29981692e-09, 1, -1.15918411e-07, 0.0113573903, 1.15805307e-07, 0.999935508)
        game:GetService("ReplicatedStorage").Events["__DFfDD"]:FireServer(A_1, A_2, A_3)
    end
end)