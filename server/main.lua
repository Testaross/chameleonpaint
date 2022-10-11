RegisterServerEvent('chameleonpaint:server:sprayVehicle')
AddEventHandler('chameleonpaint:server:sprayVehicle', function(item, index)
    print(item)
    local src = source
    TriggerClientEvent('chameleonpaint:client:sprayVehicle', src, item, index)
end)
