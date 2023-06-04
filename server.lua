RegisterNetEvent('ch_teleporter:goto', function(targetId)
    local playerId = source

    -- get entity handle of target
    local targetPed = GetPlayerPed(targetId)

    if targetPed <= 0 then
        TriggerClientEvent('chat:addMessage', playerId, {
            args = { 'sorry, ' .. targetId .. 'doesn\'t seem to exist.', }, 
        })

        return
    end


    -- get coordinates of the target
    local targetPos = GetEntityCoords(targetPed)

    -- send the coordinates to the client so it can go to the target
       TriggerClientEvent('ch_teleporter:teleport', playerId, targetPos)
end)