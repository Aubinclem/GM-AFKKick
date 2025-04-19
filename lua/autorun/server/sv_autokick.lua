if SERVER then
    local afkTime = 600
    timer.Create("AFKCheck", 60, 0, function()
        for _, ply in ipairs(player.GetAll()) do
            if ply:IsAFK() then
                ply:Kick("Expulsé pour AFK prolongé.")
            end
        end
    end)
end
