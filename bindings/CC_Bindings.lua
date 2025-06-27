--[[
    New test bindings for the AddOn. Made by Molusco_Aquatico
]]

local function OpenCompanionMenu()
    if IsInDialogue() then EndInteraction() end
    if GetActiveCompanionDefId() == 0 then return end

    EVENT_MANAGER:FireEvent(EVENT_OPEN_COMPANION_MENU)

end

local function OpenCompanionEquipment()
    if IsInDialogue() then EndInteraction() end
    if GetActiveCompanionDefId() == 0 then return end

    SCENE_MANAGER:Show("companionMenu")

    zo_callLater(function()
        if COMPANION_KEYBOARD and COMPANION_KEYBOARD.tabs then
            COMPANION_KEYBOARD.tabs:SelectTab("companionCharacterKeyboard")
        end
    end, 100)
end

local function OpenCompanionSkills()
    if IsInDialogue() then EndInteraction() end
    if GetActiveCompanionDefId() == 0 then return end

    EVENT_MANAGER:FireEvent(EVENT_OPEN_COMPANION_MENU)

    zo_callLater(function()
        if COMPANION_KEYBOARD and COMPANION_KEYBOARD.tabs then
            COMPANION_KEYBOARD.tabs:SelectTab("companionSkillsKeyboard")
        end
    end, 100)
end

local function OpenCompanionCollections()
    if IsInDialogue() then EndInteraction() end
    if GetActiveCompanionDefId() == 0 then return end

    EVENT_MANAGER:FireEvent(EVENT_OPEN_COMPANION_MENU)

    zo_callLater(function()
        if COMPANION_KEYBOARD and COMPANION_KEYBOARD.tabs then
            COMPANION_KEYBOARD.tabs:SelectTab("companionCollectionBookKeyboard")
        end
    end, 100)
end

local function OpenCompanionRapportGood()
    if IsInDialogue() then EndInteraction() end
    if GetActiveCompanionDefId() == 0 then return end

    EVENT_MANAGER:FireEvent(EVENT_OPEN_COMPANION_MENU)

    zo_callLater(function()
        if COMPANION_KEYBOARD and COMPANION_KEYBOARD.tabs then
            COMPANION_KEYBOARD.tabs:SelectTab("companionRapportKeyboard")
        end

        zo_callLater(function()
            if COMPANION_RAPPORT_KEYBOARD then
                COMPANION_RAPPORT_KEYBOARD.rapportSelectedStatus = RAPPORT_STATS.GOOD
                COMPANION_RAPPORT_KEYBOARD:BuildRapportList()
            end
        end, 100)
    end, 100)
end

local function OpenCompanionRapportBad()
    if IsInDialogue() then EndInteraction() end
    if GetActiveCompanionDefId() == 0 then return end

    EVENT_MANAGER:FireEvent(EVENT_OPEN_COMPANION_MENU)

    zo_callLater(function()
        if COMPANION_KEYBOARD and COMPANION_KEYBOARD.tabs then
            COMPANION_KEYBOARD.tabs:SelectTab("companionRapportKeyboard")
        end

        zo_callLater(function()
            if COMPANION_RAPPORT_KEYBOARD then
                COMPANION_RAPPORT_KEYBOARD.rapportSelectedStatus = RAPPORT_STATS.BAD
                COMPANION_RAPPORT_KEYBOARD:BuildRapportList()
            end
        end, 100)
    end, 100)
end

ZO_CreateStringId("SI_BINDING_NAME_CC_OPEN_COMPANION_MENU", "Open Companion Menu")
ZO_CreateStringId("SI_BINDING_NAME_CC_OPEN_COMPANION_EQUIPMENT", "Open Companion Equipment Tab")
ZO_CreateStringId("SI_BINDING_NAME_CC_OPEN_COMPANION_SKILLS", "Open Companion Skills Tab")
ZO_CreateStringId("SI_BINDING_NAME_CC_OPEN_COMPANION_COLLECTIONS", "Open Companion Collections Tab")
ZO_CreateStringId("SI_BINDING_NAME_CC_OPEN_COMPANION_RAPPORT_GOOD", "Open Companion Good Rapport Tab")
ZO_CreateStringId("SI_BINDING_NAME_CC_OPEN_COMPANION_RAPPORT_BAD", "Open Companion Bad Rapport Tab")

------------------------
-- Global XML Functions
------------------------

function CC_OPEN_COMPANION_MENU()
    OpenCompanionMenu()
end

function CC_OPEN_COMPANION_EQUIPMENT()
    OpenCompanionEquipment()
end

function CC_OPEN_COMPANION_SKILLS()
    OpenCompanionSkills()
end

function CC_OPEN_COMPANION_COLLECTIONS()
    OpenCompanionCollections()
end

function CC_OPEN_COMPANION_RAPPORT_GOOD()
    OpenCompanionRapportGood()
end

function CC_OPEN_COMPANION_RAPPORT_BAD()
    OpenCompanionRapportBad()
end