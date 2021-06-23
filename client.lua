ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)


-----------------------------------------------------
------------ Création du Menu / Sous Menu -----------
-----------------------------------------------------


RMenu.Add('Fazer', 'main', RageUI.CreateMenu("Vival", "BZH Corporation®"))
RMenu.Add('Fazer', 'nourriture', RageUI.CreateSubMenu(RMenu:Get('Fazer', 'main'), "Nourriture", "BZH Corporation®"))
RMenu.Add('Fazer', 'boisson', RageUI.CreateSubMenu(RMenu:Get('Fazer', 'main'), "Boisson", "BZH Corporation®"))
RMenu.Add('Fazer', 'accessoire', RageUI.CreateSubMenu(RMenu:Get('Fazer', 'main'), "Accessoire", "BZH Corporation®"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('Fazer', 'main'), true, true, true, function()

            RageUI.Separator("↓ ~b~Rayon Nourriture ~s~ ↓")

            RageUI.ButtonWithStyle("Nourriture", nil, {RightLabel = "🍔"},true, function()
            end, RMenu:Get('Fazer', 'nourriture'))

            RageUI.Separator("↓ ~b~Rayon Boisson ~s~ ↓")

            RageUI.ButtonWithStyle("Boisson", nil, {RightLabel = "🥤"},true, function()
            end, RMenu:Get('Fazer', 'boisson'))

            RageUI.Separator("↓ ~b~Rayon Accessoire ~s~ ↓")

            RageUI.ButtonWithStyle("Accessoire", nil, {RightLabel = "📟"},true, function()
            end, RMenu:Get('Fazer', 'accessoire'))
        end, function()
        end)



        RageUI.IsVisible(RMenu:Get('Fazer', 'nourriture'), true, true, true, function()

            RageUI.ButtonWithStyle("Pain", nil, {RightLabel = "~r~3€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('bzh:achatpain')
                end
            end)

            RageUI.ButtonWithStyle("Sandwitch", nil, {RightLabel = "~r~6€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('bzh:achatsandwitch')
                end
            end)

            RageUI.ButtonWithStyle("Sandwitch Jambon", nil, {RightLabel = "~r~12€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('bzh:achatsandwitch1')
                end
            end)

        end, function()
        end)


        RageUI.IsVisible(RMenu:Get('Fazer', 'boisson'), true, true, true, function()

            RageUI.ButtonWithStyle("Breizh Cola", nil, {RightLabel = "~r~5€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('bzh:achatboisson')
                end
            end)

            RageUI.ButtonWithStyle("Breizh Zéro", nil, {RightLabel = "~r~5€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('bzh:achatboisson2')
                end
            end)

            RageUI.ButtonWithStyle("Eau", nil, {RightLabel = "~r~5€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('bzh:achatboisson3')
                end
            end)
                        
        end, function()
        end)


        RageUI.IsVisible(RMenu:Get('Fazer', 'accessoire'), true, true, true, function()

            RageUI.ButtonWithStyle("Chaine HIFI", nil, {RightLabel = "~r~150€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('bzh:achathifi')
                end
            end)

            RageUI.ButtonWithStyle("Jumelles", nil, {RightLabel = "~r~120€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('bzh:achatjumelles')
                end
            end)

            RageUI.ButtonWithStyle("Boitier RGB", nil, {RightLabel = "~r~200€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('bzh:achatrgb')
                end
            end)

            RageUI.ButtonWithStyle("Appats", nil, {RightLabel = "~r~20€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('bzh:achatappats')
                end
            end)

            RageUI.ButtonWithStyle("Canne à pêche", nil, {RightLabel = "~r~600€"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('bzh:achatcap')
                end
            end)
            --end, 1)

        end, function()
        end)
    
            Citizen.Wait(0)
    end
end)


------------------------------------------------------------------------------------------------------
---------------------------------------- Position du Menu --------------------------------------------
------------------------------------------------------------------------------------------------------


Config              = {}
Config.DrawDistance = 100
Config.Size         = {x = 0.3, y = 0.3, z = 0.3}
Config.Color        = {r = 0, g = 128, b = 255}
Config.Type         = 20

local position = {
        {x = -1222.68 , y = -906.78, z = 12.32 },
        {x = 2555.58 , y = 382.26, z = 108.62 },
        {x = -3243.98 , y = 1001.57, z = 12.83 }
}  

Citizen.CreateThread(function()
     for k in pairs(position) do
        local blip = AddBlipForCoord(position[k].x, position[k].y, position[k].z)
        SetBlipSprite(blip, 52)
        SetBlipColour(blip, 0)
        SetBlipScale(blip,0.8)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString("Magasin")
        EndTextCommandSetBlipName(blip)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local coords, letSleep = GetEntityCoords(PlayerPedId()), true

        for k in pairs(position) do
            if (Config.Type ~= -1 and GetDistanceBetweenCoords(coords, position[k].x, position[k].y, position[k].z, true) < Config.DrawDistance) then
                DrawMarker(Config.Type, position[k].x, position[k].y, position[k].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.Size.x, Config.Size.y, Config.Size.z, Config.Color.r, Config.Color.g, Config.Color.b, 100, false, true, 2, false, false, false, false)
                letSleep = false
            end
        end

        if letSleep then
            Citizen.Wait(500)
        end
    end
end)


Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then
                    ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour accèder à la boutique")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('Fazer', 'main'), not RageUI.Visible(RMenu:Get('Fazer', 'main')))
                    end   
                end
            end
        end
    end)