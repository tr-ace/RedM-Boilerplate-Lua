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

-- Start: Register command and send to server to see if player is admin
RegisterCommand("commandHere", function(source, args, rawCommand)
    -- Check if player is admin
    TriggerServerEvent("resource_name:isAdmin")
end, false)

-- End: Command to be ran from 
RegisterNetEvent('resource_name:clientEvent')
AddEventHandler('resource_name:clientEvent', function()
    -- Player is admin
    -- Run client side commands
end)
