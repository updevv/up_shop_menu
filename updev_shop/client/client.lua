local shop = {}
local activeThreads = {}
local threadShouldStop = {}
local shopBlips = {}
local UpDev = {}

function UpDev.CreatePedOnPos(name, ped, x,y,z, heading, scenario, call)
    name = name or ""

    local hash = GetHashKey(ped)

    RequestModel(hash)

    while not HasModelLoaded(hash) do Wait(5) RequestModel(hash) end

    ped = CreatePed(1, ped, x, y, z, heading, false, true)

    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)

    if (scenario) then
        TaskStartScenarioInPlace(ped, scenario, 0, false)
    end

    if call then
        call(ped)
    end
end

function UpDev.DrawInstructionBarNotification(x, y, z, text)
	local px, py, pz = table.unpack(GetEntityCoords(PlayerPedId()))

	local distance = GetDistanceBetweenCoords(x, y, z, px, py, pz, false)

	if distance <= 6 then
		SetTextScale(0.35, 0.35)
		SetTextFont(4)
		SetTextProportional(1)
		SetTextColour(255, 255, 255, 215)
		SetTextEntry("STRING")
		SetTextCentre(true)
		AddTextComponentString(text)
		SetDrawOrigin(x,y,z, 0)
		DrawText(0.0, 0.0)
		local factor = (string.len(text)) / 370
		DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
		ClearDrawOrigin()
	end
end

function UpDev.InitializeShops()
    local shopBlips = {}
    local activeThreads = {}
    local threadShouldStop = {}
    
    if Config.Shops then
        for i = 1, #Config.Shops do
            local soc = Config.Shops[i]
            
            if soc.blip.active and soc.posShop then
                local blipName = "Shops"
                if soc.type == "ammunation" then
                    blipName = "Armurerie"
                end
        
                local blip = AddBlipForCoord(soc.posShop.x, soc.posShop.y, soc.posShop.z)
                SetBlipSprite(blip, soc.blip.sprite)
                SetBlipDisplay(blip, 4)
                SetBlipScale(blip, 0.5)
                SetBlipColour(blip, soc.blip.color)
                SetBlipAsShortRange(blip, true)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(blipName)
                EndTextCommandSetBlipName(blip)
        
                if not shopBlips then shopBlips = {} end
                table.insert(shopBlips, blip)
            end
        
            if soc.ped.active and soc.ped.pos then
                UpDev.CreatePedOnPos("test", soc.ped.pedName, soc.ped.pos.x, soc.ped.pos.y, soc.ped.pos.z-1, soc.ped.pos.w, "WORLD_HUMAN_GUARD_STAND")
            end
        
            local threadId = string.format("%s_%s", GetGameTimer(), soc.name)
        
            if activeThreads[threadId] then
                threadShouldStop[threadId] = true
                Wait(500)
            end
        
            threadShouldStop[threadId] = false
        
            activeThreads[threadId] = CreateThread(function()
                local myThreadId = threadId
                local currentSoc = soc
                local myPosShop = soc.posShop
                
                while not threadShouldStop[myThreadId] do
                    local playerPos = GetEntityCoords(PlayerPedId())
                    local playerInRange = false
        
                    if myPosShop then
                        local distCloak = #(playerPos - vector3(myPosShop.x, myPosShop.y, myPosShop.z))
                        if distCloak <= 10.0 then
                            playerInRange = true
                            if distCloak <= 1.5 then
                                UpDev.DrawInstructionBarNotification(myPosShop.x, myPosShop.y, myPosShop.z-0.15, 'Appuyez sur [ ~g~E~w~ ] pour intéragir')
                                if IsControlJustPressed(0, 54) then
                                    local dataShop = {
                                        name = currentSoc.name,
                                        label = currentSoc.label,
                                        type = currentSoc.type,
                                        content = currentSoc.content
                                    }
                                    UpDev.openShop(dataShop)
                                end
                            end
                            DrawMarker(25, myPosShop.x, myPosShop.y, myPosShop.z -0.98, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.55, 0.55, 0.55, 0, 0, 255, 100, false, true, 2, false, nil, nil, false)
                        end
                    end
        
                    if not playerInRange then
                        Wait(1000)
                    else
                        Wait(0)
                    end
                end
                print(string.format("Thread %s pour la shop %s s'est arrêté.", myThreadId, currentSoc.name))
            end)
        end        
    else
        print("Aucune donnée de shop dans la configuration.")
    end
