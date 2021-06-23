ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-----------------------------------------------------
------------------ Item Nourriture ------------------
-----------------------------------------------------

RegisterNetEvent('bzh:achatpain')
AddEventHandler('bzh:achatpain', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 3
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bread', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('bzh:achatsandwitch')
AddEventHandler('bzh:achatsandwitch', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 6
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('sandwich', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('bzh:achatsandwitch1')
AddEventHandler('bzh:achatsandwitch1', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 12
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('jambonbeurre', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)


-----------------------------------------------------
-------------------- Item Boisson -------------------
-----------------------------------------------------

RegisterNetEvent('bzh:achatboisson')
AddEventHandler('bzh:achatboisson', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('breizh_cola', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('bzh:achatboisson2')
AddEventHandler('bzh:achatboisson2', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('coca', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('bzh:achatboisson3')
AddEventHandler('bzh:achatboisson3', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('water', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)


-----------------------------------------------------
------------------ Item Accessoire ------------------
-----------------------------------------------------

RegisterNetEvent('bzh:achathifi')
AddEventHandler('bzh:achathifi', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 150
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('hifi', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('bzh:achatjumelles')
AddEventHandler('bzh:achatjumelles', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 120
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('jumelles', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('bzh:achatrgb')
AddEventHandler('bzh:achatrgb', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 200
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('boitierrgb', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('bzh:achatappats')
AddEventHandler('bzh:achatappats', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 20
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('fishbait', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('bzh:achatcap')
AddEventHandler('bzh:achatcap', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 600
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('fishingrod', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)