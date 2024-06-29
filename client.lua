CreateThread(function()
    local sleep = 1250
    while true do 
        Wait(sleep)

        if IsPedInAnyVehicle(PlayerPedId(), false) then 
            sleep = 1
        else
            sleep = 1250
        end 
        
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        if GetVehicleClass(vehicle) == 8 then 
            if not GetSelectedPedWeapon(PlayerPedId()) == GetHashKey("WEAPON_UNARMED") then return end
            if IsControlPressed(0, 73) or IsControlPressed(0, 25) or IsControlPressed(0, 24)  then
                ClearPedTasks(PlayerPedId())
            end
        end
    end
end)
