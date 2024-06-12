local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ESP = true

repeat wait()
    for _, Player in next, Players:GetPlayers() do
        if Player ~= LocalPlayer and Player.Character and not Player.Character:FindFirstChild("Highlight") then
            Instance.new("Highlight", Player.Character)
        end
    end
until not ESP
