ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

RegisterServerEvent('esx_clip:remove')
AddEventHandler('esx_clip:remove', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('clip', 1)
end)

ESX.RegisterUsableItem('clip', function(source)
    TriggerClientEvent('esx_clip:clipcli', source)
end)


RegisterNetEvent(':TomN | C-host.fr::clip123')
AddEventHandler(':TomN | C-host.fr::clip123', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 150
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
       xPlayer.addInventoryItem('clip', 5)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent(':TomN | C-host.fr::sns')
AddEventHandler(':TomN | C-host.fr::sns', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1200
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_SNSPISTOL', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)





RegisterNetEvent(':TomN | C-host.fr::pistolet')
AddEventHandler(':TomN | C-host.fr::pistolet', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 2000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_pistol', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)







RegisterNetEvent(':TomN | C-host.fr::vintage')
AddEventHandler(':TomN | C-host.fr::vintage', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 2450
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_vintagepistol', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)









RegisterNetEvent(':TomN | C-host.fr::calibre50')
AddEventHandler(':TomN | C-host.fr::calibre50', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 2900
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_pistol50', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)


