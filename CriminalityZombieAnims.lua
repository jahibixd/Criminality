local player = game.Players.LocalPlayer.Character

--idle
local idle1 = player.Animate.idle1.Animation1_1
local idle1_2 = player.Animate.idle1.Animation2_1
local idle2 = player.Animate.idle2.Animation1_2
local idle2_2 = player.Animate.idle2.Animation2_2
local idle3 = player.Animate.idle3.Animation1_3
local idle3_2 = player.Animate.idle3.Animation2_3

--walk
local walk1 = player.Animate.walk1.WalkAnim1
local walk2 = player.Animate.walk2.WalkAnim2
local walk3 = player.Animate.walk3.WalkAnim3

--run
local run1 = player.Animate.run1.RunAnim1
local run2 = player.Animate.run2.RunAnim2
local run3 = player.Animate.run3.RunAnim3

--zomb anims
local infectedidle = "rbxassetid://11467619014"
local infectedwalk = "rbxassetid://11467628939"
local infectedrun = "rbxassetid://4514293527"

--brute anims
local bruterun = "rbxassetid://11467630904"

--zombie idle
idle1.AnimationId = infectedidle
idle1_2.AnimationId = infectedidle
idle2.AnimationId = infectedidle
idle2_2.AnimationId = infectedidle
idle3.AnimationId = infectedidle
idle3_2.AnimationId = infectedidle

--zombie walk
walk1.AnimationId = infectedwalk
walk2.AnimationId = infectedwalk
walk3.AnimationId = infectedwalk

--zombie run
--run1.AnimationId = infectedrun
--run2.AnimationId = infectedrun
--run3.AnimationId = infectedrun

--brute run
run1.AnimationId = bruterun
run2.AnimationId = bruterun
run3.AnimationId = bruterun