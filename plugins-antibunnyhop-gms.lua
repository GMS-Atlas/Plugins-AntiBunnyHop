local timetocanjump = 1.5 -- Le temps en secondes que une personne doit attendre entre deux jump

lastjump = lastjump or 0
hook.Add("StartCommand", "BunnyHop", function(ply, cmd)
    if lastjump + timetocanjump > CurTime() and ply:GetMoveType() != MOVETYPE_NOCLIP then
        cmd:RemoveKey(2)
    elseif ply:KeyDown(IN_JUMP) then
        if lastjump + timetocanjump < CurTime() then
            lastjump = CurTime()
        end
    end
end)