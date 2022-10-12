
RegisterNetEvent('chameleonpaint:client:sprayVehicle')
AddEventHandler('chameleonpaint:client:sprayVehicle', function(name, color)
    local ped = PlayerPedId()

    if not IsPedInAnyVehicle(ped, false) then
        local dict1, anim1 = 'switch@franklin@lamar_tagging_wall', 'lamar_tagging_wall_loop_lamar'
		local anim2 = 'lamar_tagging_exit_loop_lamar'
        local can_model = `prop_cs_spray_can`
        RequestModel(can_model)
        while not HasModelLoaded(can_model) do
            Citizen.Wait(1)
            RequestModel(can_model)
        end
        local prop = CreateObject(can_model, GetEntityCoords(ped), true, true, true)
		AttachEntityToEntity(prop, ped, GetPedBoneIndex(ped, 57005), 0.12, 0.0, -0.04, -70.0, 0.0, -10.0, true, true, false, false, 1, true)
        if lib.progressBar({
            duration = 10000,
            label = 'Shaking can',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true, 
            },
            anim = {
                dict = dict1,
                clip = anim1,
                flag = 1 
            },
        }) 
            then
                ClearPedTasks(ped)
                if lib.progressBar({
                    duration = 10000,
                    label = 'Painting',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true, 
                    },
                    anim = {
                        dict = dict1,
                        clip = anim2,
                        flag = 1 
                    },
                }) 
                then
                    local pedCoords = GetEntityCoords(ped)
                    -- print(index)
                    local vehicle = lib.getClosestVehicle(pedCoords, 3.0)
                    -- local color = 167
                    print(vehicle)
                    print(color1)
                    SetVehicleModKit(vehicle, 0)
                    SetVehicleColours(vehicle, color, color)
                    DeleteObject(prop)
                    ClearPedTasks(ped) 
                else 
                    DeleteObject(prop)
                    ClearPedTasks(ped)
                end 
        else
            DeleteObject(prop)
            ClearPedTasks(ped)
        end
    end
end)


exports('chameleonpaint', function(data, slot)
    color1 = data.description
    TriggerServerEvent('chameleonpaint:server:sprayVehicle', slot.name, data.description)
end)
