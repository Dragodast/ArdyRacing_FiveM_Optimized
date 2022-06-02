honkEnabled = GetResourceKvpInt('cnf_honkEnabled') == 1

CreateThread(function()
    while true do
        if honkEnabled  then
            local player = PlayerPedId()
            if IsPedInAnyVehicle(player, false) then
                local veh = GetVehiclePedIsIn(player, false)
                if GetPedInVehicleSeat(veh, -1) == player then
                    if IsDisabledControlJustPressed(0, 86) then
                        SetVehicleLights(veh, 2)
                        SetVehicleLightMultiplier(veh, 12.0)
                    elseif IsDisabledControlJustReleased(0, 86) then
                        SetVehicleLights(veh, 0)
                        SetVehicleLightMultiplier(veh, 1.0)
                    end
                end
            end
            Wait(0)
        else
            Wait(1000)
        end
    end
end)