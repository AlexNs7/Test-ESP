while wait(0.5) do
    for i, legend in ipairs(workspace:GetDescendants()) do
        if legend:FindFirstChild("Humanoid") then
            if not legend:FindFirstChild("EspBox") then
                if legend ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment", legend)
                    esp.Adornee = legend
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(5, 6, 1)
                    esp.Transparency = 0.65
                    esp.Color3 = Color3.fromRGB(205,92,92)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
