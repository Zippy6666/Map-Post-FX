MPFX = MPFX or {}

if SERVER then
    AddCSLuaFile("mpfx/cl_hooks.lua")
    AddCSLuaFile("mpfx/cl_whitelist.lua")
end

if CLIENT then
    include("mpfx/cl_hooks.lua")
    include("mpfx/cl_whitelist.lua")
end