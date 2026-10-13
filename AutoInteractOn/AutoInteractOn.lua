
local f = CreateFrame("Frame")

local function EnableAutoInteract()
    local current = C_CVar.GetCVar("autoInteract")

    if current ~= "1" then
        local success = C_CVar.SetCVar("autoInteract", "1")

        print("|cff00ff00[AutoInteractOn]|r Mouse move enabled:",
            tostring(success))
    else
        print("|cff00ff00[AutoInteractOn]|r Already enabled")
    end
end

f:RegisterEvent("PLAYER_LOGIN")

f:SetScript("OnEvent", function()
    C_Timer.After(3, EnableAutoInteract)
end)
