RegisterServerEvent('headshotcontrol:getWeaponHashes')
AddEventHandler('headshotcontrol:getWeaponHashes', function()
    local weaponHashes = {}
    for _, hash in ipairs(Config.WeaponHashes) do -- Loop through the weapon hashes in the config
        table.insert(weaponHashes, GetHashKey(hash)) -- Add the hash to the table
    end
    TriggerClientEvent('headshotcontrol:setWeaponHashes', -1, weaponHashes)
end)
