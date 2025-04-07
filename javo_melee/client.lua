local ESX = exports['es_extended']:getSharedObject()

Citizen.CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local hasWeapon = GetSelectedPedWeapon(playerPed) ~= GetHashKey("WEAPON_UNARMED")

        if hasWeapon then
            DisableControlAction(0, 140, true) -- Teclado
            DisableControlAction(1, 140, true) -- Mando
            DisableControlAction(2, 140, true) -- Alternativo
        end
        Citizen.Wait(0)
    end
end)
