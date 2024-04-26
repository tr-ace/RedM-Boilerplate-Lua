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
AddEventHandler("resource_name:isAdmin", function(eventName, args)
    -- Check if player is admin
    local _source = source
    local User = Core.getUser(_source)
    local Character = User.getUsedCharacter
    local player_group = Character.group
    local group1 = User.getGroup
    local ace_allowed = IsPlayerAceAllowed(_source, "admin")
    if ace_allowed or player_group == "admin" or group1 == "admin" then
    -- if player is admin, it triggers client event with given args and eventName for _source
        if args ~= nil then -- FIXME: user must pass at least an empty table {} for args
            TriggerClientEvent(eventName, _source, table.unpack(args));
        else
            TriggerClientEvent(eventName, _source);
        end
    end
end)


