Lyxos = {}
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

Lyxos.CheckingTimer = 12000

-- CLIENT SIDED:
Lyxos.Punishment = function()
	print("Eulen GodMode v2 Detected | Simple Detection made by zImSkillz")

	TriggerServerEvent("Lyxos:AntiGodModeV2:POC")
end