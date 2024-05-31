    -- Store the last settings in a file for the specific map
hook.Add("ShutDown", "SaveMPFX", function()

    MsgN("Saving MPFX...")

    -- Create directory if there is none
    if !file.IsDir("mpfx", "DATA") then
        file.CreateDir("mpfx")
    end

    file.Write("mpfx/"..game.GetMap()..".json", util.TableToJSON({})) 

end)


    -- Load the last settings for the specific map
hook.Add("Initialize", "LoadMPFX", function()



end)