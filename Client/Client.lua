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

local hasBeenDamaged = false
local checkerPed = nil

AddEventHandler("gameEventTriggered", function(name, data)
	if name == "CEventNetworkEntityDamage" then
		local victim = data[1]
		local attacker = data[2]
		
		if checkerPed ~= nil then
			if victim == PlayerPedId() then
				if attacker == checkerPed then
					hasBeenDamaged = true
				end
			end
		end
	end
end)

CreateThread(function()
	while true do
		Wait(Lyxos.CheckingTimer)

		hasBeenDamaged = false
	
		local plyPed = PlayerPedId()
		local plyCoords = GetEntityCoords(plyPed)
		local pedCoords = vector3(plyCoords.x, plyCoords.y, plyCoords.z + 1)
		local pedHash = GetHashKey("mp_m_freemode_01")
	
		if not HasModelLoaded(pedHash) then
			RequestModel(pedHash)
		end
	
		while (not HasModelLoaded(pedHash)) do
			Wait(1)
		end
	
		checkerPed = CreatePed(4, pedHash, pedCoords.x + 2, pedCoords.y, pedCoords.z, 0.0, true, true)
	
		SetEntityAlpha(checkerPed, 0)
		FreezeEntityPosition(checkerPed, true)
		StopPedSpeaking(checkerPed, true)
		DisablePedPainAudio(checkerPed, true)
		
		SetAiWeaponDamageModifier(0.0000000000000000000000000000001)
		SetAiMeleeWeaponDamageModifier(0.0000000000000000000000000000001)
		
		SetPedStealthMovement(checkerPed, true)
		
		HidePedBloodDamageByZone(plyPed, true)
		
		local weapon = GetHashKey("WEAPON_PISTOL")
	
		local shoot = ShootSingleBulletBetweenCoords(
			pedCoords.x, -- Start X
			pedCoords.y, -- Start Y
			pedCoords.z - 1, -- Start Z
			pedCoords.x, -- End X
			pedCoords.y, -- End Y
			pedCoords.z + 1.5, -- End Z
			0.00000000000000000000000000000001, -- Damage
			100, -- Accuracy
			weapon, -- Weapon
			checkerPed, -- Ped Owner
			true, -- Audible
			false, -- Invisible
			1 -- Speed
		)
	
		Wait(500)
		
		if not hasBeenDamaged then
			Lyxos.Punishment()
		end
			
		DeleteEntity(checkerPed)
		
		ResetAiWeaponDamageModifier()
		ResetAiMeleeWeaponDamageModifier()	
	end
end)