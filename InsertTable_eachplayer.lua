local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local plys = {}

-- Anfang: alle Spieler einfügen
for _, player in pairs(Players:GetPlayers()) do
    table.insert(plys, player)
    print(player.Name .. " has been inserted to plys table! [Successful]")
end

-- Spieler, die das Spiel verlassen, aus der Liste entfernen
Players.PlayerRemoving:Connect(function(player)
    for i, p in pairs(plys) do
        if p == player then
            table.remove(plys, i)
            print(player.Name .. " has left and was removed from plys table.")
            break
        end
    end
end)

Players.PlayerAdded:Connect(function(player)
    table.insert(plys, player)
    print(player.Name .. " joined and was added to plys table.")
end)
