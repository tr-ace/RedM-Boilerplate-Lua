AddEventHandler('onResourceStart', function(name)
    if name == GetCurrentResourceName() then
        Citizen.Trace(name.." started!\n")
    end
end)

AddEventHandler('onResourceStop', function(name)
    if name == GetCurrentResourceName() then
        Citizen.Trace(name.." stopped!\n")
    end
end)

RegisterNetEvent("resource_name:isAdmin")
AddEventHandler("resource_name:isAdmin", function(modelName)
    local _source = source
    local Character = Core.getUser(_source).getUsedCharacter
    local User = Core.getUser(_source)
    local group = Character.group
    local group1 = User.getGroup

    -- Check if the player has the 'admin' permission
    if IsPlayerAceAllowed(_source, "admin") or group == "admin" or group1 == "admin" then
        -- Player is admin - run client side command
        TriggerClientEvent("resource_name:clientEvent", _source, modelName)
        
    end
end)


