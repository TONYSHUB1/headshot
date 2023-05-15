Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        if IsPedArmed(ped, 4) then -- Check if player is holding a weapon
            local weapon = GetSelectedPedWeapon(ped)
            for _, hash in ipairs(Config.WeaponHashes) do -- Loop through the weapon hashes in the config
                if GetHashKey(hash) == weapon then -- Check if player is holding a specific weapon
                    SetWeaponDamageModifier(weapon, Config.HeadshotMultiplier) -- Set the headshot multiplier for the specific weapon
                end
            end
        end
    end
end)