end

CreateThread(function()
    Wait(1000)
    UpDev.InitializeShops()
end)

local catName = {
    ["item"] = "Objets",
    ["food"] = "Nouritures",
    ["ammo"] = "Munitions",
    ["edgeweapon"] = "Armes blanches",
    ["firearm"] = "Armes à feu"
}
local subCategorie = {}
local openmenu = false

local Quantity, activeCode = { Index = 1 }, false

Superette = {
    IndexPayment = 1,
}

function UpDev.openShop(content)
    print(json.encode(content))
    local menuPrincipal = RageUI.CreateMenu(nil, "Actions Disponibles")
    local selectedCategorieMenu = RageUI.CreateSubMenu(menuPrincipal, nil, "Actions Disponibles")
    local buySelectedItem = RageUI.CreateSubMenu(selectedCategorieMenu, nil, "Actions Disponibles")
    local buyLicense = RageUI.CreateSubMenu(menuPrincipal, nil, "Actions Disponibles")

    menuPrincipal.Closed = function()
        openmenu = false
    end

    if not openmenu then
        openmenu = true
        RageUI.Visible(menuPrincipal, true)

        local texture = "header_updev"
        if content.type == "ammunation" then
            texture = "header_ammu"
            HasWeaponLicense()
        elseif content.type == "247" then
            texture = "shopui_title_24-7"
        elseif content.type == "ltd" then
            texture = "header_gasstation"
        elseif content.type == "robs" then
            texture = "header_updev"
        end

        menuPrincipal:SetSpriteBanner("updev", texture)
        selectedCategorieMenu:SetSpriteBanner("updev", texture)
        buySelectedItem:SetSpriteBanner("updev", texture)
        buyLicense:SetSpriteBanner("updev", texture)

        CreateThread(function()
            while openmenu do
                RageUI.IsVisible(menuPrincipal, function()
                    RageUI.Separator("Categories")
                    RageUI.Line()

                    local categoriesToDisplay = {}
                    local displayedCategories = {}

                    if content.content and type(content.content) == "table" and #content.content > 0 then
                        for _, item in ipairs(content.content) do
                            if item.categorie and not displayedCategories[item.categorie] then
                                table.insert(categoriesToDisplay, item.categorie)
                                displayedCategories[item.categorie] = true
                            end
                        end
                    end

                    local activeButton = false
                    if content.type == "ltd" or content.type == "robs" or content.type == "247" then
                        activeButton = true
                    elseif content.type == "ammunation" and hasWeaponLicense ~= nil then
                        RageUI.Button("Acheter le PPA", nil, {RightLabel = "→"}, hasWeaponLicense, {}, buyLicense)
                        activeButton = not hasWeaponLicense
                    end

                    if #categoriesToDisplay == 0 then
                        RageUI.Separator()
                        RageUI.Separator("~r~Aucune catégorie disponible...")
                        RageUI.Separator()
                    else
                        for _, categorie  in ipairs(categoriesToDisplay) do
                            RageUI.Button(catName[categorie] or categorie, nil, {RightLabel = "→"}, activeButton, {
                                onSelected = function()
                                    subCategorie = { selectedCategorie = categorie }
                                end
                            }, selectedCategorieMenu)
                        end
                    end
                    
                end)

                RageUI.IsVisible(selectedCategorieMenu, function()
                    local items = content.content
                    if subCategorie and subCategorie.selectedCategorie then
                        RageUI.Separator(catName[subCategorie.selectedCategorie] or subCategorie.selectedCategorie)
                        RageUI.Line()

                        for _, v in ipairs(items) do
                            if v.categorie == subCategorie.selectedCategorie then
                                RageUI.Button(v.label, nil, {RightLabel = "$" .. v.price}, true, {
                                    onSelected = function()
                                        Price = v.price
                                        cType = content.type
                                        dataItem = {
                                            name = v.name,
                                            label = v.label,
                                            price = v.price,
                                            categorie = v.categorie,
                                            ppa = v.ppa
                                        }
                                    end
                                }, buySelectedItem)
                            end
                        end
                    end
                end)

                RageUI.IsVisible(buySelectedItem, function()
                    local quantities = {}
                    for i = 1, 50 do
                        table.insert(quantities, tostring(i))
                    end

                    RageUI.List("Quantité :", quantities, Quantity.Index or 1, nil, {}, true, {
                        onListChange = function(Index)
                            Quantity.Index = Index
                            Price = dataItem.price * Index
                        end
                    })
                    
                    if Quantity.Index and Quantity.Index > 0 then 
                        RageUI.Separator(string.format("Prix total :~g~ %s~c~$", Price))
                    end
                    
                    RageUI.Separator("← ~y~Moyens de paiement~s~ →")

                    if not Superette.IndexPayment then Superette.IndexPayment = 1 end

                    RageUI.List("Moyen de paiement :", {"~g~Liquide~s~", "~b~Banque~s~"}, Superette.IndexPayment, false, {}, true, {
                        onListChange = function(Index)
                            Superette.IndexPayment = Index
                        end
                    })

                    RageUI.Button("Paiement", nil, {RightLabel = "→"} ,true, {
                        onSelected = function()
                            TriggerServerEvent("UpDev:shop:buyItem", dataItem.name, dataItem.label, Quantity.Index, Quantity.Index * dataItem.price, Superette.IndexPayment, cType)
                        end
                    })
                end)

                RageUI.IsVisible(buyLicense, function()
                    RageUI.Separator(string.format("Prix total : ~g~%s~c~$", Config.LicensePrice))
                    RageUI.Separator("← ~y~Moyens de paiement~s~ →")

                    if not Superette.IndexPayment then Superette.IndexPayment = 1 end

                    RageUI.List("Moyen de paiement :", {"~g~Liquide~s~", "~b~Banque~s~"}, Superette.IndexPayment, false, {}, true, {
                        onListChange = function(Index)
                            Superette.IndexPayment = Index
                        end
                    })

                    RageUI.Button("Paiement", nil, {RightLabel = "→"}, true, {
                        onSelected = function()
                            local price = Config.LicensePrice
                            local moneyType = Superette.IndexPayment == 1 and "money" or "bank"
                            local playerData = ESX.GetPlayerData()
                            local SelectedMoney = { ["money"] = 0, ["bank"] = 0 }

                            if playerData.accounts then
                                local accounts = playerData.accounts
                                for i = 1, #accounts do
                                    local account = accounts[i]
                                    if account.name == "money" then
                                        SelectedMoney["money"] = account.money
                                    elseif account.name == "bank" then
                                        SelectedMoney["bank"] = account.money
                                    end
                                end
                            end

                            if SelectedMoney[moneyType] and SelectedMoney[moneyType] >= price then
                                TriggerServerEvent("UpDev:shop:buyLicense", moneyType)
                                HasWeaponLicense()
                                RageUI.GoBack()
                            else
                                local missingMoney = price - (SelectedMoney[moneyType] or 0)
                                ESX.ShowNotification(string.format("❌ Vous n'avez pas assez d'argent, il vous manque ~g~%s$", missingMoney))
                            end
                        end
                    })
                end)

                Wait(0)
            end
        end)
    end
end

function HasWeaponLicense()
    ESX.TriggerServerCallback('esx_license:checkLicense', function(hasLicense)
        if hasLicense then
            hasWeaponLicense = false
        else
            hasWeaponLicense = true
        end
    end, GetPlayerServerId(PlayerId()), "weapon")
end