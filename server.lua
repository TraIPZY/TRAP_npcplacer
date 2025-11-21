RegisterNetEvent('ped_placer:requestPeds')
AddEventHandler('ped_placer:requestPeds', function()
local src = source
TriggerClientEvent('ped_placer:spawnPeds', src, Config.Peds)
end)
