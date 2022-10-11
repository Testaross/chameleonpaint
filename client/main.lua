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
        QBCore.Functions.Progressbar("shaking", 'Shaking can', 15000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = dict1,
            anim = anim1,
            flags = 1,
        }, {}, {}, function()
            ClearPedTasks(ped)
            TriggerServerEvent("InteractSound_SV:PlayOnSource", "spraypaint", 0.3)
            if lib.progressBar({
            duration = 1000,
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
                    duration = 1000,
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
                    local vehicle = lib.getClosestVehicle(pedCoords, 3.0)
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
