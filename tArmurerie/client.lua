ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)
RegisterNetEvent('esx_clip:clipcli')
AddEventHandler('esx_clip:clipcli', function()
  ped = PlayerPedId()
  if IsPedArmed(ped, 4) then
    hash=GetSelectedPedWeapon(ped)
    if hash~=nil then
      TriggerServerEvent('esx_clip:remove')
      AddAmmoToPed(PlayerPedId(), hash,25)
      ESX.ShowNotification("~c~Tu vien d'utiliser~s~\n~b~un chargeur") 
      MakePedReload(ped)
    else
      ESX.ShowNotification("tu n'as pas d'arme en main")
    end
  else
    ESX.ShowNotification("ce type de munition ne convient pas")
  end
end)

-- Le system pour recharger l'arme est fourni avec le scripts biensur, il n'y à juste qu'a mettre le name:clip et label: Chargeur dans votre sql en item, si vous n'avez pas l'items copier l'eau ou le pain et remplacer le name et le labe ;)

RMenu.Add(':TomN | C-host.fr:', 'main', RageUI.CreateMenu("Armurerie", "Catalogue Armes | Accesoires"))
RMenu.Add(':TomN | C-host.fr:', 'armes', RageUI.CreateSubMenu(RMenu:Get(':TomN | C-host.fr:', 'main'), "Armes", "Catalogue des Armes"))
RMenu.Add(':TomN | C-host.fr:', 'accessoires', RageUI.CreateSubMenu(RMenu:Get(':TomN | C-host.fr:', 'main'), "Accessoires ", "Catalogue des Accessoires "))


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get(':TomN | C-host.fr:', 'main'), true, true, true, function()

            RageUI.Button("Armes", "Choisi ton arme", {RightLabel = "→→→"},true, function()
            end, RMenu:Get(':TomN | C-host.fr:', 'armes'))

            RageUI.Button("Accessoires", "Choisi tes accessoires", {RightLabel = "→→→"},true, function()
            end, RMenu:Get(':TomN | C-host.fr:', 'accessoires'))
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get(':TomN | C-host.fr:', 'armes'), true, true, true, function()

            RageUI.Button("Pistolet SNS", "Arme Niveau 1", {RightLabel = "~g~1200$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent(':TomN | C-host.fr::sns')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end

                
            end)

           RageUI.Button("Pistolet", "Arme Niveau 2", {RightLabel = "~g~2000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent(':TomN | C-host.fr::pistolet')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end

                
            end)

         RageUI.Button("Pistolet Vintage", "Arme Niveau 3", {RightLabel = "~g~2450$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent(':TomN | C-host.fr::vintage')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end

                
            end)

          RageUI.Button("Pistolet Calibre 50", "Arme Niveau 4", {RightLabel = "~g~2900$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent(':TomN | C-host.fr::calibre50')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end
            end)
        end, function()
               end)

                


            RageUI.IsVisible(RMenu:Get(':TomN | C-host.fr:', 'accessoires'), true, true, true, function()

                RageUI.Button("Chargeur", "5 Chargeurs simples", {RightLabel = "~g~150$"}, true, function(Hovered, Active, Selected)

                      if (Selected) then
                        TriggerServerEvent(':TomN | C-host.fr::clip123')
                        local playerPed = GetPlayerPed(-1)
                        RequestAnimDict('weapons@pistol@')
                           while not HasAnimDictLoaded('weapons@pistol@') do
                              Citizen.Wait(0)
                            end
                         TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                         Citizen.Wait(300)
                         holstered = true
                    end
                 end)
                    end, function()
             
                    end, 1)
            
                    Citizen.Wait(0)
                end
            end)



local position = {
        {x = 22.16 , y = -1106.77, z = 29.49, }
    }    
    
    
    Citizen.CreateThread(function()
        while true do
           local sleep = 500
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then
                  sleep = 0
                    ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour parler avec le ~b~Vendeur")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get(':TomN | C-host.fr:', 'main'), not RageUI.Visible(RMenu:Get(':TomN | C-host.fr:', 'main')))
                    end
                end
            end
            Citizen.Wait(sleep)
        end
    end)

    local coord = {
        {22.70, -1105.27, 28.79,"Drogendealer",150.8,1657546978,"s_m_y_armymech_01"}
    }
    
    Citizen.CreateThread(function()
    
        for _,v in pairs(coord) do
          RequestModel(GetHashKey(v[7]))
          while not HasModelLoaded(GetHashKey(v[7])) do
            Wait(1)
          end
      
          RequestAnimDict("mini@strip_club@idles@bouncer@base")
          while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
            Wait(1)
          end
          ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
          SetEntityHeading(ped, v[5])
          FreezeEntityPosition(ped, true)
          SetEntityInvincible(ped, true)
          SetBlockingOfNonTemporaryEvents(ped, true)
          TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
        end
    end)

    local blips = {
      {title="Armurerie", colour=1, id=110, x = 22.09, y = -1107.28, z = 28.80, taille=0.8}
  }
  
  Citizen.CreateThread(function()
  
  for _, info in pairs(blips) do
    info.blip = AddBlipForCoord(info.x, info.y, info.z)
    SetBlipSprite(info.blip, info.id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, info.taille)
    SetBlipColour(info.blip, info.colour)
    SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(info.title)
    EndTextCommandSetBlipName(info.blip)
  end
  end)

  