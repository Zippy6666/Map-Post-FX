        -- Load the last settings for the specific map
function MPFX:Load()

    if !file.Exists("mpfx/"..game.GetMap()..".json") then return end


    -- RunConsoleCommand()


end

    -- Store the last settings in a file for the specific map
function MPFX:Store()

    MsgN("[MPFX] Saving...")

    -- Create directory if there is none
    if !file.IsDir("mpfx", "DATA") then
        file.CreateDir("mpfx")
    end

    -- Store all cvar values in a table
    local ppcvars = {}
    for _, cvarname in pairs(self.Whitelist) do
        ppcvars[cvarname] = GetConVar(cvarname):GetString()
    end

    file.Write("mpfx/"..game.GetMap()..".json", util.TableToJSON(ppcvars, true)) 

end


hook.Add("ShutDown", "SaveMPFX", function()
    MPFX:Store()
end)



hook.Add("Initialize", "LoadMPFX", function()
    MPFX:Load()
end)