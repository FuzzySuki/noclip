local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local runservice = game:GetService("RunService")
local noclip = false
 
local msg = Instance.new("Message", player.PlayerGui)
msg.Text = "Noclip Script by TheBaconHairdhaxerz Press on 'e' to noclip & 't' to destroy this message!"
 
runservice.Stepped:Connect(function()
    if noclip then
        player.Character.Humanoid:ChangeState(11)
    end
end)
 
mouse.KeyDown:Connect(function(key)
    if key == "t" then
        msg:Destroy()
    end
end)
 
mouse.KeyDown:Connect(function(key)
    if key == "m" then
        noclip = true
        player.Character.Humanoid:ChangeState(11)
    end
end)

mouse.KeyDown:Connect(function(key)
    if key == "z" then
        noclip = false
        player.Character.Humanoid:ChangeState(11)
    end
end)