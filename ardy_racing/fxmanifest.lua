fx_version 'adamant'
game 'gta5'

author"Ardy"

client_scripts {
    "client/interfacing.lua",
    --"client/helperfunc.lua",
    "client/drift.lua",
    "client/honkflash.lua",
    "client/racehud.lua",
    "client/client.lua"
}

shared_scripts {
    "config.lua",
    "shared/constants.lua",
}

server_scripts {
    "server/server.lua",
    "server/interfacing.lua"
}

export 'ResetDrift'