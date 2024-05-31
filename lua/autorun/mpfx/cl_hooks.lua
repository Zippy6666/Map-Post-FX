    -- Store last settings in a file for the specific map
hook.Add("ShutDown", "SaveMPFX", function()
    MsgN("Saving MPFX...")

    -- Create directory if there is none
    if !file.IsDir("mpfx", "DATA") then
        file.CreateDir("mpfx")
    end


end)