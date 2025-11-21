local spawnedPeds = {}


local function loadModel(model)
local hash = GetHashKey(model)
if not IsModelInCdimage(hash) then return false end
RequestModel(hash)
local timeout = 0
while not HasModelLoaded(hash) and timeout < 1000 do
Wait(10)
timeout = timeout + 1
end
return HasModelLoaded(hash)
end


local function spawnPed(data)
if not loadModel(data.model) then return end
local ped = CreatePed(4, GetHashKey(data.model), data.pos.x, data.pos.y, data.pos.z, data.h or 0.0, false, true)
if data.freeze then FreezeEntityPosition(ped, true) end
SetEntityInvincible(ped, true)
SetBlockingOfNonTemporaryEvents(ped, true)
table.insert(spawnedPeds, ped)
end


RegisterNetEvent('ped_placer:spawnPeds')
AddEventHandler('ped_placer:spawnPeds', function(peds)
print('Received peds:', #peds)
for _, pedData in ipairs(peds) do
print('Spawning:', pedData.model)
spawnPed(pedData)
end
end)


-- Thread pour spawn peds après que le joueur est prêt
Citizen.CreateThread(function()
Wait(2000) -- délai pour être sûr que le joueur est chargé
TriggerServerEvent('ped_placer:requestPeds')
end)
