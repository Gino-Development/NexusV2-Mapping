fx_version 'cerulean'
game 'gta5'

this_is_a_map 'yes'

lua54 'yes'

author 'Zeron Developments <contact@zeron.dev>'

data_file 'TIMECYCLEMOD_FILE' 'grimzytcmain.xml'

client_script 'car_editme.lua'

files {
    'grimzytcmain.xml',
}

escrow_ignore {
  'car_editme.lua',  -- Only ignore one file
}

dependency '/assetpacks'