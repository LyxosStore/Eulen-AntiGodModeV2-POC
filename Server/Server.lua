--[[
				██╗  ██╗   ██╗██╗  ██╗ ██████╗ ███████╗
				██║  ╚██╗ ██╔╝╚██╗██╔╝██╔═══██╗██╔════╝
				██║   ╚████╔╝  ╚███╔╝ ██║   ██║███████╗
				██║    ╚██╔╝   ██╔██╗ ██║   ██║╚════██║
				███████╗██║   ██╔╝ ██╗╚██████╔╝███████║
				╚══════╝╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚══════╝
					Developer: zImSkillz#5637
						> Let's detect Eulen's GodMode v2
]]--

RegisterServerEvent("Lyxos:AntiGodModeV2:POC")
AddEventHandler("Lyxos:AntiGodModeV2:POC", function()
    local source = source

    DropPlayer(source, "Eulen GodMode v2 Detected")
end)