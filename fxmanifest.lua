fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 'Trace'
description ''
lua54 'yes'

client_scripts {
    'client/*.lua',
}

server_scripts {
    --'@oxmysql/lib/MySQL.lua',
    'server/*.lua',
}

shared_scripts {
    'config.lua'
}