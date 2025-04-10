RegisterNetEvent("UpDev:shop:buyItem", function(item, label, count, price, paymentType, type)
    local xPlayer = ESX.GetPlayerFromId(source) 
    local moneyType = paymentType == 1 and "money" or "bank"
    local playerMoney = xPlayer.getAccount(moneyType).money
    if playerMoney >= price then
        xPlayer.removeAccountMoney(moneyType, price)
        local success, response = exports.ox_inventory:AddItem(source, item, count)
        if price == 0 then
            xPlayer.showNotification(string.format("✅ Vous avez récupérer ~y~x%s~s~ %s",count, label))
        else
            xPlayer.showNotification(string.format("✅ Vous avez acheté ~y~x%s~s~ %s pour ~y~%s$~s~",count, label, price))
        end
        if type == "ammunation" and string.find(item, "WEAPON") then
            if not success then
                return print(response)
            end
            if Config.LB_Tablet then
                if response and type(response) == "table" then
                
                    if not xPlayer or not xPlayer.identifier then
                        return print("Erreur : Impossible de récupérer l'identifier du joueur.")
                    end
                
                    for _, itemData in ipairs(response) do
                        if itemData.metadata and itemData.metadata.serial then
                            local serial = itemData.metadata.serial
                            local weaponName = itemData.name
                            local owner = xPlayer.identifier
                
                            exports["lb-tablet"]:RegisterWeapon(serial, { owner = owner, weaponName = weaponName })
                
                            print("✅ Arme enregistrée dans lb-tablet :", serial, "Propriétaire :", owner, "Nom :", weaponName)
                        else
                            print("⚠️ Aucun numéro de série trouvé pour l'item.")
                        end
                    end
                else
                    print("❌ Erreur : le format de la réponse n'est pas valide.")
                end
            end
        end
    else
        local missingMoney = price - playerMoney
        xPlayer.showNotification(string.format("❌ Vous n'avez pas assez d'argent, il vous manque ~r~%s$", missingMoney))
    end
end)

RegisterNetEvent("UpDev:shop:buyLicense", function(paymentType)
    local xPlayer = ESX.GetPlayerFromId(source) 
    local moneyType = paymentType == 1 and "money" or "bank"
    local playerMoney = xPlayer.getAccount(moneyType).money
    local price = Config.LicensePrice
    if playerMoney >= price then
        xPlayer.removeAccountMoney(moneyType, price)
        TriggerEvent("esx_license:addLicense", source, "weapon")
        xPlayer.showNotification(string.format("✅ Vous avez acheter le PPA pour ~y~%s$", price))
    else
        local missingMoney = price - playerMoney
        xPlayer.showNotification(string.format("❌ Vous n'avez pas assez d'argent, il vous manque ~r~%s$", missingMoney))
    end
end)