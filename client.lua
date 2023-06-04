RegisterCommand('goto', function(_, args)
    local targetid = args[1]

    if not targetid then
        TriggerEvent('chat:addMessage', {
             args = { 'please provide a target ID.', },
    })

    return
end

    TriggerServerEvent('ch_teleporter:goto', targetid)
end)

RegisterCommand('summon', function(_, args)
    local targetid = args[1]

     if not targetid then
        TriggerEvent('chat:addMessage', {
            args = { 'please provide a target ID.', }
        })    
        
          return
     end

     TriggerServerEvent('ch_teleporter:summon', targetid)
 end)
 
 
RegisterNetEvent('ch_teleporter:teleport', function(targetcoordinates)
    local playerPed = PlayerPedId()
   
    SetEntityCoords(playerPed, targetcoordinates)
end)