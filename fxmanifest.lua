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

fx_version 'cerulean'
games { 'gta5' }

author 'zImSkillz'

shared_script 'Config/*.lua'

client_scripts {
	'Client/Client.lua',
}

server_scripts {
	'Server/Server.lua'
}

lua54 'yes'